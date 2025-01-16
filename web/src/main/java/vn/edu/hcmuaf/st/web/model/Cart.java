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
        int totalFabric = 0;
        double price = 0.0;
        int quantity = 0;
        double area = 0.0;

        for (CartItem item : items.values()) {
            quantity += item.getQuantity();
            price += item.getTotalPrice();
            if (isFabric(item)) { // Kiểm tra loại sản phẩm là vải
                totalFabric += item.getQuantity();
                area += item.getArea() * item.getQuantity();
            }
        }

        // Tính phí vận chuyển
        this.shippingFee = calculateShippingFee(quantity, totalFabric);

        // Gán giá trị
        this.totalQuantity = quantity;
        this.totalPrice = price;
        this.totalArea = area;
        this.lastPrice = this.totalPrice + this.shippingFee;
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
        if (totalFabric <= 3) return 300000.0; // Đồng giá 30k
        return 10000.0 * totalFabric; // Tính theo số lượng vải
    }

    // Xóa sản phẩm khỏi giỏ
    public void remove(int idStyle) {
        if (items.containsKey(idStyle)) {
            items.remove(idStyle);
            this.calculateInfo();
        }
    }

    // Cập nhật số lượng sản phẩm
    public void updateQuantity(int idStyle, int quantity) {
        if (quantity < 0) return; // Không cho phép số lượng âm
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
