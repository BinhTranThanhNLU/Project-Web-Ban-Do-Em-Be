
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Đăng ký" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'dangki.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>

<div class="login-container">
  <div>
    <div class="logo"></div>
    <div class="register">
      <div>Đăng kí tài khoản</div>
      <p>
        Đăng kí để truy cập tất cả các tính năng của dịch vụ chúng tôi. Quản
        lý doanh nghiệp của bạn ở một nơi. Hoàn toàn miễn phí.
      </p>
      <div class="social">
        <a data-toggle="tooltip" title="Facebook" href=""
        ><i class="fab fa-facebook-f"></i
        ></a>
        <a data-toggle="tooltip" title="Google" href=""
        ><i class="fab fa-google"></i
        ></a>
        <a data-toggle="tooltip" title="Github" href=""
        ><i class="fab fa-github"></i
        ></a>
      </div>
    </div>
  </div>

  <div class="form-login">
    <form action="" method="POST" class="form" id="form-2">
      <h3 class="heading">Đăng Kí</h3>

      <div class="form-group">
        <label for="username" class="form-label">Tên tài khoản</label>
        <input
                id="username"
                name="username"
                type="text"
                placeholder="Nhập Tên tài khoản"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="fullname" class="form-label">Họ Và Tên</label>
        <input
                id="fullname"
                name="fullname"
                type="text"
                placeholder="Nhập Họ Và Tên"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="phone" class="form-label">Số điện thoại</label>
        <input
                id="phone"
                name="phone"
                type="text"
                placeholder="Nhập số điện thoại"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="email" class="form-label">Email</label>
        <input
                id="email"
                name="email"
                type="email"
                placeholder="Nhập Email"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="password" class="form-label">Mật khẩu</label>
        <input
                id="password"
                name="password"
                type="password"
                placeholder="Nhập mật khẩu"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>

      <div class="form-group f-term">
        <label for="agree" class="form-label"
        >bạn đã có tài khoản? Đăng nhập
          <a href="dangnhap.html">đây</a></label
        >
        <span class="form-message"></span>
      </div>

      <div class="sign-up">
        <div class="dangnhap">
          <a href="#">Đăng kí</a>
        </div>
      </div>
      <div class="form-icon">
        <p>Hoặc đăng nhập bằng</p>
        <div class="button_icon">
          <a href="#" class="login-button google-login"
          ><i class="fab fa-google-plus-g"></i>Đăng nhập Google</a
          >
          <a href="#" class="login-button facebook-login"
          ><i class="fab fa-facebook-f"></i>Đăng nhập Facebook</a
          >
        </div>
      </div>
    </form>
  </div>
</div>
<%--Footer--%>
<%@ include file="/partials/footer.jsp" %>
