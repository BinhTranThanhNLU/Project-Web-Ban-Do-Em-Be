<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Chi tiết sản phẩm"/>
<c:set var="pageCssList" value="${['header-nav-footer.css', 'chi-tiet-san-pham.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js', 'interaction-chi-tiet-san-pham.js']}"/>


<%@ include file="/partials/header-nav.jsp" %>

<!-- Thanh dieu huong bread-crumb -->
<section class="bread-crumb">
    <span class="crumb-border"></span>
    <div class="bread-crumb-container">
        <div class="bread-crumb-row">
            <ul class="breadcrumb">
                <li>
                    <a href="/" target="_self"><span>Trang chủ</span></a>
                    <span class="">&nbsp;/&nbsp;</span>
                </li>

                <li>
                    <a href="/web_war/other-pages/be-gai.jsp" itemprop="url" target="_self"
                    ><span itemprop="title">Thời Trang Bé Gái</span></a
                    >
                    <span class="">&nbsp;/&nbsp;</span>
                </li>

                <li>
                    <a href="/web_war/other-pages/tat-ca-dam-vay.jsp" itemprop="url" target="_self"
                    ><span itemprop="title">Đầm-Váy Bé Gái</span></a
                    >
                    <span class="">&nbsp;/&nbsp;</span>
                </li>
            </ul>
        </div>
    </div>
</section>

<!-- Product And Infor -->
<section class="product-section">
    <div class="product-page">
        <div class="product-slider"
             style="width: 800px; height: 600px; position: relative; overflow: hidden; margin: 0 auto;">
            <div class="slider-container"
                 style="display: flex; transition: transform 0.5s ease-in-out; width: 100%; height: 100%;">
                <!-- Lặp qua danh sách hình ảnh -->
                <c:forEach var="image" items="${product.images}">
                    <div class="slider-item" style="flex: 0 0 100%; width: 100%; height: 100%; box-sizing: border-box;">
                        <img
                                src="${image.imageUrl}"
                                alt="${product.title}"
                                style="width: 100%; height: 100%; object-fit: cover;"
                        />
                    </div>
                </c:forEach>
            </div>
            <!-- Nút điều hướng -->
            <button class="prev" onclick="changeSlide(-1)"
                    style="position: absolute; top: 50%; left: 10px; transform: translateY(-50%); background-color: rgba(0, 0, 0, 0.5); color: white; border: none; padding: 10px; cursor: pointer; z-index: 10;">
                <i class="fas fa-chevron-left"></i>
            </button>
            <button class="next" onclick="changeSlide(1)"
                    style="position: absolute; top: 50%; right: 10px; transform: translateY(-50%); background-color: rgba(0, 0, 0, 0.5); color: white; border: none; padding: 10px; cursor: pointer; z-index: 10;">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>

        <div class="product-info">
            <div class="name-id-price">
                <h2>${product.title}</h2>
                <p>Mã sản phẩm: <span id="id-product">${product.idProduct}</span></p>
                <div class="progress-bar-container">
                    <progress id="sales-progress" value="200" max="200"></progress>
                </div>
                <div class="price-container">
                    <p class="current-price">
                        Giá tiền: <fmt:formatNumber value="${product.discountedPrice}" type="number" pattern="###,###"/>đ
                    </p>
                    <p class="original-price">
                        <fmt:formatNumber value="${product.price}" type="number" pattern="###,###"/>đ
                    </p>
                    <span class="discount-badge">${product.discount}</span>
                </div>
            </div>

            <!-- Màu sắc -->
            <div class="color-select" style="margin-bottom: 20px;">
                <label for="color" style="font-size: 16px; color: #333;">Màu sắc:</label>
                <select id="color" name="color">
                    <c:forEach var="color" items="${product.colors}">
                        <option value="${color.idColor}">${color.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="size-options">
                <label>Kích thước:</label>
                <select id="size" name="size">
                    <c:forEach var="size" items="${product.sizes}">
                        <option value="${size.idSize}">${size.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="promotion-box">
                <h3><i class="fas fa-gift"></i> ƯU ĐÃI ĐỘC QUYỀN 11.11</h3>
                <ul>
                    <li>Miễn phí vận chuyển toàn quốc đơn từ 0₫</li>
                    <li>
                        Voucher giảm 30K (đơn từ 699K) và Voucher giảm 60K (đơn từ 800K)
                    </li>
                    <li>Sale up to 70% hàng loạt siêu phẩm đồ thu đông giá tốt</li>
                    <li>Tặng bé SET STICKER hình dán siêu cưng cho mọi đơn hàng</li>
                    <li>
                        <strong>Lưu ý:</strong> Được áp dụng đồng thời các CTKM (bao gồm
                        hàng nguyên giá và sale)
                    </li>
                </ul>
            </div>

            <div class="quantity">
                <label>Số lượng:</label>
                <div class="quantity-controls">
                    <button class="quantity-btn" onclick="decreaseQuantity()">
                        <i class="fa-solid fa-minus"></i>
                    </button>
                    <input type="number" id="quantity" name="quantity" value="1" min="1"/>
                    <button class="quantity-btn" onclick="increaseQuantity()">
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <button class="add-to-cart">THÊM VÀO GIỎ</button>
            </div>

            <div class="action-buttons">
                <a href="/web_war/other-pages/thong-tin-giao-hang.jsp" class="buy-now">MUA NGAY</a>
            </div>

            <div class="product-description">
                <div class="description-header" onclick="toggleDescription()">
                    <h3>Mô tả sản phẩm</h3>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="description-content">
                    <p>
                        ${product.description}
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    let currentIndex = 0;

    function changeSlide(direction) {
        const sliderContainer = document.querySelector('.slider-container');
        const totalSlides = sliderContainer.children.length;

        // Tính toán chỉ số slide mới
        currentIndex = (currentIndex + direction + totalSlides) % totalSlides;

        // Dịch chuyển slider
        sliderContainer.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

</script>

<!-- FOOTER -->
<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

