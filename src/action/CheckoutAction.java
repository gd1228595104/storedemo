package action;

import bean.Goods;
import com.opensymphony.xwork2.ActionSupport;
import model.CheckOut;
import org.apache.struts2.ServletActionContext;
import service.GoodsService;

import java.util.ArrayList;
import java.util.List;

public class CheckoutAction extends ActionSupport {
    private GoodsService goodsService;
    private CheckOut checkOut;
    private String name;
    private String checkname;

    public String getCheckname() {
        return checkname;
    }

    public void setCheckname(String checkname) {
        this.checkname = checkname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public CheckOut getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(CheckOut checkOut) {
        this.checkOut = checkOut;
    }

    public GoodsService getGoodsService() {
        return goodsService;
    }

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Override
    public String execute() throws Exception {
        List<Goods> list = (List<Goods>) ServletActionContext.getRequest().getSession().getAttribute("check_goods");
        List<Goods> list2 = goodsService.CheckoutGoods(name);
        Goods goods = list2.get(0);
        if(list2 != null){
            if(list != null){
                if(checkOut.Check(goods,list)){
                    list.add(goods);
                    ServletActionContext.getRequest().getSession().setAttribute("check_goods",list);
                }
            }else{
                list = new ArrayList<>();
                list.add(goods);
                ServletActionContext.getRequest().getSession().setAttribute("check_goods",list);
            }
        }
        return SUCCESS;
    }
    public String check() throws Exception{
        List<Goods> list = (List<Goods>) ServletActionContext.getRequest().getSession().getAttribute("check_goods");
        for(int i = 0;i<list.size();i++){
            if(new String(checkname.getBytes("ISO-8859-1"),"UTF-8").equals(list.get(i).getGoods_name())){
                list.remove(i);
            }
        }
        ServletActionContext.getRequest().getSession().setAttribute("check_goods",list);
        return SUCCESS;
    }

}
