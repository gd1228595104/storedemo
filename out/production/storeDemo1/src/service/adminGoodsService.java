package service;

import bean.Customer;
import bean.Goods;
import bean.Order_Details;
import bean.Order_Info;
import daoImpl.AllGoodsKind;
import daoImpl.CustomerInfo_cu;
import daoImpl.admingoods_cu;
import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;
import util.Emailutil;
import util.GetDate;
import util.PaymentUtil;
import util.ShortMessage;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

@Transactional
public class adminGoodsService {
    private AllGoodsKind allGoodsKind;
    private admingoods_cu adminCu;
    private CustomerInfo_cu customerInfo_cu;

    public CustomerInfo_cu getCustomerInfo_cu() {
        return customerInfo_cu;
    }

    public void setCustomerInfo_cu(CustomerInfo_cu customerInfo_cu) {
        this.customerInfo_cu = customerInfo_cu;
    }

    public void setAdminCu(admingoods_cu adminCu) {
        this.adminCu = adminCu;
    }

    public void setAllGoodsKind(AllGoodsKind allGoodsKind) {
        this.allGoodsKind = allGoodsKind;
    }
    public List AllGoodsKind(){
        return allGoodsKind.AllGoodsKind();
    }
    public List GetGoods(int kind_id){
        return allGoodsKind.GetGoods(kind_id);
    }
    public boolean CreateGoods(Goods goods){
        return adminCu.CreateGoods(goods);
    }
    public boolean CheckGoodsid(int goodsid){
        return adminCu.InsearchGoodsid(goodsid);
    }
    public boolean DeleteGoods(int goodsid){
        return adminCu.DeleteGoods(goodsid);
    }
    public boolean DeleteManyGoods(String goodsid){
        String[] info = goodsid.split(",");
        int[] goodsid_info = new int[info.length];
        for(int i = 0; i<info.length;i++){
            goodsid_info[i] = Integer.parseInt(info[i]);
        }
        return adminCu.DeleteManyGoods(goodsid_info);
    }
    public Goods SelectGoods(int goodsid){
        return adminCu.SelectGoods(goodsid);
    }
    public void UpdateGoods(Goods goods){
         adminCu.UpdateGoods(goods);
    }
    //生成订单
    public void CreateOrederInfo(String num, List<Goods> list, Map<String,String> map) throws Exception{
        GetDate getDate = new GetDate();
        String time = getDate.getNowTime(); //获取现在时间
        String date = String.valueOf(getDate.getMyDate()); //获取时间戳
        String order_number = date+map.get("phone"); //订单号
        ServletActionContext.getRequest().getSession().setAttribute("oid",order_number);
        /*
            计算总价格
         */
        String[] num1 = num.split(",");
        float total_price = 0;
        for(int i = 0; i<list.size();i++){
          total_price += list.get(i).getPrice()*Integer.parseInt(num1[i].trim());
        }
        ServletActionContext.getRequest().getSession().setAttribute("allMoney",total_price);
        Order_Info order_info = new Order_Info();//实例化订单bean类存储订单数据
        order_info.setOrder_number(order_number);
        order_info.setAddress(map.get("address"));
        order_info.setAffiliated_customers(map.get("name"));
        order_info.setPhone(map.get("phone"));
        order_info.setTotal_price(total_price);
        order_info.setOrder_time(time);
        order_info.setStatus(0);

        List<Order_Details> list1 = new ArrayList<>();
        Order_Details order_details = null;
        for(int j = 0; j<list.size(); j++){
            order_details = new Order_Details();
            order_details.setGoods(list.get(j).getGoods_name());
            order_details.setNumber(Integer.parseInt(num1[j]));
            order_details.setOrder_number(order_number);
            order_details.setPrice(list.get(j).getPrice());
            order_details.setTotal_number(list.get(j).getPrice()*Integer.parseInt(num1[j].trim()));
            list1.add(order_details);
        }
        ServletActionContext.getRequest().getSession().setAttribute("orderdetails",list1);
        adminCu.CreateOrderInfo(order_info,list1);
        //SendEmail(map.get("phone"),order_number,list1);
    }
    public void SendEmail(){
        ServletRequest request = ServletActionContext.getRequest();
        String phone = (String) ((HttpServletRequest) request).getSession().getAttribute("phone");
        String ordernumber = (String) ((HttpServletRequest) request).getSession().getAttribute("oid");
        List<Order_Details> list = (List<Order_Details>) ((HttpServletRequest) request).getSession().getAttribute("orderdetails");
        Customer customer = customerInfo_cu.SelectCustomer(phone);
        Emailutil emailutil = new Emailutil();
        String message = "尊敬的\t"+customer.getName()+"\t您好：<br>"
                +"感谢您在小米商城购物！<br>"+"您的订单号【"+ordernumber+"】正在处理。"+"<br>"
                +"订单详情:<br>";      //编辑邮件信息
        String message2 = "【小米商城】\n"+"感谢您的购物！\n"+"订单号：\n"+ordernumber+"订单详情：+\n"; //编辑短信信息
        for(int i = 0; i<list.size();i++){
            message += list.get(i).getGoods()+"\t"+list.get(i).getPrice()+"元\tx"+list.get(i).getNumber()+"<br>";
            message2 += list.get(i).getGoods()+"\t"+list.get(i).getPrice()+"元\tx"+list.get(i).getNumber()+"\n";
        }
        emailutil.setFrom("dawnwoo123@163.com");         //邮件发送人邮箱
        emailutil.setTo(customer.getEmail());             //收件人邮箱
        emailutil.setType("smtp.163.com");              //平台类型
        emailutil.setUsername("dawnwoo123");
        emailutil.setPassword("dawnwoo123");
        emailutil.setSubject("小米商城");                 //邮件主题
        emailutil.setInfo(message);
        emailutil.send();                 //邮件发送
//        sendMessage(phone,message2);    //短信发送
    }
    /*
        短信发送
     */
    public void sendMessage(String phone,String message){
        ShortMessage shortMessage = new ShortMessage();
        shortMessage.setTophone(phone);
        shortMessage.setMessage(message);
        shortMessage.sendMessage();
    }
    /*
        支付
     */
    public void Pay(String ordernumber,String band) throws IOException {
//        String ordernumber = (String) ServletActionContext.getRequest().getSession().getAttribute("payorderid");
        Properties prop = new Properties();
        prop.load(this.getClass().getClassLoader().getResourceAsStream("merchantInfo.properties"));
        String p0_Cmd = "Buy";  //业务类型，固定为Buy
        String p1_MerId = prop.getProperty("p1_MerId");   //商品编码，在易宝的唯一标识
        String p2_Order = ordernumber;    //订单编码
        String p3_Amt = "0.01";     //订单金额
        String p4_Cur = "CNY";     //交易币种，固定值CNY
        String p5_Pid = "";        //商品名称
        String p6_Pcat = "";       //商品种类
        String p7_Pdesc = "";    //商品描述
        String p8_Url = "http://localhost:8080/PayAction_2.action";   //支付成功后将访问的地址
        String p9_SAF = "";       //送货地址
        String pa_MP = "";       //拓展信息
        String pd_FrpId = band;    //支付通道
        String pr_NeedResponse = "1";   //应答机制，固定值1
        //加密算法
        String keyValue = prop.getProperty("keyValue");
        String hmac = PaymentUtil.buildHmac(p0_Cmd,p1_MerId,
                p2_Order, p3_Amt, p4_Cur,p5_Pid, p6_Pcat,
                p7_Pdesc,p8_Url, p9_SAF,pa_MP,pd_FrpId,
                pr_NeedResponse,keyValue);
        /*
            重定向到易宝的支付网关
         */
        StringBuilder sb = new StringBuilder("https://www.yeepay.com/app-merchant-proxy/node");
        sb.append("?").append("p0_Cmd=").append(p0_Cmd);
        sb.append("&").append("p1_MerId=").append(p1_MerId);
        sb.append("&").append("p2_Order=").append(p2_Order);
        sb.append("&").append("p3_Amt=").append(p3_Amt);
        sb.append("&").append("p4_Cur=").append(p4_Cur);
        sb.append("&").append("p5_Pid=").append(p5_Pid);
        sb.append("&").append("p6_Pcat=").append(p6_Pcat);
        sb.append("&").append("p7_Pdesc=").append(p7_Pdesc);
        sb.append("&").append("p8_Url=").append(p8_Url);
        sb.append("&").append("p9_SAF=").append(p9_SAF);
        sb.append("&").append("pa_MP=").append(pa_MP);
        sb.append("&").append("pd_FrpId=").append(pd_FrpId);
        sb.append("&").append("pr_NeedResponse=").append(pr_NeedResponse);
        sb.append("&").append("hmac=").append(hmac);
        ServletActionContext.getResponse().sendRedirect(sb.toString());
    }
    public void PayAfter() throws IOException {
        HttpServletRequest request = ServletActionContext.getRequest();
        String p1_MerId = request.getParameter("p1_MerId");
        String r0_Cmd = request.getParameter("r0_Cmd");
        String r1_Code = request.getParameter("r1_Code");
        String r2_TrxId = request.getParameter("r2_TrxId");
        String r3_Amt = request.getParameter("r3_Amt");
        String r4_Cur = request.getParameter("r4_Cur");
        String r5_Pid = request.getParameter("r5_Pid");
        String r6_Order = request.getParameter("r6_Order");
        String r7_Uid = request.getParameter("r7_Uid");
        String r8_MP = request.getParameter("r8_MP");
        String r9_BType = request.getParameter("r9_BType");
        String hmac = request.getParameter("hmac");
        Properties prop = new Properties();
        prop.load(this.getClass().getClassLoader().getResourceAsStream("merchantInfo.properties"));
        String keyValue = prop.getProperty("keyValue");
        boolean bool = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP, r9_BType, keyValue);
        if(!bool){
            request.setAttribute("code","faile");
            request.setAttribute("msg","支付失败");
        }
        if(r1_Code.equals("1")){
            if(r9_BType.equals("1")){
                request.setAttribute("code","success");
                request.setAttribute("msg","支付成功");
            }else if(r9_BType.equals("2")){
                ServletActionContext.getResponse().getWriter().print("success");
            }
            SendEmail();
        }
    }
}
