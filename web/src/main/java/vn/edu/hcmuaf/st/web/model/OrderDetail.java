package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class OrderDetail implements Serializable {
    private int idOrderDetail;
    private int idOrder;
    private int idVariant;
    private int quantityProduct;
    private BigDecimal priceAt;
    private BigDecimal totalPrice;

    // Constructor rỗng
    public OrderDetail() {
    }

    // Constructor đầy đủ
    public OrderDetail(int idOrderDetail, int idOrder, int idVariant, int quantityProduct, BigDecimal priceAt, BigDecimal totalPrice) {
        this.idOrderDetail = idOrderDetail;
        this.idOrder = idOrder;
        this.idVariant = idVariant;
        this.quantityProduct = quantityProduct;
        this.priceAt = priceAt;
        this.totalPrice = totalPrice;
    }

    // Getters và Setters

    public int getIdOrderDetail() {
        return idOrderDetail;
    }

    public void setIdOrderDetail(int idOrderDetail) {
        this.idOrderDetail = idOrderDetail;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdVariant() {
        return idVariant;
    }

    public void setIdVariant(int idVariant) {
        this.idVariant = idVariant;
    }

    public int getQuantityProduct() {
        return quantityProduct;
    }

    public void setQuantityProduct(int quantityProduct) {
        this.quantityProduct = quantityProduct;
    }

    public BigDecimal getPriceAt() {
        return priceAt;
    }

    public void setPriceAt(BigDecimal priceAt) {
        this.priceAt = priceAt;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }
}
