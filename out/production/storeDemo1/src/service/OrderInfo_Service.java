package service;

import bean.Order_Info;
import daoImpl.OrderInfo_crud;

import java.util.List;

public class OrderInfo_Service {
    private OrderInfo_crud orderInfo_crud;

    public void setOrderInfo_crud(OrderInfo_crud orderInfo_crud) {
        this.orderInfo_crud = orderInfo_crud;
    }

    public List ShowAllOrderInfo(){
        return orderInfo_crud.ShowAllOrderInfo();
    }
    public List SelectOrderDetail(String order_number){
        return orderInfo_crud.SelectOrderDetail(order_number);
    }
    public List InsearchOrderInfo(Order_Info order_info){
        return orderInfo_crud.InsearchOrderInfo(order_info);
    }
    public Order_Info SelectOrder_Info(String order_number){
        return orderInfo_crud.SelectOrder(order_number);
    }
    public void UpdateOrderInfo(Order_Info order_info){
        orderInfo_crud.UpdateOrderInfo(order_info);
    }
    public void DeleteOrderInfo(String order_number){
        orderInfo_crud.DeleteOrderInfo(order_number);
    }
    public void DeleteManyOrderInfo(String order_number){
        String[] str = order_number.split(",");
        for(int i = 0; i<str.length; i++){
            orderInfo_crud.DeleteOrderInfo(str[i]);
        }
    }
}
