package action;

import bean.admin;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.AdminloginService;

import javax.servlet.ServletResponse;
import java.io.PrintWriter;

public class AdmimLoginAction extends ActionSupport {
    private admin user;
    private AdminloginService adminloginService;

    public void setAdminloginService(AdminloginService adminloginService) {
        this.adminloginService = adminloginService;
    }

    public admin getUser() {
        return user;
    }

    public void setUser(admin user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {
        if(adminloginService.adminlogin(user)){
            ServletActionContext.getRequest().getSession().setAttribute("admin",user.getUsername());
            return SUCCESS;
        }else{
            ServletResponse response = ServletActionContext.getResponse();
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            String info = "Login failure";
            out.print("<script>alert('"+info+"');</script>");
            out.flush();
            return ERROR;
        }
    }
}
