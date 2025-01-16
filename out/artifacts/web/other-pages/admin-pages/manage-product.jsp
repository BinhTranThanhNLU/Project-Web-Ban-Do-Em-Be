<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'manage-admin.css']}"/>
<c:set var="pageJsList" value="${['admin-model.js']}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>

<!-- Container-Manage-Product -->
<div class="container-management container-manage-product">
    <!-- Employee Management Table -->
    <div class="container-management">
        <div class="header">
            <h2>Danh Sách Nhân Viên</h2>
        </div>
        <div class="action-buttons">
            <a href="/web_war/manage-product/add-product" class="btn btn-add"><i class="fa-solid fa-plus"></i> Thêm
                nhân
                viên</a>
            <button class="btn btn-edits">Chỉnh nhiều dòng</button>
            <button class="btn btn-deletes">Xóa nhiều dòng</button>
        </div>

        <c:if test="${not empty sessionScope.message}">
            <div style="color: white; font-weight: bold; margin-bottom: 20px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: ${sessionScope.success ? '#90EE90' : '#FF9999'};">
                <ul style="margin: 0; padding: 0; list-style: none;">
                    <c:forEach var="error" items="${sessionScope.message}">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
            <c:remove var="message" scope="session"/>
            <c:remove var="success" scope="session"/>
        </c:if>

        <table id="productTable" class="table table-hover">
            <thead>
            <tr>
                <th><input type="checkbox"></th>
                <th>ID sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Danh mục</th>
                <th>Giá gốc</th>
                <th>Giảm giá (%)</th>
                <th>Giá sau giảm</th>
                <th>Số lượng trong kho</th>
                <th>Trạng thái</th>
                <th>Hình ảnh</th>
                <th>Tính năng</th>
            </tr>
            </thead>
            <tbody>

            <c:if test="${not empty products}">
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td><input type="checkbox" name="selectedProducts" value="${product.idProduct}"></td>
                        <td>${product.idProduct}</td>
                        <td>${product.title}</td>
                        <td>${product.category.name}</td>
                        <td><fmt:formatNumber value="${product.price}" type="currency" currencySymbol="₫"/></td>
                        <td>${product.discount}</td>
                        <td><fmt:formatNumber value="${product.price - (product.price * product.discount / 100)}" type="currency" currencySymbol="₫"/></td>
                        <td>${product.variants.totalStock}</td>
                        <td>${product.newProduct ? "Mới" : "Cũ"}</td>
                        <td>
                            <img src="${not empty product.images[0].imageUrl ? product.images[0].imageUrl : '/images/default-product.png'}"
                                 alt="Hình ảnh sản phẩm" style="width: 50px; height: 50px; object-fit: cover;" />
                        </td>
                        <td>
                            <button class="btn btn-trash" data-id="${product.idProduct}"><i class="fas fa-trash-alt"></i></button>
                            <a href="/web_war/manage-product/update-product?idProduct=${product.idProduct}" class="btn btn-edit">
                                <i class="fas fa-edit"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>

            </tbody>
        </table>
    </div>
</div>

<!-- Model Confirm -->
<div id="confirmModal" class="modal-confirm">
    <div class="modal-content">
        <h2>Cảnh báo</h2>
        <p>Bạn có chắc chắn là muốn xóa sản phẩm này?</p>
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
        $('#productTable').DataTable({
            paging: true,
            searching: true,
            info: true,
            lengthChange: true,
            order: [[1, 'asc']],
            columnDefs: [
                {orderable: false, targets: [0, 7]} // Vô hiệu hóa sắp xếp ở cột checkbox và tính năng
            ],
            language: {
                search: "Tìm kiếm:",
                lengthMenu: "Hiển thị _MENU_ dòng",
                info: "Hiển thị _START_ đến _END_ của _TOTAL_ dòng",
                paginate: {
                    first: "<i class='fas fa-angle-double-left'></i>",
                    last: "<i class='fas fa-angle-double-right'></i>",
                    next: "<i class='fas fa-angle-right'></i>",
                    previous: "<i class='fas fa-angle-left'></i>"
                }
            },
            drawCallback: function () {
                // Đảm bảo phần tử pagination được căn chỉnh lại khi vẽ lại bảng
                $('.dataTables_paginate').addClass('custom-pagination');
            }
        });
    });
</script>

<%@ include file="/partials/footer-admin.jsp" %>
