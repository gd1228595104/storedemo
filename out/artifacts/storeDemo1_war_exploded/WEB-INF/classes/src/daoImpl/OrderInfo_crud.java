package daoImpl;

import bean.Order_Details;
import bean.Order_Info;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public class OrderInfo_crud {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    public List ShowAllOrderInfo(){
        List<Order_Info> list = (List<Order_Info>) hibernateTemplate.find("from bean.Order_Info");
        return list;
    }
    public List SelectOrderDetail(String order_number){
        List<Order_Details> list = (List<Order_Details>) hibernateTemplate.find("from bean.Order_Details A where A.order_number=?",order_number);
        return list;
    }
    public List InsearchOrderInfo(Order_Info order_info){
        String hql = "from bean.Order_Info A where 1=1 ";
        if (order_info.getOrder_number()!=null&&!"".equals(order_info.getOrder_number())) {
           hql+="and A.order_number like '%" + order_info.getOrder_number() + "%' ";
        }
        if(order_info.getPhone()!=null&&!"".equals(order_info.getPhone())){
            hql+="and A.phone like '%" + order_info.getPhone() + "%'";
        }
        List<Order_Info> list = (List<Order_Info>) hibernateTemplate.find(hql);
        return list;
    }
    public void UpdateOrderInfo(Order_Info order_info){
        Order_Info order_info1 = SelectOrder(order_info.getOrder_number());
        order_info1.setPhone(order_info.getPhone());
        order_info1.setAddress(order_info.getAddress());
        order_info1.setAffiliated_customers(order_info1.getAffiliated_customers());
        order_info1.setStatus(order_info.getStatus());
        hibernateTemplate.update(order_info1);
    }
    public Order_Info SelectOrder(String order_number){
        List<Order_Info> list = (List<Order_Info>) hibernateTemplate.find("from bean.Order_Info where order_number = ?",order_number);
        Order_Info order_info = list.get(0);
        return order_info;
    }
    public void DeleteOrderInfo(String order_number){
        Order_Info order_info = SelectOrder(order_number);
        hibernateTemplate.delete(order_info);
    }
}
