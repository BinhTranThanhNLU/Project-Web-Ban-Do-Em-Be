package vn.edu.hcmuaf.st.web.dao.model;

import java.io.Serializable;
import java.util.Date;

public class PasswordReset implements Serializable {
    private int idReset;
    private int idUser;
    private String tokenReset;
    private Date createAt;
    private Date expireAt;

    // Constructor rỗng
    public PasswordReset() {
    }

    // Constructor đầy đủ
    public PasswordReset(int idReset, int idUser, String tokenReset, Date createAt, Date expireAt) {
        this.idReset = idReset;
        this.idUser = idUser;
        this.tokenReset = tokenReset;
        this.createAt = createAt;
        this.expireAt = expireAt;
    }

    // Getters và Setters

    public int getIdReset() {
        return idReset;
    }

    public void setIdReset(int idReset) {
        this.idReset = idReset;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getTokenReset() {
        return tokenReset;
    }

    public void setTokenReset(String tokenReset) {
        this.tokenReset = tokenReset;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getExpireAt() {
        return expireAt;
    }

    public void setExpireAt(Date expireAt) {
        this.expireAt = expireAt;
    }
}
