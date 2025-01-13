package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.util.List;

public class Color implements Serializable {
    private int idColor;
    private String name;
    private String hexCode;

    private List<ProductVariant> productVariants;

    // Constructor rỗng
    public Color() {
    }

    // Constructor đầy đủ
    public Color(int idColor, String name, String hexCode) {
        this.idColor = idColor;
        this.name = name;
        this.hexCode = hexCode;
    }

    public Color(int idColor, String name, String hexCode, List<ProductVariant> productVariants) {
        this.idColor = idColor;
        this.name = name;
        this.hexCode = hexCode;
        this.productVariants = productVariants;
    }

    // Getters và Setters

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHexCode() {
        return hexCode;
    }

    public void setHexCode(String hexCode) {
        this.hexCode = hexCode;
    }

    public void setProductVariants(List<ProductVariant> productVariants) {
        this.productVariants = productVariants;
    }

    public List<ProductVariant> getProductVariants() {
        return productVariants;
    }
}

