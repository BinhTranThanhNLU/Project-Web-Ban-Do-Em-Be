
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Giỏ hàng" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'index.css', 'gio-hang.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- ====================================cart=============================== -->
<section class="cart-gio-hang">
    <!-- <div class="container-cart ">
            <div class="cart-top-wrap">
                <div class="cart-top">
                    <div class="cart-top-cart cart-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="cart-top-address cart-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="cart-top-payment cart-top-item">
                        <i class="fas fa-money-check-alt"></i>
                    </div>
                </div>

            </div>


        </div> -->
    <div class="container-cart">
        <div class="cart-container-cart">
            <div class="cart-container-left">
                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Màu</th>
                        <th>Kích Cỡ</th>
                        <th>Số Lượng</th>
                        <th>Thành Tiền</th>
                        <th>Xoá</th>
                    </tr>
                    <c:forEach var="item" items="${sessionScope.cart.items}">
                        <tr>
                            <td>
                                <img src="${item.productVariant.product.images[0].imageUrl}"
                                     alt="${item.productVariant.product.title}"
                                     style="width: 100px; height: 100px; object-fit: cover;"/>
                            </td>
                            <td>${item.productVariant.product.title}</td>
                            <td>${item.productVariant.color.name}</td>
                            <td>${item.productVariant.size.name}</td>
                            <td>
                                <input type="number"
                                       value="${item.quantity}"
                                       min="1"
                                       onchange="updateCart(${item.productVariant.idVariant}, this.value)" />
                            </td>
                            <td>${item.totalPrice}</td>
                            <td>
                                <button onclick="removeFromCart(${item.productVariant.idVariant})"
                                        style="background: none; border: none; color: red; cursor: pointer;">
                                    <i class="fas fa-times"></i>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div class="cart-container-right">
                <table>
                    <tr>
                        <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                    </tr>
                    <tr>
                        <td>TỔNG SẢN PHẨM</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>TỔNG TIỀN HÀNG</td>
                        <td>
                            <p>0<sup>đ</sup></p>
                        </td>
                    </tr>
                    <tr>
                        <td>TẠM TÍNH</td>
                        <td>
                            <p style="color: red; font-weight: bold">
                                0 <sup>đ</sup>
                            </p>
                        </td>
                    </tr>
                </table>
                <div class="cart-container-right-button">
                    <a href="/web_war/other-pages/thong-tin-giao-hang.html" class="btn-payment">THANH TOÁN</a>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    function updateCart(productVariantId, quantity) {
        if (quantity < 1) {
            alert('Số lượng phải lớn hơn 0');
            return;
        }
        fetch('/web_war/giohang', {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({productVariantId, quantity})
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Cập nhật giỏ hàng thành công!');
                    location.reload(); // Tải lại trang để cập nhật giỏ hàng
                } else {
                    alert('Cập nhật thất bại: ' + (data.message || 'Không rõ nguyên nhân'));
                }
            })
            .catch(error => {
                alert('Đã xảy ra lỗi khi cập nhật giỏ hàng!');
                console.error(error);
            });
    }
    function removeFromCart(productVariantId) {
        if (confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?')) {
            fetch('/web_war/giohang', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ productVariantId })
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Xóa sản phẩm thành công!');
                        location.reload(); // Tải lại trang để cập nhật giỏ hàng
                    } else {
                        alert('Xóa thất bại: ' + (data.message || 'Không rõ nguyên nhân'));
                    }
                })
                .catch(error => {
                    alert('Đã xảy ra lỗi khi xóa sản phẩm!');
                    console.error(error);
                });
        }
    }
</script>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

