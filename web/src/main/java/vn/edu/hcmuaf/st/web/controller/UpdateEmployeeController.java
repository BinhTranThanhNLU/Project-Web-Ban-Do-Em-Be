package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.UserDAO;

import java.io.IOException;

@WebServlet(name = "UpdateEmployeeController", urlPatterns = "/manage-employee/update-employee")
public class UpdateEmployeeController extends HttpServlet {

    private UserDAO userDAO = UserDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/other-pages/admin-pages/update-employee.jsp").forward(req, resp);
    }
}
