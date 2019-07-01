package daoImpl;

import bean.admin;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class AdminLogin {
    private HibernateTemplate hibernateTemplate;
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }


    public boolean select(admin user){
        boolean flag = false;
        String[] args = {user.getUsername(),user.getPassword()};
        List<admin> list = hibernateTemplate.findByExample(user);
        if( list.size() != 0 ){
            flag = true;
        }
         return flag;
    }
}
