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

public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public RegisterController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/other-pages/dangky.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserService service = new UserService();
        User user = new User(username, password);
        if (service.checkLogin(username,password)) {
            response.sendRedirect("home");
        } else {
            response.sendRedirect("login?err=1");
        }
    }

}