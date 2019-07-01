package action;

import bean.Goods;
import com.opensymphony.xwork2.ActionSupport;
import jxl.write.WriteException;
import org.apache.struts2.ServletActionContext;
import service.adminGoodsService;
import util.exportutil;

import java.io.IOException;
import java.util.List;

public class CreateGoodsAction extends ActionSupport {
    private Goods goods;
    private adminGoodsService admingoodsservice;
    private int goodsid;
    private String manyid;
    private int type;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getManyid() {
        return manyid;
    }

    public void setManyid(String manyid) {
        this.manyid = manyid;
    }

    public int getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(int goodsid) {
        this.goodsid = goodsid;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public adminGoodsService getAdmingoodsservice() {
        return admingoodsservice;
    }

    public void setAdmingoodsservice(adminGoodsService admingoodsservice) {
        this.admingoodsservice = admingoodsservice;
    }

    public String DELETE() throws Exception{
        if(admingoodsservice.DeleteGoods(goodsid)){
            ServletActionContext.getRequest().setAttribute("dele_info","success");
        }else{
            ServletActionContext.getRequest().setAttribute("dele_info","faile");
        }
        return "DELETE";
    }

    @Override
    public String execute() throws Exception {
        if((goods.getGoods_id()/100)==goods.getKind_id()) {
            if (admingoodsservice.CheckGoodsid(goods.getGoods_id())) {
                admingoodsservice.CreateGoods(goods);
                ServletActionContext.getRequest().setAttribute("result", "success");
                return SUCCESS;
            } else {
                ServletActionContext.getRequest().setAttribute("result", "0");
                return ERROR;
            }
        }else{
            ServletActionContext.getRequest().setAttribute("result", "1");
            return ERROR;
        }
    }
    public String DeleteManyGoods(){
        if(admingoodsservice.DeleteManyGoods(manyid)){
            ServletActionContext.getRequest().setAttribute("dele_info","success");
        }else{
            ServletActionContext.getRequest().setAttribute("dele_info","faile");
        }
        return "DeleteManyGoods";
    }
    public String SelectGoods(){
        Goods goods = admingoodsservice.SelectGoods(goodsid);
        ServletActionContext.getRequest().setAttribute("type","update");
        ServletActionContext.getRequest().setAttribute("Goods_UpdateInfo",goods);
        return "SelectGoods";
    }
    public String UpdateGoods(){
        admingoodsservice.UpdateGoods(goods);
        return "UpdateGoods";
    }
    public String ExportGoodsInfo(){
        List<Goods> list = (List<Goods>) ServletActionContext.getRequest().getSession().getAttribute("adminallGoods");
        exportutil export = new exportutil();
        export.JudgeList_Name(type);
        try {
            export.export(list);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        }
        return "ExportGoodsInfo";
    }


}
