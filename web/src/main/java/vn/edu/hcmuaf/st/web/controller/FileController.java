package vn.edu.hcmuaf.st.web.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/uploads/*")
public class FileController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy đường dẫn file từ URL
        String fileName = req.getPathInfo(); // Ví dụ: /abc123_avatar.jpg
        if (fileName == null || fileName.equals("/")) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND); // Không tìm thấy file
            return;
        }

        // Thư mục chứa file uploads
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File file = new File(uploadPath, fileName);

        // Kiểm tra nếu file tồn tại
        if (!file.exists()) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND); // Không tìm thấy file
            return;
        }

        // Đặt kiểu nội dung cho file (dựa trên tên file)
        String contentType = getServletContext().getMimeType(file.getName());
        if (contentType == null) {
            contentType = "application/octet-stream"; // Kiểu mặc định
        }
        resp.setContentType(contentType);

        // Đọc file và ghi vào output stream
        resp.setContentLength((int) file.length());
        try (FileInputStream fis = new FileInputStream(file);
             OutputStream os = resp.getOutputStream()) {
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fis.read(buffer)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
        }
    }

}
