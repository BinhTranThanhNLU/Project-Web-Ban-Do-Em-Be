package vn.edu.hcmuaf.st.web.model;

public class CartItem {
    private ProductVariant productVariant;
    private double price;
    private int quantity;
    private double totalPrice;
    private double area;
    public CartItem(ProductVariant productVariant, int quantity) {
        this.productVariant = productVariant;
//        this.price = productVariant;
        this.quantity = quantity;
        this.totalPrice = quantity * price;
    }
    public ProductVariant getproductVariant() {
        return productVariant;
    }
    public void setproductVariant(ProductVariant productVariant) {
        this.productVariant = productVariant;
    }
    public int getQuantity() {
        return quantity;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    // method update số lượng sản phẩm
    public void setQuantity(int quantity) {
        this.quantity = quantity;
//        this.totalPrice = quantity * productVariant.getProduct().getPrice().getLastPrice();
    }
    public double getTotalPrice() {
        return totalPrice;
    }
    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    public String toString(){
        return this.productVariant.toString() + " " + this.quantity + " " + this.totalPrice ;
    }

}
