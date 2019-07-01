package bean;

public class Goods {
    private int id;
    private String goods_name;
    private int goods_id;
    private int kind_id;
    private float price;
    private int stock_number;
    private int sales_number;
    private String info;
    private String fileadress;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getKind_id() {
        return kind_id;
    }

    public void setKind_id(int kind_id) {
        this.kind_id = kind_id;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getStock_number() {
        return stock_number;
    }

    public void setStock_number(int stock_number) {
        this.stock_number = stock_number;
    }

    public int getSales_number() {
        return sales_number;
    }

    public void setSales_number(int sales_number) {
        this.sales_number = sales_number;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getFileadress() {
        return fileadress;
    }

    public void setFileadress(String fileadress) {
        this.fileadress = fileadress;
    }
}
