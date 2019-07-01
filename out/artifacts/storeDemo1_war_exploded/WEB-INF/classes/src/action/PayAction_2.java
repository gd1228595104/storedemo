package action;

import com.opensymphony.xwork2.ActionSupport;
import service.adminGoodsService;

public class PayAction_2 extends ActionSupport {
    private adminGoodsService admingoodsservice;

    public adminGoodsService getAdmingoodsservice() {
        return admingoodsservice;
    }

    public void setAdmingoodsservice(adminGoodsService admingoodsservice) {
        this.admingoodsservice = admingoodsservice;
    }

    @Override
    public String execute() throws Exception {
        admingoodsservice.PayAfter();
        return SUCCESS;
    }
}
