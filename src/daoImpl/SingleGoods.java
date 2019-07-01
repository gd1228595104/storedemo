package daoImpl;

import bean.Goods;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.ArrayList;
import java.util.List;

public class SingleGoods {
  private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    //    public List<Goods> SelectGoods(String goodsname){
//        System.out.println("执行了SingleGoods"+goodsname);
//        System.out.println("getHibernateTemplate-->"+hibernateTemplate);
//        List<Goods> list = new ArrayList<>();
//        list = (List<Goods>) hibernateTemplate.find("from bean.Goods A where A.goods_name = ?",goodsname);
//        System.out.println("list-->"+list.size());
//        return list;
//    }

    public Object Insearch(Object objects) {
        String goodsname = (String)objects;
        List<Goods> list = new ArrayList<>();
        list = (List<Goods>) hibernateTemplate.find("from bean.Goods A where A.goods_name = ?",goodsname);
        return list;
    }
}
