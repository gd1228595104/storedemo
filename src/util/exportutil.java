package util;

import bean.Customer;
import bean.Goods;
import bean.Order_Details;
import bean.Order_Info;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class exportutil {
    private String[] List_Name;
    private WritableWorkbook book = null;
    private int type;
    public void JudgeList_Name(int type){
        this.type = type;
        if(type == 1){           //设置商品列名
            List_Name = new String[8];
            List_Name[0] = "goods_name";
            List_Name[1] = "goods_id";
            List_Name[2] = "kind_id";
            List_Name[3] = "price";
            List_Name[4] = "stock_number";
            List_Name[5] = "sales_number";
            List_Name[6] = "info";
            List_Name[7] = "fileadress";
        }
        if(type == 2){        //设置订单信息列名
            List_Name = new String[7];
            List_Name[0] = "order_number";
            List_Name[1] = "address";
            List_Name[2] = "affiliated_customer";
            List_Name[3] = "phone";
            List_Name[4] = "total_price";
            List_Name[5] = "order_time";
            List_Name[6] = "status";
        }
        if(type == 3){
            List_Name = new String[5];
            List_Name[0] = "goods";
            List_Name[1] = "order_number";
            List_Name[2] = "price";
            List_Name[3] = "number";
            List_Name[4] = "total_number";
        }
        if(type == 4){
            List_Name = new String[7];
            List_Name[0] = "name";
            List_Name[1] = "phone";
            List_Name[2] = "address";
            List_Name[3] = "username";
            List_Name[4] = "password";
            List_Name[5] = "email";
            List_Name[6] = "money_account";
        }
    }
    public void InsertList_Name(WritableSheet sheet)throws Exception{
        for(int i = 0; i<List_Name.length;i++){
            Label label= new Label(i,0,List_Name[i]);
            sheet.addCell(label);
        }
    }

    public void export(List<?> list) throws IOException, WriteException {
        String file_name = "";
        if(type == 1){
            file_name = "E:\\test\\store.xls";
        }
        if(type == 2){
            file_name = "E:\\test\\orderinfo.xls";
        }
        if(type == 3){
            file_name = "E:\\test\\orderdetail.xls";
        }
        if(type == 4){
            file_name = "E:\\test\\customerinfo.xls";
        }
        book = Workbook.createWorkbook(new File(file_name));
        WritableSheet sheet = book.createSheet("第一页",0);
        try {
            InsertList_Name(sheet);
        } catch (Exception e) {
            System.out.println("导出失败，异常为："+e.getMessage());
            e.printStackTrace();
        }

        for(int i = 0;i<list.size();i++){
            if(type == 1) {
                Goods goods = (Goods) list.get(i);
                Label label_1 = new Label(0,i+1,goods.getGoods_name());
                Label label_2 = new Label(1,i+1,String.valueOf(goods.getGoods_id()));
                Label label_3 = new Label(2,i+1,String.valueOf(goods.getKind_id()));
                Label label_4 = new Label(3,i+1,String.valueOf(goods.getPrice()));
                Label label_5 = new Label(4,i+1,String.valueOf(goods.getStock_number()));
                Label label_6 = new Label(5,i+1,String.valueOf(goods.getSales_number()));
                Label label_7 = new Label(6,i+1,goods.getInfo());
                Label label_8 = new Label(7,i+1,goods.getFileadress());
                sheet.addCell(label_1);
                sheet.addCell(label_2);
                sheet.addCell(label_3);
                sheet.addCell(label_4);
                sheet.addCell(label_5);
                sheet.addCell(label_6);
                sheet.addCell(label_7);
                sheet.addCell(label_8);
            }
            if(type == 2){
                Order_Info order_info = (Order_Info) list.get(i);
                Label label_1 = new Label(0,i+1,order_info.getOrder_number());
                Label label_2 = new Label(1,i+1,order_info.getAddress());
                Label label_3 = new Label(2,i+1,order_info.getAffiliated_customers());
                Label label_4 = new Label(3,i+1,order_info.getPhone());
                Label label_5 = new Label(4,i+1,String.valueOf(order_info.getTotal_price()));
                Label label_6 = new Label(5,i+1,order_info.getOrder_time());
                Label label_7 = new Label(6,i+1, String.valueOf(order_info.getStatus()));
                sheet.addCell(label_1);
                sheet.addCell(label_2);
                sheet.addCell(label_3);
                sheet.addCell(label_4);
                sheet.addCell(label_5);
                sheet.addCell(label_6);
                sheet.addCell(label_7);
            }
            if(type == 3){
                Order_Details order_details = (Order_Details) list.get(i);
                Label label_1 = new Label(0,i+1,order_details.getGoods());
                Label label_2 = new Label(1,i+1,order_details.getOrder_number());
                Label label_3 = new Label(2,i+1,String.valueOf(order_details.getPrice()));
                Label label_4 = new Label(3,i+1,String.valueOf(order_details.getNumber()));
                Label label_5 = new Label(4,i+1,String.valueOf(order_details.getTotal_number()));
                sheet.addCell(label_1);
                sheet.addCell(label_2);
                sheet.addCell(label_3);
                sheet.addCell(label_4);
                sheet.addCell(label_5);
            }
            if(type == 4){
                Customer customer = (Customer) list.get(i);
                Label label_1 = new Label(0,i+1,customer.getName());
                Label label_2 = new Label(1,i+1,customer.getPhone());
                Label label_3 = new Label(2,i+1,customer.getAddress());
                Label label_4 = new Label(3,i+1,customer.getUsername());
                Label label_5 = new Label(4,i+1,customer.getPassword());
                Label label_6 = new Label(5,i+1,customer.getEmail());
                Label label_7 = new Label(6,i+1,customer.getMoney_account());
                sheet.addCell(label_1);
                sheet.addCell(label_2);
                sheet.addCell(label_3);
                sheet.addCell(label_4);
                sheet.addCell(label_5);
                sheet.addCell(label_6);
                sheet.addCell(label_7);
            }
        }
        book.write();
        book.close();

    }
}
