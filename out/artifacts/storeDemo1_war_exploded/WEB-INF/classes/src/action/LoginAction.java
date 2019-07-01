package action;

import bean.Customer;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.RegistesService;

import javax.servlet.ServletResponse;
import java.io.PrintWriter;

public class LoginAction extends ActionSupport {
    private Customer customer;
    private RegistesService registesService;

    public RegistesService getRegistesService() {
        return registesService;
    }

    public void setRegistesService(RegistesService registesService) {
        this.registesService = registesService;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String execute() throws Exception {
        boolean flag = registesService.Insearch(customer);
        if(flag){
            return SUCCESS;
        }else {
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
