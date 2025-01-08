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
            <a href="./manage-employee.jsp">Danh Sách Nhân Viên</a> / <span>Thêm Người Dùng</span>
        </div>
        <div class="header" style="color: black;">
            Tạo mới người dùng
            <hr />
        </div>
        <c:if test="${not empty sessionScope.message}">
            <div style="color: white; font-weight: bold; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: ${sessionScope.success ? '#26ce4b' : '#FF9999'};">
                    ${sessionScope.message}
            </div>
            <c:remove var="message" scope="session"/>
            <c:remove var="success" scope="session"/>
        </c:if>
        <form action="${pageContext.request.contextPath}/manage-employee/add-employee" method="post">
            <!-- Vai trò -->
            <div class="form-group">
                <label for="role">Vai trò</label>
                <select id="role" name="idRole" required>
                    <c:forEach var="role" items="${roles}">
                        <option value="${role.idRole}">${role.name}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Tên đăng nhập -->
            <div class="form-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập"
                       required />
            </div>

            <!-- Mật khẩu -->
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required />
            </div>

            <!-- Họ và tên -->
            <div class="form-group">
                <label for="fullName">Họ và tên</label>
                <input type="text" id="fullName" name="fullName" placeholder="Nhập họ và tên" required />
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Nhập email" required />
            </div>

            <!-- Số điện thoại -->
            <div class="form-group">
                <label for="phoneNumber">Số điện thoại</label>
                <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Nhập số điện thoại"
                       required />
            </div>

            <!-- Ngày sinh -->
            <div class="form-group">
                <label for="birthDate">Ngày sinh</label>
                <input type="text" id="birthDate" name="birthDate"
                       value="<fmt:formatDate value='${user.birthDate}' pattern='dd/MM/yyyy' />" placeholder="dd/MM/yyyy" />
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
                    <input type="radio" id="active-yes" name="active" value="1" checked />
                    <label for="active-yes">Hoạt động</label>
                </div>
                <div>
                    <input type="radio" id="active-no" name="active" value="0" />
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

