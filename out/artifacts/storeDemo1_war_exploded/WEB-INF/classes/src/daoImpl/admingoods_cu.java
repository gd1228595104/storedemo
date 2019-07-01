package daoImpl;

import bean.Goods;
import bean.Order_Details;
import bean.Order_Info;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;
import java.util.Map;

public class admingoods_cu {
    private Goods goods;
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }
    public boolean InsearchGoodsid(int goodsid){
        String hql = "from bean.Goods A where A.goods_id = ?";
        List<Goods> list = (List<Goods>) hibernateTemplate.find(hql,goodsid);
        if(list.size() != 0){
            return false;
        }else{
            return true;
        }
    }
    public boolean CreateGoods(Goods goods){
        hibernateTemplate.save(goods);
        return true;
    }
    public boolean DeleteGoods(int goodsid){
        boolean flag = true;
        List<Goods> list = (List<Goods>) hibernateTemplate.find("from Goods where goods_id=?",goodsid);
        Goods goods = list.get(0);
        try {
            hibernateTemplate.delete(goods);
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }
    public boolean DeleteManyGoods(int[] goodsid){
        boolean flag = true;
        try{
            Goods goods = null;
            for(int i = 0; i<goodsid.length; i++){
//                List<Goods> list = (List<Goods>) hibernateTemplate.find("from Goods where goods_id=?",goodsid[i]);
                goods = new Goods();
//                goods = list.get(0);
                goods = SelectGoods(goodsid[i]);
                hibernateTemplate.delete(goods);
            }
        }catch(Exception e){
            flag = false;
        }
        return flag;
    }
    public Goods SelectGoods(int goodsid){
        List<Goods> list = (List<Goods>) hibernateTemplate.find("from Goods where goods_id=?",goodsid);
        Goods goods = list.get(0);
        return goods;
    }
    public void UpdateGoods(Goods goods) {
        Goods goods1 = SelectGoods(goods.getGoods_id());
        goods1.setGoods_name(goods.getGoods_name());
        goods1.setStock_number(goods.getStock_number());
        goods1.setPrice(goods.getPrice());
        goods1.setFileadress(goods.getFileadress());
        goods1.setInfo(goods.getInfo());
        hibernateTemplate.update(goods1);
    }
    public void CreateOrderInfo(Order_Info order_info,List<Order_Details> list){
            hibernateTemplate.save(order_info);
            for(int i = 0;i<list.size();i++){
                hibernateTemplate.save(list.get(i));
            }
    }
}
