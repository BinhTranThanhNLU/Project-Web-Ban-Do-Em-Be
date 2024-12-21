<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- ====================================footer=============================== -->
<section class="section-footer">
    <div class="footer">
        <div class="footer-column">
            <img
                    alt="Little Whale Logo"
                    height="50"
                    src="./images/logo.png"
                    width="100"
            />
            <p>
                Little Whale là thương hiệu thời trang trẻ em hàng đầu Việt Nam với hơn 60
                showroom trên toàn quốc, mang đến cho bé những bộ quần áo thoải mái
                cho bé "tự do khám phá" thế giới và trải nghiệm niềm vui mỗi ngày.
            </p>
            <h3>ĐĂNG KÝ NHẬN TIN</h3>
            <div class="subscribe">
                <input placeholder="Nhập địa chỉ email" type="email"/>
                <button>Đăng ký</button>
            </div>
            <div class="social-icons">
                <a href="#">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="#">
                    <i class="fab fa-tiktok"></i>
                </a>
            </div>
        </div>

        <div class="footer-column">
            <h3>VỀ Little Whale</h3>
            <a href="#">Giới thiệu về Little Whale</a>
            <br/>
            <a href="#">Tin tức Little Whale</a>
            <br/>
            <a href="/web_war/other-pages//contact.jsp">Liên hệ với chúng tôi</a>
        </div>

        <div class="footer-column">
            <h3>HỖ TRỢ KHÁCH HÀNG</h3>
            <a href="/web_war/other-pages/tracuudonhang.jsp">Tra cứu đơn hàng</a>
            <br/>
            <a href="/web_war/other-pages/chinhsachdoitra.jsp">Chính sách đổi trả hàng Online</a>
            <br/>
            <a href="/web_war/other-pages/chinhsachkhachangthanthiet.jsp">Chính sách Khách hàng thân thiết</a>
            <br/>
            <a href="/web_war/other-pages/giaohang-phigiaohang.jsp">Giao hàng &amp; phí giao hàng</a>
            <br/>
            <a href="#">Hướng dẫn chọn size</a>
            <br/>
            <a href="#">Chính sách bảo mật thông tin</a>
            <br/>
            <a href="#">Chính sách đại lý</a>
        </div>

        <div class="footer-column">
            <h3>CÔNG TY TNHH Little Whale</h3>
            <p>Địa chỉ:</p>
            <p>
                khu phố 6, Thủ Đức, Hồ Chí Minh
            </p>
            <p>
                Văn phòng phía Nam: Số 33 đường 12A Khu Đô Thị Lake View City, Bình
                Trưng Đông, Quận 2, TP HCM
            </p>
            <p>Điện thoại: 0969 969 969</p>
            <p>Email: cskh@littleWhale</p>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

<!-- JavaScript riêng cho từng trang -->
<c:if test="${not empty pageJsList}">
    <c:forEach var="jsFile" items="${pageJsList}">
        <script src="${pageContext.request.contextPath}/static/js/${jsFile}"></script>
    </c:forEach>
</c:if>

</body>
</html>
