package vn.edu.hcmuaf.st.web.model;

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

    private Product product;
    private Color color;
    private Size size;

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

    public ProductVariant(int idVariant, int idProduct, int idColor, int idSize, int stockQuantity
            , Date createAt, boolean status
            , Product product, Color color, Size size) {
        this.idVariant = idVariant;
        this.idProduct = idProduct;
        this.idColor = idColor;
        this.idSize = idSize;
        this.stockQuantity = stockQuantity;
        this.createAt = createAt;
        this.status = status;
        this.product = product;
        this.color = color;
        this.size = size;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}

