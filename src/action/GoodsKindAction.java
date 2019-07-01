package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.adminGoodsService;

import java.util.List;

public class GoodsKindAction extends ActionSupport {
    private int goods_kind;
    private adminGoodsService admingoodsService;
    public void setAdmingoodsService(adminGoodsService admingoodsService) {
        this.admingoodsService = admingoodsService;
    }

    public int getGoods_kind() {
        return goods_kind;
    }

    public void setGoods_kind(int goods_kind) {
        this.goods_kind = goods_kind;
    }

    @Override
    public String execute() throws Exception {
        List list = admingoodsService.GetGoods(goods_kind);
        ServletActionContext.getRequest().getSession().setAttribute("adminallGoods",list);
        return SUCCESS;
    }
}
