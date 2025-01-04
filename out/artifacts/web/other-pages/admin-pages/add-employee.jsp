<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'add-employee.css', 'add-order.css']}"/>
<c:set var="pageJsList" value="${[]}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>


<div class="container">
    <div class="breadcrumb">
        <a href="./manage-employee.html">Danh Sách Nhân Viên</a> / <span>Thêm Người Dùng</span>
    </div>
    <div class="header" style="color: black;">
        Tạo mới người dùng
        <hr/>
    </div>
    <form>
        <div class="form-group">
            <label for="employee-id">ID Nhân Viên</label>
            <input
                    type="text"
                    id="employee-id"
                    name="employee-id"
                    placeholder="Nhập ID nhân viên"
            />

            <label for="employee-name">Họ và tên</label>
            <input
                    type="text"
                    id="employee-name"
                    name="employee-name"
                    placeholder="Nhập họ và tên"
            />

            <label for="employee-email">Email</label>
            <input
                    type="email"
                    id="employee-email"
                    name="employee-email"
                    placeholder="Nhập email"
            />

            <label for="employee-phone">Số điện thoại</label>
            <input
                    type="text"
                    id="employee-phone"
                    name="employee-phone"
                    placeholder="Nhập số điện thoại"
            />

            <label for="employee-address">Địa chỉ</label>
            <input
                    type="text"
                    id="employee-address"
                    name="employee-address"
                    placeholder="Nhập địa chỉ"
            />

            <div class="form-actions">
                <button type="submit" class="save-button">Lưu lại</button>
                <button type="button" class="cancel-button">Hủy bỏ</button>
            </div>
    </form>
</div>
</div>
</div>

<%@ include file="/partials/footer-admin.jsp" %>

