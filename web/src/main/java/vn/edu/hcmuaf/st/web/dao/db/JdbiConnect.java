package vn.edu.hcmuaf.st.web.dao.db;

import jakarta.servlet.ServletContextEvent;
import org.jdbi.v3.core.Jdbi;
import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbiConnect {

    static String url = "jdbc:mysql://" + DBProperties.host() + ":" + DBProperties.port() + "/" + DBProperties.dbname() + "?" + DBProperties.option();
    static Jdbi jdbi;

    public static Jdbi get() {
        if (jdbi == null) {
            try {
                makeConnect();
                System.out.println("Kết nối cơ sở dữ liệu thành công.");
            } catch (RuntimeException e) {
                System.err.println("Kết nối cơ sở dữ liệu thất bại: " + e.getMessage());
            }
        }
        return jdbi;
    }

    private static void makeConnect() throws RuntimeException {
        MysqlDataSource src = new MysqlDataSource();
        src.setURL(url);
        src.setUser(DBProperties.username());
        src.setPassword(DBProperties.password());

        try {
            src.setUseCompression(true);
            src.setAutoReconnect(true);
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi thiết lập cấu hình kết nối: " + e.getMessage());
        }
        jdbi = Jdbi.create(src);
    }

    public void contextDestroyed(ServletContextEvent sce) {
        try {
            java.sql.DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        Jdbi j = get();
    }
}
