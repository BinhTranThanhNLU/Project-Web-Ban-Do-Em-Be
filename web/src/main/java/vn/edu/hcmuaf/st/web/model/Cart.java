package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart implements Serializable {

    private Map<Integer, CartItem> items; 
    private int totalQuantity; 
    private double totalPrice; 
    private double shippingFee; 
    private double lastPrice; 
    private double totalArea; 

    public Cart() {
        this.items = new HashMap<>();
        this.totalQuantity = 0;
        this.totalPrice = 0;
        this.shippingFee = 0;
        this.lastPrice = 0.0;
    }

    // Thêm sản phẩm vào giỏ
    public void add(CartItem item) {
        if (item == null || item.getQuantity() < 0) return; // Kiểm tra item hợp lệ
        int idStyle = item.getproductVariant().getIdVariant();
        if (!items.containsKey(idStyle) || items.get(idStyle) == null) {
            items.put(idStyle, item);
        } else {
            CartItem existing = items.get(idStyle);
            existing.setQuantity(existing.getQuantity() + item.getQuantity());
        }
        this.calculateInfo(); // Tính toán lại các thông tin giỏ hàng
    }

    // Tính toán chi phí
    private void calculateInfo() {
        double price = 0.0;
        int quantity = 0;

        for (CartItem item : items.values()) {
            quantity += item.getQuantity();
            price += item.getTotalPrice();
        }

        // Gán giá trị
        this.totalQuantity = quantity;
        this.totalPrice = price;
        this.lastPrice = this.totalPrice; // Nếu không cần phí vận chuyển
    }

    // Kiểm tra sản phẩm là loại vải
    private boolean isFabric(CartItem item) {
        int categoryId = item.getproductVariant().getProduct().getCategory().getIdCategory();
        return categoryId == 1 || categoryId == 2;
    }

    // Tính phí vận chuyển
    private double calculateShippingFee(int quantity, int totalFabric) {
        if (quantity == 0) return 0.0;
        if (quantity >= 10 && totalFabric >= 5) return 0.0; // Miễn phí ship
        if (totalFabric <= 3) return 300000.0; 
        return 10000.0 * totalFabric; 
    }

     //Xóa sản phẩm khỏi giỏ
    public void remove(int idStyle) {
        if (items.containsKey(idStyle)) {
            items.remove(idStyle);
            this.calculateInfo();
        }
    }

    // Cập nhật số lượng sản phẩm
    public void updateQuantity(int idStyle, int quantity) {
        if (quantity < 0) return; 
        CartItem item = items.get(idStyle);
        if (item != null) {
            item.setQuantity(quantity);
            this.calculateInfo();
        }
    }



    // Lấy danh sách sản phẩm
    public List<CartItem> getValues() {
        return items.values().stream().toList();
    }

    // Getter và Setter
    public double getLastPrice() {
        return lastPrice;
    }

    public void setLastPrice(double lastPrice) {
        this.lastPrice = lastPrice;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public double getTotalArea() {
        return totalArea;
    }

    public void setTotalArea(double totalArea) {
        this.totalArea = totalArea;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public Map<Integer, CartItem> getItems() {
        return items;
    }

    public void setItems(Map<Integer, CartItem> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "items=" + items +
                ", totalQuantity=" + totalQuantity +
                ", totalPrice=" + totalPrice +
                ", shippingFee=" + shippingFee +
                ", lastPrice=" + lastPrice +
                '}';
    }
}
