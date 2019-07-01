package action;

import bean.Goods;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.adminGoodsService;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PayAction extends ActionSupport {
    private adminGoodsService admingoodsService;
    private String pd_FrpId;
    private String num;

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getPd_FrpId() {
        return pd_FrpId;
    }

    public void setPd_FrpId(String pd_FrpId) {
        this.pd_FrpId = pd_FrpId;
    }

    public void setAdmingoodsService(adminGoodsService admingoodsService) {
        this.admingoodsService = admingoodsService;
    }

    @Override
    public String execute() throws Exception {
//            String num = (String) ServletActionContext.getRequest().getSession().getAttribute("shuliang");
            String username = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
            String phone =  (String) ServletActionContext.getRequest().getSession().getAttribute("phone");
        if(username != null && !"".equals(username) && phone != null && !"".equals(phone)) {
            List<Goods> list = (List<Goods>) ServletActionContext.getRequest().getSession().getAttribute("check_goods");
            Map<String, String> map = new HashMap<String, String>();
            map.put("name", (String) ServletActionContext.getRequest().getSession().getAttribute("name"));
            map.put("phone", (String) ServletActionContext.getRequest().getSession().getAttribute("phone"));
            map.put("address", (String) ServletActionContext.getRequest().getSession().getAttribute("address"));
            admingoodsService.CreateOrederInfo(num, list, map);
            return SUCCESS;
        }else{
            ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
            PrintWriter out = ServletActionContext.getResponse().getWriter();
//            String info = new String("您没有登录，请先登录...".getBytes(),"UTF-8");
            String info = "you have no login,please login...";
            out.print("<script>alert('"+info+"');</script>");
            out.flush();
            return ERROR;
        }
    }
}
