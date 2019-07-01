package daoImpl;

import bean.Customer;
import daoInterface.CrudDao;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class CustomerCrudDaoImpl implements CrudDao {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public boolean Inseart(Object objects) {
        boolean flag = false;
        try {
            Customer customer = (Customer) objects;
            hibernateTemplate.save(customer);
            flag = true;
        } catch (Exception e){
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean Update(Object... objects) {
        return false;
    }

    @Override
    public boolean Delete(Object... objects) {
        return false;
    }

    @Override
    public Object Insearch(Object objects) {
        Customer customer = (Customer)objects;
        List<Customer> list = hibernateTemplate.findByExample(customer);
        return list;
    }
}
