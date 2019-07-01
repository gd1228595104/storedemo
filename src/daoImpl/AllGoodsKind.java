package daoImpl;

import bean.Goods;
import bean.Goods_Kind;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class AllGoodsKind {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public List<Goods_Kind> AllGoodsKind(){
        List<Goods_Kind> list = (List<Goods_Kind>) hibernateTemplate.find("from Goods_Kind");
        return list;
    }
    public List<Goods> GetGoods(int goods_kind){
        List<Goods> list = (List<Goods>) hibernateTemplate.find("from Goods A where A.kind_id=?",goods_kind);
        return list;
    }
}
