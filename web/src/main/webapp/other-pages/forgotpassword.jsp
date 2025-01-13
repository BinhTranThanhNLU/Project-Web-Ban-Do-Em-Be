<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Quên Mật Khẩu"/>
<c:set var="pageCssList" value="${['header-nav-footer.css', 'dangnhap.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>
<link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        rel="stylesheet"
/>
<input type="hidden" id="status"
       value="<%= request.getAttribute("status")%>"/>


<!-- HEADER -->
<div class="login-container">

    <div>
        <div class="logo">

        </div>
        <div class="register">
            <div>Lấy Lại Mật Khẩu Của Bạn</div>
            <p>Nhập Email đã đăng ký để lấy lại mật khẩu</p>
            <div class="social">
                <a data-toggle="tooltip" title="Facebook" href=""><i class="fab fa-facebook-f"></i></a>
                <a data-toggle="tooltip" title="Google" href=""><i class="fab fa-google"></i></a>
                <a data-toggle="tooltip" title="Github" href=""><i class="fab fa-github"></i></a>
            </div>
        </div>
    </div>

    <div class="form-login">
        <form action="<%=request.getContextPath()%>/forgotpassword" method="POST" class="form" id="form-2">
            <h3 class="heading">Quên Mật Khẩu</h3>

            <div class="form-group">
                <label for="email" class="form-label">Tên tài khoản hoặc Email</label>
                <input id="email" name="email" type="text" placeholder="Nhập tên tài khoản hoặc Email"
                       class="form-control">
                <span class="form-message"></span>
            </div>



            <div class="form-group f-term">
                <label class="form-label">Quên mật khẩu? Nhấn vào <a
                        href="/web_war/other-pages/forgotpassword.jsp">đây</a></label>
                <span class="form-message"></span>
            </div>

            <div class="sign-up">
                <div class="dangnhap">
                    <button type="submit" class="btn-login">Lấy Mật Khẩu</button>
                </div>
                <div class="dangki">
                    <a href="/web_war/other-pages/register.jsp">Đăng kí tại đây</a>
                </div>

            </div>

        </form>
    </div>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
    var x = document.getElementById("status").value; // Lấy giá trị của phần tử có id "status"
     if (x === "InvalidEmail") { // Kiểm tra email
        swal("Bạn Chưa Điền Tên Email", "Bạn Cần Nhập Vào Email", "error");
    } else if (x === "InvalidEmailFormat") { // Kiểm tra email
        swal("Bạn Cần Nhập Email Đúng Định Dạng", "", "error");
    }
</script>


<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

