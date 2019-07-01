package action;

import bean.Order_Info;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.OrderInfo_Service;

import java.util.List;
/*
    对订单进行查找和删改的action
 */
public class InsearchOrderInfoAction extends ActionSupport {
    private OrderInfo_Service orderInfo_service;
    private String paramters;
    private Order_Info order_info;
    private String order_number;

    public String getOrder_number() {
        return order_number;
    }

    public void setOrder_number(String order_number) {
        this.order_number = order_number;
    }

    public Order_Info getOrder_info() {
        return order_info;
    }

    public void setOrder_info(Order_Info order_info) {
        this.order_info = order_info;
    }

    public String getParamters() {
        return paramters;
    }

    public void setParamters(String paramters) {
        this.paramters = paramters;
    }

    public void setOrderInfo_service(OrderInfo_Service orderInfo_service) {

        this.orderInfo_service = orderInfo_service;
    }

    public String InsearchOrderInfo(){
        String[] str = paramters.split(",");
        Order_Info order_info = new Order_Info();
        if(str.length==1) {
            order_info.setOrder_number(str[0]);
        }
        if(str.length==2&&str[1]!=null&&!"".equals(str[1])) {
            order_info.setOrder_number(str[0]);
            order_info.setPhone(str[1]);
        }
        List<Order_Info> list = orderInfo_service.InsearchOrderInfo(order_info);
        ServletActionContext.getRequest().getSession().setAttribute("OrderInfo",list);
        return "InsearchOrderInfo";
    }
    public String SelectOrderInfo(){
        Order_Info order_info = orderInfo_service.SelectOrder_Info(paramters);
        ServletActionContext.getRequest().setAttribute("UpdateOrderInfo",order_info);
        return "SelectOrderInfo";
    }
    public String UpdateOrderInfo(){
        orderInfo_service.UpdateOrderInfo(order_info);
        return "UpdateOrderInfo";
    }
    public String DeleteOrderInfo(){
        orderInfo_service.DeleteOrderInfo(order_number);
        return "DeleteOrderInfo";
    }
    public String DeleteManyOrderInfo(){
        orderInfo_service.DeleteManyOrderInfo(order_number);
        return "DeleteManyOrderInfo";
    }
}
