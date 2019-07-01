package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

public class PagesAction extends ActionSupport {
    private int page = 0;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String GoodsInfo() throws Exception {
        if(page == 0){
            page = 1;
        }
        ServletActionContext.getRequest().getSession().setAttribute("page",page);
        return "GoodsInfo";
    }
    public String OrderInfo(){
        if(page == 0){
            page = 1;
        }
        ServletActionContext.getRequest().getSession().setAttribute("page",page);
        return "OrderInfo";
    }
}
