package vn.edu.hcmuaf.st.web.model;

import java.io.Serializable;

public class Address implements Serializable {
    private int idAddress;
    private int idUser;
    private String address;
    private String ward;
    private String district;
    private String province;
    private boolean isDefault;

    // Constructor rỗng
    public Address() {
    }

    // Constructor đầy đủ
    public Address(int idAddress, int idUser, String address, String ward, String district, String province, boolean isDefault) {
        this.idAddress = idAddress;
        this.idUser = idUser;
        this.address = address;
        this.ward = ward;
        this.district = district;
        this.province = province;
        this.isDefault = isDefault;
    }

    // Getters và Setters

    public int getIdAddress() {
        return idAddress;
    }

    public void setIdAddress(int idAddress) {
        this.idAddress = idAddress;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public boolean isDefault() {
        return isDefault;
    }

    public void setDefault(boolean aDefault) {
        isDefault = aDefault;
    }
}

