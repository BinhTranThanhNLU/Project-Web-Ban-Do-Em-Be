package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.util.List;

public class Size implements Serializable {
    private int idSize;
    private String name;

    private List<ProductVariant> productVariants;

    // Constructor rỗng
    public Size() {
    }

    // Constructor đầy đủ
    public Size(int idSize, String name) {
        this.idSize = idSize;
        this.name = name;
    }

    public Size(int idSize, String name, List<ProductVariant> productVariants) {
        this.idSize = idSize;
        this.name = name;
        this.productVariants = productVariants;
    }

    // Getters và Setters
    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ProductVariant> getProductVariants() {
        return productVariants;
    }

    public void setProductVariants(List<ProductVariant> productVariants) {
        this.productVariants = productVariants;
    }
}
