package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.model.User;
import vn.edu.hcmuaf.st.web.service.UserService;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/other-pages/register.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idroleParam = request.getParameter("idRole");
        int idRole = 3; // Giá trị mặc định là 3

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthDate = request.getParameter("birthDate");
        String activeParam = request.getParameter("active");
        int active = 1; // Giá trị mặc định là 1
        String avatar = request.getParameter("avatar");

        if (avatar != null && avatar.trim().isEmpty()) {
            avatar = null; // Nếu không hợp lệ, gán giá trị null
        }

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            // Kết nối cơ sở dữ liệu
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");

            // Câu lệnh SQL với đúng thứ tự
            String sql = "INSERT INTO users(idRole, username, fullname, phoneNumber, email, password, active, birthDate, avatar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);

            // Thiết lập giá trị tham số theo thứ tự
            pst.setInt(1, idRole);          // idRole
            pst.setString(2, username);    // username
            pst.setString(3, fullname);    // fullname
            pst.setString(4, phone);       // phoneNumber
            pst.setString(5, email);       // email
            pst.setString(6, password);    // password
            pst.setInt(7, active);         // active
            pst.setString(8, birthDate);   // birthDate
            pst.setString(9, avatar);      // avatar

            // Thực thi câu lệnh
            int rowCount = pst.executeUpdate();

            // Điều hướng
            dispatcher = request.getRequestDispatcher("/other-pages/register.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            // Đảm bảo đóng kết nối
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    throw new RuntimeException(e);
                }
            }
        }
    }

}