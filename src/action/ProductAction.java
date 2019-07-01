package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

public class ProductAction extends ActionSupport {
    private int number = 1;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String execute() throws Exception {
        System.out.println("执行了Production");
        if(number == 0){
            ServletActionContext.getRequest().setAttribute("number",((number-1)*9+1));
        }else{
            ServletActionContext.getRequest().setAttribute("number",(number-1)*9);
        }
        return SUCCESS;
    }
}
