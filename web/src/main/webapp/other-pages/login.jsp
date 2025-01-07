<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Đăng nhập"/>
<c:set var="pageCssList" value="${['header-nav-footer.css', 'dangnhap.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>
<link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        rel="stylesheet"
/>
<!-- HEADER -->
<input type="hidden" id="status" value=" <%=request.getAttribute("status")%>">
<div class="login-container">
    <div>
        <div class="logo">
        </div>
        <div class="register">
            <div>Đăng nhập tài khoản</div>
            <p>Đăng nhập để truy cập tất cả các tính năng của dịch vụ chúng tôi.</p>
            <div class="social">
                <a data-toggle="tooltip" title="Facebook" href=""><i class="fab fa-facebook-f"></i></a>
                <a data-toggle="tooltip" title="Google" href=""><i class="fab fa-google"></i></a>
                <a data-toggle="tooltip" title="Github" href=""><i class="fab fa-github"></i></a>
            </div>
        </div>
    </div>
    <div class="form-login">
        <form action="<%=request.getContextPath()%>/login" method="POST" class="form" id="form-2">
            <h3 class="heading">Đăng Nhập</h3>

            <div class="form-group">
                <label for="username" class="form-label">Tên tài khoản hoặc Email</label>
                <input id="username" name="username" type="text" placeholder="Nhập tên tài khoản hoặc Email"
                       class="form-control">
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <label for="password" class="form-label">Mật khẩu</label>
                <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
                <span class="form-message"></span>
            </div>
            <div class="form-group f-term">
                <label class="form-label">Quên mật khẩu? Nhấn vào <a href="./quentk.html">đây</a></label>
                <span class="form-message"></span>
            </div>
            <div class="sign-up">
                <div class="dangnhap">
                    <button type="submit" class="btn-login">Đăng nhập</button>
                </div>
                <div class="dangki">
                    <a href="register.jsp">Đăng kí tại đây</a>
                </div>
            </div>
            <div class="form-icon">
                <p>Hoặc đăng nhập bằng </p>
                <div class="button_icon ">
                    <a href="#" class="login-button google-login"><i class="fab fa-google-plus-g"></i>Đăng nhập
                        Google</a>
                    <a href="#" class="login-button facebook-login"><i class="fab fa-facebook-f"></i></i>Đăng nhập
                        Facebook</a>
                </div>
            </div>
        </form>
    </div>
</div>

<%--<script>--%>
<%--    // Lấy form và các input--%>
<%--    const form = document.getElementById('form-2');--%>
<%--    const emailInput = document.getElementById('username');--%>
<%--    const passwordInput = document.getElementById('password');--%>
<%--    // Lắng nghe sự kiện submit của form--%>
<%--    form.addEventListener('submit', function (event) {--%>
<%--        // Ngăn việc submit mặc định--%>
<%--        event.preventDefault();--%>

<%--        // Kiểm tra từng trường input--%>
<%--        let isValid = true;--%>
<%--        // Kiểm tra email--%>
<%--        if (emailInput.value.trim() === '') {--%>
<%--            showError(emailInput, 'Vui lòng nhập tên tài khoản hoặc Email');--%>
<%--            isValid = false;--%>
<%--        } else {--%>
<%--            clearError(emailInput);--%>
<%--        }--%>

<%--        // Kiểm tra mật khẩu--%>
<%--        if (passwordInput.value.trim() === '') {--%>
<%--            showError(passwordInput, 'Vui lòng nhập mật khẩu');--%>
<%--            isValid = false;--%>
<%--        } else {--%>
<%--            clearError(passwordInput);--%>
<%--        }--%>

<%--        Nếu cả hai trường hợp đều đúng, submit form--%>
<%--        if (isValid) {--%>

<%--            form.submit();--%>
<%--        }--%>
<%--    });--%>

<%--    // Hàm hiển thị lỗi--%>
<%--    function showError(input, message) {--%>
<%--        const formGroup = input.parentElement;--%>
<%--        const errorSpan = formGroup.querySelector('.form-message');--%>
<%--        errorSpan.textContent = message;--%>
<%--        errorSpan.style.color = 'red';--%>
<%--    }--%>

<%--    // Hàm xóa lỗi--%>
<%--    function clearError(input) {--%>
<%--        const formGroup = input.parentElement;--%>
<%--        const errorSpan = formGroup.querySelector('.form-message');--%>
<%--        errorSpan.textContent = '';--%>
<%--    }--%>
<%--</script>--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
    var status = document.getElementById('status').value;
    if (status == "failed") {
        swal("Thất Bại", "Đăng Nhập Thất bại", "failed");

    } else {
        swal("Thành Công", "Đăng Nhập Thành Công", "success");
    }

</script>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

