package vn.edu.hcmuaf.st.web.dao.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBProperties {
    private static final String URL = "jdbc:mysql://localhost:3306/project?useSSL=false&serverTimezone=UTC";
    private static final String USERNAME = "root"; // Thay bằng tên người dùng MySQL
    private static final String PASSWORD = ""; // Thay bằng mật khẩu MySQL
    private static Properties prop = new Properties();

    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String host() {
        return prop.get("db.host").toString();
    }

    public static int port() {
        try {
            return Integer.parseInt(prop.get("db.port").toString());
        } catch (NumberFormatException e) {
            return 3306;
        }
    }

    public static String username() {
        return prop.get("db.username").toString();
    }

    public static String password() {
        return prop.get("db.password").toString();
    }

    public static String dbname() {
        return prop.get("db.dbname").toString();
    }

    public static String option() {
        return prop.get("db.option").toString();
    }

    public static Connection getConnection() {
        try {
            // Nạp driver MySQL (không bắt buộc với JDBC 4.0+)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Tạo kết nối
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Không tìm thấy driver JDBC: ", e);
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi kết nối cơ sở dữ liệu: ", e);

        }
    }
}