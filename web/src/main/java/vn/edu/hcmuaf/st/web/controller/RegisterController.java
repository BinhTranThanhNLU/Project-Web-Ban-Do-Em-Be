package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;


public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email"); // Email từ request
        String phoneNumber = request.getParameter("phoneNumber"); // Phone từ request
        String birthDate = request.getParameter("birthDate"); // Birth date từ
        String re_password = request.getParameter("re_password");
        RequestDispatcher dispatcher = null;
        Connection con = null;

// Gán giá trị mặc định
        int idRole = 3; // Giá trị mặc định là 3
        int active = 1; // Giá trị mặc định là 1
        String avatar = null; // Giá trị mặc định là null

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useSSL=false", "root", "");
            PreparedStatement pst = con.prepareStatement("insert into users(idRole,username,password,fullName,email,phoneNumber,active,birthDate,avatar) values(?,?,?,?,?,?,?,?,?)");
            pst.setInt(1, idRole);
            pst.setString(2, username);
            pst.setString(3, password);
            pst.setString(4, fullName);
            pst.setString(5, email);
            pst.setString(6, phoneNumber);
            pst.setInt(7, active);
            pst.setString(8, birthDate);
            pst.setString(9, avatar);
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("/other-pages/register.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}