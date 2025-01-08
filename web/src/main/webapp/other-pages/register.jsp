<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Đăng ký"/>
<c:set var="pageCssList" value="${['header-nav-footer.css', 'dangki.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>

<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"/>

<div class="login-container">
  <div>
    <div class="logo"></div>
    <div class="register">
      <div>Đăng kí tài khoản</div>
      <p>
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
    <form action="<%=request.getContextPath()%>/register" method="POST" class="form" id="form-2">
      <h3 class="heading">Đăng Kí</h3>
      <div class="form-group">
        <input
                id="idRole"
                name="idRole"
                type="text"
                placeholder=""
                value="3"
                class="form-control"
                style="display: none;"
        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <input
                id="active"
                name="active"
                type="text"
                placeholder=""
                value="1"
                class="form-control"
                style="display: none;"
        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <label for="username" class="form-label">Tên tài khoản</label>
        <input
                id="username"
                name="username"
                type="text"
                placeholder="Nhập Tên tài khoản"
                class="form-control"
                value="<%= request.getAttribute("username") != null ? request.getAttribute("username") : "" %>"

        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <label for="fullName" class="form-label">Họ Và Tên</label>
        <input
                id="fullName"
                name="fullName"
                type="text"
                placeholder="Nhập Họ Và Tên"
                class="form-control"
                value="<%= request.getAttribute("fullName") != null ? request.getAttribute("fullName") : "" %>"
        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <label for="birthDate" class="form-label">Ngày Sinh</label>
        <input
                id="birthDate"
                name="birthDate"
                type="text"
                placeholder="Nhập theo định dạng DD/MM/YYYY"
                class="form-control"
                pattern="\d{4}/\d{2}/\d{2}"
                value="<%= request.getAttribute("birthDate") != null ? request.getAttribute("birthDate") : "" %>"


        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <label for="phoneNumber" class="form-label">Số điện thoại</label>
        <input
                id="phoneNumber"
                name="phoneNumber"
                type="text"
                placeholder="Nhập số điện thoại"
                class="form-control"
                value="<%= request.getAttribute("phoneNumber") != null ? request.getAttribute("phoneNumber") : "" %>"
        />
        <span class="form-message"></span>
      </div>
      <div class="form-group">
        <label for="email" class="form-label">Email</label>
        <input
                id="email"
                name="email"
                type="text"
                placeholder="Nhập Email"
                class="form-control"
                value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>"

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
      <div class="form-group">
        <label for="re_password" class="form-label">Nhập Lại Mật khẩu</label>
        <input
                id="re_password"
                name="re_password"
                type="password"
                placeholder="Nhập mật khẩu"
                class="form-control"
        />
        <span class="form-message"></span>
      </div>
      <div class="form-group f-term">
        <label class="form-label">
          bạn đã có tài khoản? Đăng nhập Tại
          <a href="/web_war/other-pages/login.jsp" style="font-size: 20px">đây</a></label>
        <span class="form-message"></span>
      </div>
      <div class="form-group f-term">
        <label class="form-label">Quên mật khẩu? Nhấn vào <a href="/web_war/other-pages/forgotpassword.jsp">đây</a></label
        <span class="form-message"></span>
      </div>
      <div class="sign-up">
        <div class="dangnhap">
          <button type="submit" class="btn-login">Đăng Ký</button>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
  var x = document.getElementById("status").value; // Lấy giá trị của phần tử có id "status"
  if (x === "success") { // So sánh giá trị
    swal("Chúc Mừng", "Bạn Đã Tạo Tài Khoản Thành Công", "success");
  } else if (x === "InvalidName") { // Kiểm tra tên tài khoản
    swal("Bạn Chưa Điền Tên Tài Khoản", "Bạn Cần Nhập Vào Tài Khoản", "error");
  } else if (x === "InvalidFullName") { // Kiểm tra họ và tên
    swal("Bạn Chưa Điền Đầy Đủ Họ Và Tên", "Bạn Cần Nhập Vào Họ Và Tên", "error");
  } else if (x === "InvalidBirthDate") { // Kiểm tra ngày tháng năm sinh
    swal("Bạn Chưa Điền Ngày Tháng Năm Sinh", "Bạn Cần Nhập Vào Ngày Tháng Năm Sinh", "error");
  } else if (x === "InvalidPhoneNumber") { // Kiểm tra số điện thoại
    swal("Bạn Chưa Điền Số Điện Thoại", "Bạn Cần Nhập Vào Số Điện Thoại", "error");
  } else if (x === "InvalidCheckPhoneNumber") { // Kiểm tra số điện thoại
    swal("Số Điện Thoại Không Đúng", "Số Điện Thoại Phải Có 10 Số Và Bắt Đầu Bằng Số Không", "error");
  } else if (x === "InvalidEmail") { // Kiểm tra email
    swal("Bạn Chưa Điền Tên Email", "Bạn Cần Nhập Vào Email", "error");
  } else if (x === "InvalidEmailFormat") { // Kiểm tra email
    swal("Bạn Cần Nhập Email Đúng Định Dạng", "", "error");
  } else if (x === "InvalidPassword") { // Kiểm tra mật khẩu
    swal("Bạn Chưa Điền Mật Khẩu", "Bạn Cần Nhập Vào Mật Khẩu", "error");
  } else if (x === "InvalidRePassword") { // Kiểm tra mật khẩu không khớp
    swal("Mật Khẩu Không Khớp", "Bạn Cần Kiểm Tra Lại Mật Khẩu", "error");
  }


</script>

<%@ include file="/partials/footer.jsp" %>
