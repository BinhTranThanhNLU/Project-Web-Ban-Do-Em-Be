package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;

public class ShippingInfor implements Serializable {
    private int idShipping;
    private int idOrder;
    private String address;
    private String ward;
    private String district;
    private String province;
    private String statusOrder;

    // Constructor rỗng
    public ShippingInfor() {
    }

    // Constructor đầy đủ
    public ShippingInfor(int idShipping, int idOrder, String address, String ward, String district, String province, String statusOrder) {
        this.idShipping = idShipping;
        this.idOrder = idOrder;
        this.address = address;
        this.ward = ward;
        this.district = district;
        this.province = province;
        this.statusOrder = statusOrder;
    }

    // Getters và Setters

    public int getIdShipping() {
        return idShipping;
    }

    public void setIdShipping(int idShipping) {
        this.idShipping = idShipping;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getStatusOrder() {
        return statusOrder;
    }

    public void setStatusOrder(String statusOrder) {
        this.statusOrder = statusOrder;
    }
}

