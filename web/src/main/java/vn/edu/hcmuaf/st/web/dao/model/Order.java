package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Order implements Serializable {
    private int idOrder;
    private int idUser;
    private Integer idCoupon; // Có thể null
    private BigDecimal totalPrice;
    private String status;
    private Date createAt;

    // Constructor rỗng
    public Order() {
    }

    // Constructor đầy đủ
    public Order(int idOrder, int idUser, Integer idCoupon, BigDecimal totalPrice, String status, Date createAt) {
        this.idOrder = idOrder;
        this.idUser = idUser;
        this.idCoupon = idCoupon;
        this.totalPrice = totalPrice;
        this.status = status;
        this.createAt = createAt;
    }

    // Getters và Setters

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Integer getIdCoupon() {
        return idCoupon;
    }

    public void setIdCoupon(Integer idCoupon) {
        this.idCoupon = idCoupon;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }
}

