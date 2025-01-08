
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Quên mật khẩu" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'quenmk.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<div class="login-container">

  <div>
    <div class="logo">

    </div>
    <div class="register">
      <div>Quên Mật Khẩu</div>
      <p>Lấy lại mật khẩu để truy cập tất cả các tính năng của dịch vụ chúng tôi. Quản lý doanh nghiệp của bạn ở một nơi. Hoàn toàn miễn phí.</p>
      <div class="social">
        <a data-toggle="tooltip" title="Facebook" href=""><i class="fab fa-facebook-f"></i></a>
        <a data-toggle="tooltip" title="Google" href=""><i class="fab fa-google"></i></a>
        <a data-toggle="tooltip" title="Github" href=""><i class="fab fa-github"></i></a>
      </div>
    </div>
  </div>

  <div class="form-login">
    <form action="" method="POST" class="form" id="form-2">
      <h3 class="heading">Quên mật khẩu</h3>

      <div class="form-group">
        <label for="email" class="form-label">Email</label>
        <input id="email" name="email" type="text" placeholder="VD: email@domain.com" class="form-control">
        <span class="form-message"></span>
      </div>



      <div class="form-group f-term">
        <label for="agree" class="form-label">bạn đã có tài khoản? Đăng nhập <a id="agree" href="/web_war/other-pages/dangnhap.jsp">đây</a></label>
        <span class="form-message"></span>
      </div>

      <div class="sign-up">
        <div class="dangnhap">
          <a href="/web_war/other-pages/quentk.jsp" >Tìm Kiếm</a>
        </div>
        <div class="dangki">
          <a href="/web_war/other-pages/dangki.jsp">Đăng kí tại đây</a>
        </div>

      </div>
      <div class="form-icon">
        <p>Hoặc đăng nhập bằng </p>
        <div class="button_icon ">
          <a href="#" class="login-button google-login"><i class="fab fa-google-plus-g"></i>Đăng nhập Google</a>
          <a href="#" class="login-button facebook-login"><i class="fab fa-facebook-f"></i></i>Đăng nhập Facebook</a>
        </div>
      </div>


    </form>

  </div>

</div>
<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>