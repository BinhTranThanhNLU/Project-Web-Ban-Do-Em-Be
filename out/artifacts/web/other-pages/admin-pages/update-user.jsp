<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'add-employee.css']}"/>
<c:set var="pageJsList" value="${[]}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>


<div class="container">
    <div class="container-add">
        <div class="breadcrumb">
            <a href="./manage-user.jsp">Danh Sách Người Dùng</a> / <span>Thêm Người Dùng</span>
        </div>
        <div class="header" style="color: black;">
            Chỉnh sửa người dùng
            <hr />
        </div>

        <form action="${pageContext.request.contextPath}/manage-user/update-user" method="post">
            <input type="hidden" name="idUser" value="${user.idUser}" /> <!-- Trường ID ẩn -->

            <!-- Tên đăng nhập -->
            <div class="form-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" id="username" name="username" value="${user.username}" placeholder="Nhập tên đăng nhập" required />
            </div>

            <!-- Mật khẩu -->
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" />
            </div>

            <!-- Họ và tên -->
            <div class="form-group">
                <label for="fullName">Họ và tên</label>
                <input type="text" id="fullName" name="fullName" value="${user.fullName}" placeholder="Nhập họ và tên" required />
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="${user.email}" placeholder="Nhập email" required />
            </div>

            <!-- Số điện thoại -->
            <div class="form-group">
                <label for="phoneNumber">Số điện thoại</label>
                <input type="text" id="phoneNumber" name="phoneNumber" value="${user.phoneNumber}" placeholder="Nhập số điện thoại" required />
            </div>

            <!-- Ngày sinh -->
            <div class="form-group">
                <label for="birthDate">Ngày sinh</label>
                <input type="text" id="birthDate" name="birthDate" value="${user.birthDate}" placeholder="dd/MM/yyyy" />
            </div>

            <!-- Ảnh đại diện -->
            <div class="form-group">
                <label for="avatar">Ảnh đại diện</label>
                <input type="file" id="avatar" name="avatar" accept="image/*" />
            </div>

            <!-- Trạng thái hoạt động -->
            <div class="form-group">
                <label>Trạng thái hoạt động</label>
                <div>
                    <input type="radio" id="active-yes" name="active" value="1" ${user.active ? 'checked' : ''} />
                    <label for="active-yes">Hoạt động</label>
                </div>
                <div>
                    <input type="radio" id="active-no" name="active" value="0" ${!user.active ? 'checked' : ''} />
                    <label for="active-no">Không hoạt động</label>
                </div>
            </div>

            <!-- Nút hành động -->
            <div class="form-actions">
                <button type="submit" class="save-button">Lưu lại</button>
                <button type="button" class="cancel-button">Hủy bỏ</button>
            </div>
        </form>
    </div>
</div>
</div>
</div>

<%@ include file="/partials/footer-admin.jsp" %>

