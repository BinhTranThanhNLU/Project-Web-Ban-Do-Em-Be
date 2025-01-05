<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'manage-admin.css']}"/>
<c:set var="pageJsList" value="${['admin-model.js']}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>

<!-- Container-Manage-Employee -->
<div class="container-management container-manage-employee">
    <!-- Employee Management Table -->
    <div class="container-management">
        <div class="header">
            <h2>Danh Sách Nhân Viên</h2>
        </div>
        <div class="action-buttons">
            <a href="./add-employee.html" class="btn btn-add"><i class="fa-solid fa-plus"></i> Thêm nhân
                viên</a>
            <button class="btn btn-edits">Chỉnh nhiều dòng</button>
            <button class="btn btn-deletes">Xóa nhiều dòng</button>
        </div>

        <table id="employeeTable" class="table table-hover">
            <thead>
            <tr>
                <th><input type="checkbox"></th>
                <th>ID nhân viên</th>
                <th>Họ và tên</th>
                <th>Vai trò</th>
                <th>Email</th>
                <th>SĐT</th>
                <th>Ngày sinh</th>
                <th>Trạng thái</th>
                <th>Tính năng</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="user" items="${users}">
                <tr>
                    <td><input type="checkbox" name="selectedUsers" value="${user.idUser}"></td>
                    <td>${user.idUser}</td>
                    <td>${user.fullName}</td>
                    <td>${user.role.name}</td> <!-- Truy cập roleName qua user.role -->
                    <td>${user.email}</td>
                    <td>${user.phoneNumber}</td>
                    <td>${user.birthDate}</td>
                    <td>${user.active ? "Hoạt động" : "Không hoạt động"}</td>
                    <td>
                        <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
                        <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>

<!-- Model Confirm -->
<div id="confirmModal" class="modal-confirm">
    <div class="modal-content">
        <h2>Cảnh báo</h2>
        <p>Bạn có chắc chắn là muốn xóa nhân viên này?</p>
        <button class="btn btn-cancel">Hủy bỏ</button>
        <button class="btn btn-confirm">Đồng ý</button>
    </div>
</div>

</div>
</div>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#employeeTable').DataTable({
            paging: true,       // Bật phân trang
            searching: true,    // Bật tìm kiếm
            info: true,         // Hiển thị thông tin tổng số dòng
            lengthChange: true, // Cho phép thay đổi số dòng hiển thị
            order: [[1, 'asc']], // Sắp xếp theo cột "ID nhân viên" (cột thứ 2) tăng dần
            columnDefs: [
                {orderable: false, targets: [0, 7]} // Vô hiệu hóa sắp xếp ở cột checkbox và cột tính năng
            ],
            language: {
                search: "Tìm kiếm:",
                lengthMenu: "Hiển thị _MENU_ dòng",
                info: "Hiển thị _START_ đến _END_ của _TOTAL_ dòng",
                paginate: {
                    first: "<i class='fas fa-angle-double-left'></i>", // Icon mũi tên kép trái
                    last: "<i class='fas fa-angle-double-right'></i>", // Icon mũi tên kép phải
                    next: "<i class='fas fa-angle-right'></i>", // Icon mũi tên phải
                    previous: "<i class='fas fa-angle-left'></i>" // Icon mũi tên trái
                }
            }
        });
    });
</script>

<%@ include file="/partials/footer-admin.jsp" %>

