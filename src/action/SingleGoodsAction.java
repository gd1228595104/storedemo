package action;

import bean.Goods;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.GoodsService;

import java.util.List;

public class SingleGoodsAction extends ActionSupport {
    private String goodsname;
    private GoodsService goodsService;

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    @Override
    public String execute() throws Exception {
//        System.out.println("--->"+new String(goodsname.getBytes("ISO-8859-1"),"UTF-8")+":"+goodsService);
        List<Goods> list = goodsService.SingleGoods(goodsname);
        Goods goods = list.get(0);
        ServletActionContext.getRequest().setAttribute("goodsinfo",goods);
        return SUCCESS;
    }
}
