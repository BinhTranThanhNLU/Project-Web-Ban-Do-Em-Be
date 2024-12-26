package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Coupon implements Serializable {
    private int idCoupon;
    private String code;
    private BigDecimal discountValue;
    private String discountType;
    private Date validFrom;
    private Date validTo;
    private boolean status;

    // Constructor rỗng
    public Coupon() {
    }

    // Constructor đầy đủ
    public Coupon(int idCoupon, String code, BigDecimal discountValue, String discountType,
                  Date validFrom, Date validTo, boolean status) {
        this.idCoupon = idCoupon;
        this.code = code;
        this.discountValue = discountValue;
        this.discountType = discountType;
        this.validFrom = validFrom;
        this.validTo = validTo;
        this.status = status;
    }

    // Getters và Setters

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getIdCoupon() {
        return idCoupon;
    }

    public void setIdCoupon(int idCoupon) {
        this.idCoupon = idCoupon;
    }

    public BigDecimal getDiscountValue() {
        return discountValue;
    }

    public void setDiscountValue(BigDecimal discountValue) {
        this.discountValue = discountValue;
    }

    public String getDiscountType() {
        return discountType;
    }

    public void setDiscountType(String discountType) {
        this.discountType = discountType;
    }

    public Date getValidFrom() {
        return validFrom;
    }

    public void setValidFrom(Date validFrom) {
        this.validFrom = validFrom;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getValidTo() {
        return validTo;
    }

    public void setValidTo(Date validTo) {
        this.validTo = validTo;
    }
}

