package daoImpl;

import bean.Customer;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class CustomerInfo_cu {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    public List ShowAllCustomer(){
        List<Customer> list = (List<Customer>) hibernateTemplate.find("from bean.Customer");
        return list;
    }
    public Customer SelectCustomer(String phone){
        String hql = "from bean.Customer where phone=?";
        List<Customer> list = (List<Customer>) hibernateTemplate.find(hql,phone);
        Customer customer = list.get(0);
        return customer;
    }
}
