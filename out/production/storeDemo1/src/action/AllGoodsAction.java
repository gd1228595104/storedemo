package action;

import bean.Goods;
import bean.Goods_Kind;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.GoodsService;
import service.adminGoodsService;

import java.util.ArrayList;
import java.util.List;

public class AllGoodsAction extends ActionSupport {
    private GoodsService goodsService;
    private adminGoodsService admingoodsService;

    public void setAdmingoodsService(adminGoodsService admingoodsService) {
        this.admingoodsService = admingoodsService;
    }
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    public String execute(){
        Goods_Kind goods_kind = null;
        List<Goods> list = null;
        goods_kind = new Goods_Kind();
        String[] a = {"小米手机","红米手机","手环手表","笔记本","电视","路由器"};
        for(int i = 0; i<a.length; i++) {
            goods_kind.setGoods_kind(a[i]);
            list = new ArrayList();
            list = goodsService.SelectGoods(goods_kind);
//        ServletActionContext.getRequest().setAttribute("小米手机",list);
            ServletActionContext.getRequest().getSession().setAttribute(a[i], list);
        }
        List<Goods> list2 = goodsService.SelectAllGoods();
        int i = list2.size()/9;
        if(list2.size()%9>0){
            i+=1;
        }
        ServletActionContext.getRequest().getSession().setAttribute("LISTSIZE",i);
        ServletActionContext.getRequest().getSession().setAttribute("allGoods",list2);
        return SUCCESS;
    }
    public String adminAllGoods(){
        List<Goods> list = goodsService.SelectAllGoods();
        List list2 = admingoodsService.AllGoodsKind();
        ServletActionContext.getRequest().getSession().setAttribute("allgoodskind",list2);
        ServletActionContext.getRequest().getSession().setAttribute("adminallGoods",list);
        ServletActionContext.getRequest().getSession().setAttribute("page",1);
        return SUCCESS;
    }

}
