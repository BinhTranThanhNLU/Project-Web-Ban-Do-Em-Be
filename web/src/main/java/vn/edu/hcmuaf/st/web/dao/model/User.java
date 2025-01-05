package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;

public class User implements Serializable {
    private int idUser;
    private int idRole;
    private String username;
    private String password;
    private String fullName;
    private String email;
    private String phoneNumber;
    private boolean active;
    private String birthDate;
    private String avatar;
    private Role role; // Thêm thuộc tính Role

    // Constructor rỗng
    public User() {
    }

    // Constructor đầy đủ
    public User(int idUser, int idRole, String username, String password, String fullName,
                String email, String phoneNumber, boolean active, String birthDate, String avatar, Role role) {
        this.idUser = idUser;
        this.idRole = idRole;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.active = active;
        this.birthDate = birthDate;
        this.avatar = avatar;
        this.role = role; // Gán giá trị Role
    }

    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", idRole=" + idRole +
                ", username=" + username +
                ", fullName=" + fullName +
                ", email=" + email +
                ", phoneNumber=" + phoneNumber +
                ", active=" + active +
                ", birthDate=" + birthDate +
                '}';
    }

    // Getters và Setters

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}

