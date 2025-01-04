package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Payment implements Serializable {
    private int idPayment;
    private int idOrder;
    private String method;
    private String statusOrder;
    private BigDecimal amount;
    private Date createAt;

    // Constructor rỗng
    public Payment() {
    }

    // Constructor đầy đủ
    public Payment(int idPayment, int idOrder, String method, String statusOrder, BigDecimal amount, Date createAt) {
        this.idPayment = idPayment;
        this.idOrder = idOrder;
        this.method = method;
        this.statusOrder = statusOrder;
        this.amount = amount;
        this.createAt = createAt;
    }

    // Getters và Setters

    public int getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(int idPayment) {
        this.idPayment = idPayment;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getStatusOrder() {
        return statusOrder;
    }

    public void setStatusOrder(String statusOrder) {
        this.statusOrder = statusOrder;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }
}

