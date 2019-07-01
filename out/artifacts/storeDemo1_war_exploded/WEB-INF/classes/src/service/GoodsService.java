package service;

import bean.Goods;
import bean.Goods_Kind;
import daoImpl.AllGoodsImpl;
import daoImpl.SingleGoods;

import java.io.UnsupportedEncodingException;
import java.util.List;

public class GoodsService {
    private AllGoodsImpl allGoods;
    private SingleGoods singleGoods;
    public void setSingleGoods(SingleGoods singleGoods) {
        this.singleGoods = singleGoods;
    }
    public void setAllGoods(AllGoodsImpl allGoods) {
        this.allGoods = allGoods;
    }
    public List SelectGoods(Goods_Kind goods_kind){
        return allGoods.SelectGoods(goods_kind);
    }
    public List SingleGoods(String goodsname){
        String a = null;
        try {
           a=new String(goodsname.getBytes("ISO8859_1"), "UTF8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<Goods> list = (List)singleGoods.Insearch(a);
        return list;
    }
    public List SelectAllGoods(){
        List<Goods> list = allGoods.SelectAllGoods();
        return list;
    }
    public List CheckoutGoods(String name) throws Exception{
        List<Goods> list = null;
        list = (List) singleGoods.Insearch(new String(name.getBytes("ISO-8859-1"),"UTF-8"));
        if(list.get(0).getStock_number()<=0){
            list = null;
        }
        return list;
    }
}
