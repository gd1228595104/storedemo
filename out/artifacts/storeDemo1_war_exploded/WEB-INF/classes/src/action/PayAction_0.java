package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.adminGoodsService;

public class PayAction_0 extends ActionSupport {
    private adminGoodsService admingoodsservice;
    private String pd_FrpId;

    public String getPd_FrpId() {
        return pd_FrpId;
    }

    public void setPd_FrpId(String pd_FrpId) {
        this.pd_FrpId = pd_FrpId;
    }

    public void setAdmingoodsservice(adminGoodsService admingoodsservice) {
        this.admingoodsservice = admingoodsservice;
    }


    @Override
    public String execute() throws Exception {
        String ordernumber = (String) ServletActionContext.getRequest().getSession().getAttribute("oid");
        admingoodsservice.Pay(ordernumber,pd_FrpId);
        return null;
    }
}
