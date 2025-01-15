package vn.edu.hcmuaf.st.web.dao.Cart;

import vn.edu.hcmuaf.st.web.dao.model.Product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class CartProduct implements Serializable {
    private int idVariant;
    private int idProduct;
    private int idColor;
    private int idSize;
    private int quantity;
    private Product product; //

    public CartProduct() {
    }

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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
