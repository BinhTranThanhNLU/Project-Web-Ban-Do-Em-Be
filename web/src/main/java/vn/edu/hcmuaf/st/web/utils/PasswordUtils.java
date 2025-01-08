package vn.edu.hcmuaf.st.web.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordUtils {

    public static String hashPassword(String password) {
        try {
            // Tạo instance của MD5
            MessageDigest md = MessageDigest.getInstance("MD5");

            // Băm mật khẩu
            byte[] hashInBytes = md.digest(password.getBytes());

            // Chuyển đổi byte[] thành chuỗi hex
            StringBuilder sb = new StringBuilder();
            for (byte b : hashInBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Lỗi khi mã hóa MD5", e);
        }
    }
}
