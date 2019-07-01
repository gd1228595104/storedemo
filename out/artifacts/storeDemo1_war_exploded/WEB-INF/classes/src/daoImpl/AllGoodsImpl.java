package daoImpl;

import bean.Goods;
import bean.Goods_Kind;
import daoInterface.CrudDao;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.ArrayList;
import java.util.List;

public class AllGoodsImpl{
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    private int Insearch(Goods_Kind goods){
//        System.out.println("goods_kind.name-->"+goods_kind.getGoods_kind());
//        System.out.println("goods_kind.id-->"+goods_kind.getKind_id());
//        List<Goods_Kind> list = hibernateTemplate.findByExample(goods_kind);
//        System.out.println("数组的长度-->"+list.size());
//        return list.get(0).getKind_id();
        List<Goods_Kind> list = new ArrayList<>();
        list = (List<Goods_Kind>) hibernateTemplate.find("from bean.Goods_Kind as A where A.goods_kind=?",goods.getGoods_kind());
        return list.get(0).getKind_id();
    }
    public  List SelectGoods(Goods_Kind goods_kind){
        int i = Insearch(goods_kind);
        List<Goods> list = (List)hibernateTemplate.find("from bean.Goods as g where g.kind_id=?",i);
        return list;
    }
    public List SelectAllGoods(){
        String hql = "from bean.Goods";
        List<Goods> list = (List)hibernateTemplate.find(hql);
        return list;
    }
}
