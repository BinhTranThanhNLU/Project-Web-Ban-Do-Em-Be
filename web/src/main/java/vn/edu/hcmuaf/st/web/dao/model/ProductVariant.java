package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;
import java.util.Date;

public class ProductVariant implements Serializable {
    private int idVariant;
    private int idProduct;
    private int idColor;
    private int idSize;
    private int stockQuantity;
    private Date createAt;
    private boolean status;

    // Constructor rỗng
    public ProductVariant() {
    }

    // Constructor đầy đủ
    public ProductVariant(int idVariant, int idProduct, int idColor, int idSize, int stockQuantity, Date createAt, boolean status) {
        this.idVariant = idVariant;
        this.idProduct = idProduct;
        this.idColor = idColor;
        this.idSize = idSize;
        this.stockQuantity = stockQuantity;
        this.createAt = createAt;
        this.status = status;
    }

    // Getters và Setters

    public int getIdVariant() {
        return idVariant;
    }

    public void setIdVariant(int idVariant) {
        this.idVariant = idVariant;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}

