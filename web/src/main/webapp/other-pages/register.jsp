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
                />
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <label for="birthDate" class="form-label">Ngày Sinh</label>
                <input
                        id="birthDate"
                        name="birthDate"
                        type="text"
                        placeholder="Nhập theo định dạng YYYY/MM/DD"
                        class="form-control"
                        pattern="\d{4}/\d{2}/\d{2}"
                        title="Vui lòng nhập theo định dạng YYYY/MM/DD"
                        required
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
                <label class="form-label"
                >bạn đã có tài khoản? Đăng nhập
                    <a href="/web_war/other-pages/login.jsp">đây</a></label
                >
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
    }


</script>
<%--Footer--%>
<%@ include file="/partials/footer.jsp" %>
