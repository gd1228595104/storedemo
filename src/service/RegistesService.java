package service;

import bean.Customer;
import com.opensymphony.xwork2.ActionContext;
import daoInterface.CrudDao;

import java.util.List;


public class RegistesService {
    private CrudDao crudDao;

    public void setCrudDao(CrudDao crudDao) {
        this.crudDao = crudDao;
    }

    public boolean Inseart(Customer customer){
        return crudDao.Inseart(customer);
    }
    public boolean Insearch(Customer customer){
        List<Customer> list = (List)crudDao.Insearch(customer);
        boolean flag = false;
        if(list.size() != 0){
            ActionContext actionContext = ActionContext.getContext();
            actionContext.getSession().put("username",list.get(0).getUsername());
            actionContext.getSession().put("phone",list.get(0).getPhone());
            actionContext.getSession().put("name",list.get(0).getName());
            actionContext.getSession().put("address",list.get(0).getAddress());
            flag = true;
        }
        return flag;
    }
}
