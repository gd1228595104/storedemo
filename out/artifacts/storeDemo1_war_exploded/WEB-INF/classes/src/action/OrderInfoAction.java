package action;

import bean.Order_Details;
import bean.Order_Info;
import com.opensymphony.xwork2.ActionSupport;
import jxl.write.WriteException;
import org.apache.struts2.ServletActionContext;
import service.OrderInfo_Service;
import util.exportutil;

import java.io.IOException;
import java.util.List;
/*
    显示所有订单信息和订单详情的action
 */
public class OrderInfoAction extends ActionSupport {
    private OrderInfo_Service orderInfo_service;
    private String order_number;
    private int type;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getOrder_number() {
        return order_number;
    }

    public void setOrder_number(String order_number) {
        this.order_number = order_number;
    }

    public void setOrderInfo_service(OrderInfo_Service orderInfo_service) {
        this.orderInfo_service = orderInfo_service;
    }

    public String ShowOrderInfo(){
        List<Order_Info> list = orderInfo_service.ShowAllOrderInfo();
        ServletActionContext.getRequest().getSession().setAttribute("OrderInfo",list);
        ServletActionContext.getRequest().getSession().setAttribute("page",1);
        return "ShowOrderInfo";
    }
    public String SelectOrderDetail(){
        List<Order_Details> list = orderInfo_service.SelectOrderDetail(order_number);
        ServletActionContext.getRequest().getSession().setAttribute("OrderDetail",list);
        return "SelectOrderDetail";
    }
    public String ExportOrderInfo(){
        List<Order_Info> list = (List<Order_Info>) ServletActionContext.getRequest().getSession().getAttribute("OrderInfo");
        exportutil export = new exportutil();
        export.JudgeList_Name(type);
        try {
            export.export(list);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        }
        return "ExportOrderInfo";
    }
    public String ExportOrderDetails(){
        List<Order_Details> list = (List<Order_Details>) ServletActionContext.getRequest().getSession().getAttribute("OrderDetail");
        exportutil export = new exportutil();
        export.JudgeList_Name(type);
        try {
            export.export(list);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        }
        return "ExportOrderDetails";
    }
}
