package vn.edu.hcmuaf.st.web.controller;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.st.web.model.User;
import vn.edu.hcmuaf.st.web.services.InfoUserService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
@WebServlet("/infouser")
public class InfoUserController extends HttpServlet {
    private InfoUserService infoUserService;

    @Override
    public void init() throws ServletException {
        infoUserService = new InfoUserService(); // Khởi tạo service xử lý người dùng
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null || username.isEmpty()) {
            // Nếu người dùng chưa đăng nhập, chuyển hướng về trang login
            response.sendRedirect(request.getContextPath() + "/login?error=not_logged_in");
            return;
        }

        // Lấy thông tin người dùng từ database
        User user = infoUserService.getUserByUsername(username);

        if (user == null) {
            // Nếu không tìm thấy người dùng, chuyển hướng đến trang lỗi
            response.sendRedirect(request.getContextPath() + "/error?message=user_not_found");
            return;
        }

        // Đặt thông tin người dùng lên request và chuyển tiếp đến JSP
        request.setAttribute("user", user);
        request.getRequestDispatcher("/other-pages/thong-tin-cua-toi.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        if (username == null || username.isEmpty()) {
            // Nếu người dùng chưa đăng nhập, chuyển hướng về trang login
            response.sendRedirect(request.getContextPath() + "/login?error=not_logged_in");
            return;
        }

        // Đường dẫn lưu ảnh tương đối
        String uploadPath = getServletContext().getRealPath("/images"); // Lấy đường dẫn thực tế của thư mục 'images' trong thư mục webapp
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir(); // Tạo thư mục nếu chưa tồn tại
        }

        // Xử lý tải ảnh
        String avatar = null;
        Part avatarPart = request.getPart("avatar");
        if (avatarPart != null && avatarPart.getSize() > 0) {
            avatar = Paths.get(avatarPart.getSubmittedFileName()).getFileName().toString();
            // Kiểm tra và in đường dẫn tải ảnh
            System.out.println("Uploading file: " + avatar);
            avatarPart.write(uploadPath + File.separator + avatar);
        } else {
            System.out.println("No avatar uploaded");
        }

        // Kiểm tra lại các tham số nhập vào
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phone");
        String birthDate = request.getParameter("birthDate");
        String password = request.getParameter("password");

        System.out.println("Full Name: " + fullName);
        System.out.println("Email: " + email);
        System.out.println("Phone: " + phoneNumber);
        System.out.println("Birth Date: " + birthDate);
        System.out.println("Password: " + password);

        if (fullName == null || email == null || phoneNumber == null || birthDate == null || password == null ||
                fullName.isEmpty() || email.isEmpty() || phoneNumber.isEmpty() || birthDate.isEmpty() || password.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/infouser?error=missing_data");
            return;
        }

        // Tạo đối tượng User với thông tin mới
        User updatedUser = new User();
        updatedUser.setUsername(username);
        updatedUser.setFullName(fullName);
        updatedUser.setEmail(email);
        updatedUser.setPhoneNumber(phoneNumber);
        updatedUser.setBirthDate(birthDate);
        updatedUser.setPassword(password);
        updatedUser.setAvatar(avatar); // Gắn tên ảnh vào đối tượng User

        // Định nghĩa idRole mặc định
        int defaultRoleId = 3;

        // Cập nhật người dùng trong cơ sở dữ liệu
        boolean isUpdated = infoUserService.updateUser(updatedUser, defaultRoleId);

        if (isUpdated) {
            // Cập nhật thành công, chuyển hướng đến trang thông tin người dùng với thông báo thành công
            response.sendRedirect(request.getContextPath() + "/infouser?success=true");
        } else {
            // Cập nhật thất bại, chuyển hướng với thông báo lỗi
            response.sendRedirect(request.getContextPath() + "/infouser?error=update_failed");
        }
    }
}