package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("status", "InvalidName"); // Gửi giá trị tới JSP
            dispatcher = request.getRequestDispatcher("/other-pages/login.jsp");
            dispatcher.forward(request, response);
            return; // Dừng thực thi mã phía sau
        }
        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("status", "InvalidPassword"); // Gửi giá trị tới JSP
            dispatcher = request.getRequestDispatcher("/other-pages/login.jsp");
            dispatcher.forward(request, response);
            return; // Dừng thực thi mã phía sau
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useSSL=false", "root", "");
            PreparedStatement ps = con.prepareStatement("select * from users where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Đăng nhập thành công
                session.setAttribute("username", rs.getString("username"));
                dispatcher = request.getRequestDispatcher("index.jsp");
            } else {
                // Sai tên đăng nhập hoặc mật khẩu
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("/other-pages/login.jsp");
            }
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
