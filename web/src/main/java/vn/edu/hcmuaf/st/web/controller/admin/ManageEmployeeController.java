package vn.edu.hcmuaf.st.web.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.st.web.dao.UserDAO;
import vn.edu.hcmuaf.st.web.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageEmployeeController", urlPatterns = "/manage-employee")
public class ManageEmployeeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO userDAO = UserDAO.getInstance();
        List<User> userList = userDAO.getEmployeeList();
        req.setAttribute("users", userList);
        req.getRequestDispatcher("/other-pages/admin-pages/manage-employee.jsp").forward(req, resp);
    }
}
