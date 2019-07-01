package action;

import bean.Customer;
import com.opensymphony.xwork2.ActionSupport;
import service.RegistesService;

import java.net.URLDecoder;

public class RegistesAction extends ActionSupport {
    private Customer customer;
    private RegistesService registesService;

    public void setRegistesService(RegistesService registesService) {
        this.registesService = registesService;
    }
    public RegistesService getRegistesService() {
        return registesService;
    }
    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    @Override
    public String execute() throws Exception{
        if(registesService.Inseart(customer)){
            return SUCCESS;
        }else{
            return ERROR;
        }

    }
}
