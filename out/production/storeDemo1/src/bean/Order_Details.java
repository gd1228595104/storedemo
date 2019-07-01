package bean;

public class Order_Details {
    private int id;
    private String goods;
    private String order_number;
    private float price;
    private int number;
    private float total_number;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoods() {
        return goods;
    }

    public void setGoods(String goods) {
        this.goods = goods;
    }

    public String getOrder_number() {
        return order_number;
    }

    public void setOrder_number(String order_number) {
        this.order_number = order_number;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public float getTotal_number() {
        return total_number;
    }

    public void setTotal_number(float total_number) {
        this.total_number = total_number;
    }

}
