package vn.edu.hcmuaf.st.web.controller;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

public class ForgotPasswordController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        RequestDispatcher dispatcher = null;
        int otpValue = 0;
        HttpSession mySession = request.getSession();

        if (email != null && !email.isEmpty()) {
            // Tạo mã OTP ngẫu nhiên
            Random rand = new Random();
            otpValue = 100000 + rand.nextInt(900000); // Mã OTP có 6 chữ số

            String to = email; // Email nhận OTP

            // Cấu hình SMTP
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            // Tạo session Jakarta Mail
            Session mailSession = Session.getDefaultInstance(props, new jakarta.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("danhv5879@gmail.com", "ffee giid rwkp fmgd");
                }
            });

            try {
                // Soạn tin nhắn
                MimeMessage message = new MimeMessage(mailSession);
                message.setFrom(new InternetAddress("email")); // Email gửi
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to)); // Email nhận
                message.setSubject("Mã OTP của bạn");
                message.setText("Mã OTP của bạn: " + otpValue);

                // Gửi email
                Transport.send(message);
                System.out.println("Message sent successfully");

                // Chuyển hướng đến trang nhập OTP
                dispatcher = request.getRequestDispatcher("/other-pages/enterOtp.jsp");
                request.setAttribute("message", "OTP đã được gửi vào email của bạn");
                mySession.setAttribute("otp", otpValue);
                mySession.setAttribute("email", email);
                dispatcher.forward(request, response);
            } catch (MessagingException e) {
                e.printStackTrace();
                request.setAttribute("error", "Không Thể gửi: " + e.getMessage());
                dispatcher = request.getRequestDispatcher("error.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            request.setAttribute("error", "Email không được để trống.");
            dispatcher = request.getRequestDispatcher("forgot-password.jsp");
            dispatcher.forward(request, response);
        }
    }
}
