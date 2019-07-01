package action;

import bean.Customer;
import com.opensymphony.xwork2.ActionSupport;
import jxl.write.WriteException;
import org.apache.struts2.ServletActionContext;
import service.AdminService;
import util.exportutil;

import java.io.IOException;
import java.util.List;

public class CustomerInfoAction extends ActionSupport {
    private AdminService adminService;
    private int type;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }
    public String ShowAllCustomer(){
        List<Customer> list = adminService.ShowAllCustomer();
        ServletActionContext.getRequest().getSession().setAttribute("AllCustomerInfo",list);
        return "ShowAllCustomer";
    }
    public String ExportCustomerInfo(){
        List<Customer> list = (List<Customer>) ServletActionContext.getRequest().getSession().getAttribute("AllCustomerInfo");
        exportutil export = new exportutil();
        export.JudgeList_Name(type);
        try {
            export.export(list);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        }
        return "ExportCustomerInfo";
    }

}
