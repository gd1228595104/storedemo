package model;

import bean.Goods;

import java.util.List;

public class CheckOut {
    public boolean Check(Goods goods,List<Goods> list){
        boolean flag = true;
        for (Goods g:list) {
            if(g.getGoods_name().equals(goods.getGoods_name())){
                flag = false;
            }
        }
        return flag;
    }
}
