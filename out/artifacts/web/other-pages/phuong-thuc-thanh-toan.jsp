
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Phương thức thanh toán</title>
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          rel="stylesheet"
  />
  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
  />
  <link rel="stylesheet" href="../static/css/header-nav-footer.css" />
  <link rel="stylesheet" href="../static/css/phuong-thuc-thanh-toan.css" />
  <link rel="stylesheet" href="../static/css/index.css" />
</head>

<body>
<!-- HEADER -->

<section class="section-header hidden-search-bar" id="hiddenSearchBar">
  <div class="header">
    <div class="logo-header">
      <a href=""
      ><img
              alt="Company Logo"
              height="50"
              src="../static/images/logo.png"
              width="100"
      /></a>
    </div>
    <div class="search-bar-header">
      <input placeholder="Bạn cần tìm gì?" type="text" />
      <i class="fas fa-search"></i>
    </div>
    <div class="contact-info-header">
      <div class="icon-header">
        <i class="fas fa-phone-alt"></i>
      </div>
      <div class="text-header">
        <a href="../other-pages/contact.jsp">Liên hệ với chúng tôi</a>
      </div>
      <div class="icon-header">
        <i class="fas fa-file-alt"></i>
      </div>
      <div class="text-header">Kiểm tra đơn hàng</div>
    </div>
  </div>
</section>
<!-- =====================================Nav================================= -->
<section class="navigation">
  <nav>
    <!-- menu  -->
    <div class="navbar">
      <div class="menu">
        <a href="../index.jsp">Trang Chủ</a>
        <div class="dropdown-menu">
          <!-- Thêm lớp cho Bé gái -->
          <div class="navheight">
            <a href="../other-pages/be-gai.jsp">Bé gái</a>
            <!-- <ion-icon name="chevron-down-outline"></ion-icon> -->
          </div>
          <div class="dropdown dropdown-full">
            <!-- Dropdown cho Bé gái -->
            <div class="column">
              <h3>ĐẦM VÁY</h3>
              <a href="../other-pages/tat-ca-dam-vay.jsp" class="menu-link"
              >Tất cả Đầm váy</a
              >
              <a href="#" class="menu-link">Đầm ngắn tay</a>
              <a href="#" class="menu-link">Đầm dài tay</a>
              <a href="#" class="menu-link">Đầm hai dây</a>
              <a href="#" class="menu-link">Đầm sát nách</a>
              <a href="#" class="menu-link">Đầm Váy Elsa/Anna</a>
              <a href="#" class="menu-link">Đầm công chúa</a>
              <a href="#" class="menu-link">Chân váy</a>
              <a href="#" class="menu-link">Yếm bé gái</a>
            </div>
            <div class="column">
              <h3>ÁO</h3>
              <a href="#" class="menu-link">Tất cả Áo</a>
              <a href="#" class="menu-link">Áo thun</a>
              <a href="#" class="menu-link">Áo dài tay</a>
              <a href="#" class="menu-link">Áo khoác</a>
              <a href="#" class="menu-link">Áo nỉ</a>
              <a href="#" class="menu-link">Áo gile</a>
            </div>
            <div class="column">
              <h3>QUẦN</h3>
              <a href="#" class="menu-link">Tất cả quần</a>
              <a href="#" class="menu-link">Quần short</a>
              <a href="#" class="menu-link">Quần dài</a>
            </div>
            <div class="column">
              <h3>ĐỒ BỘ</h3>
              <a href="#" class="menu-link">Tất cả đồ bộ</a>
              <a href="#" class="menu-link">Bộ ngắn tay</a>
              <a href="#" class="menu-link">Bộ dài tay</a>
              <a href="#" class="menu-link">Bộ Easy Wear</a>
            </div>
            <div class="column">
              <h3>PHỤ KIỆN</h3>
              <a href="#" class="menu-link">Đồ Lót</a>
              <a href="#" class="menu-link">Balo/túi xách</a>
              <a href="#" class="menu-link">Phụ kiện tóc</a>
              <a href="#" class="menu-link">Giày dép</a>
              <a href="#" class="menu-link">Gấu bông</a>
              <a href="#" class="menu-link">Mũ nón</a>
              <a href="#" class="menu-link">Tất/vớ</a>
              <a href="#" class="menu-link">Bình nước</a>
            </div>
          </div>
        </div>
        <div class="dropdown-menu">
          <!-- Thêm lớp cho Bé gái -->
          <div class="navheight">
            <a href="#">Bé trai</a>
          </div>

          <div class="dropdown dropdown-full">
            <!-- Dropdown cho Bé gái -->
            <div class="column">
              <h3>Áo</h3>
              <a href="#" class="menu-link">Tất cả áo</a>
              <a href="#" class="menu-link">Áo thun ngắn tay</a>
              <a href="#" class="menu-link">Áo dài tay</a>
              <a href="#" class="menu-link">Áo sơ mi</a>
              <a href="#" class="menu-link">Áo khoác</a>
              <a href="#" class="menu-link">Áo nỉ</a>
              <a href="#" class="menu-link">Áo gile</a>
            </div>
            <div class="column">
              <h3>QUẦN</h3>
              <a href="#" class="menu-link">Tất cả quần</a>
              <a href="#" class="menu-link">Quần short</a>
              <a href="#" class="menu-link">Quần dài</a>
              <a href="#" class="menu-link">Quần yếm</a>
            </div>
            <div class="column">
              <h3>ĐỒ BỘ</h3>
              <a href="#" class="menu-link">Tất cả đồ bộ</a>
              <a href="#" class="menu-link">Bộ ngắn tay</a>
              <a href="#" class="menu-link">Bộ dài tay</a>
              <a href="#" class="menu-link">Bộ sát nách</a>
              <a href="#" class="menu-link">Bộ Easy Wear</a>
            </div>
            <div class="column">
              <h3>PHỤ KIỆN</h3>
              <a href="#" class="menu-link">Đồ Lót</a>
              <a href="#" class="menu-link">Giày dép</a>
              <a href="#" class="menu-link">Balo</a>
              <a href="#" class="menu-link">Mũ nón</a>
              <a href="#" class="menu-link">Tất/vớ</a>
              <a href="#" class="menu-link">Bình nước</a>
            </div>
            <div class="column">
              <h3>&nbsp;</h3>
            </div>
          </div>
        </div>
        <div class="dropdown-menu">
          <div class="navheight"><a href="#">Bộ sưu tập</a></div>
          <div class="dropdown-1">
            <!-- Dropdown cho Bé gái -->
            <div class="column">
              <!-- <h3>Áo</h3> -->
              <a class="menu-link" href="#">🌼Bộ Sưu Tập Mùa Xuân</a>
              <a class="menu-link" href="#">✨Bộ Sưu Tập Mùa Hạ</a>
              <a class="menu-link" href="#">🍂Bộ Sưu Tập Mùa Thu</a>
              <a class="menu-link" href="#">🏠Bộ Sưu Tập Mùa Đông</a>
            </div>
          </div>
        </div>

        <div class="dropdown-menu">
          <div class="navheight"><a href="#">Giảm Giá Sốc</a></div>
          <!-- <div class="dropdown-2">
            <div class="column"></div>
          </div> -->
        </div>
        <div class="dropdown-menu">
          <div class="navheight"><a href="#">Hàng Mới Về</a></div>
          <div class="dropdown-3">
            <!-- Dropdown cho Sale -->
            <div class="column">
              <!-- <h3>Áo</h3> -->
              <a class="menu-link" href="#">Hàng Mới Về Bé gái</a>
              <a class="menu-link" href="#">Hàng Mới Về Bé trai</a>
              <a class="menu-link" href="#">Bán Chạy Nhất</a>
            </div>
          </div>
        </div>
        <div class="dropdown-menu">
          <div class="navheight"><a href="#">Tin Tức</a></div>
          <div class="dropdown-4">
            <!-- Dropdown cho Sale -->
            <div class="column">
              <!-- <h3>Áo</h3> -->
              <a class="menu-link" href="#">Tin tức Little Whale</a>
              <a class="menu-link" href="#">Khuyến mãi</a>
              <a class="menu-link" href="#">Tin mẹ & bé</a>
            </div>
          </div>
        </div>
      </div>

      <div class="icons">
        <!-- <input type="text" placeholder="Tìm kiếm sản phẩm"> -->
        <i class="fas fa-search"></i>
        <!-- Biểu tượng người dùng với menu đăng nhập/đăng ký -->

        <div class="cart" id="cart">
          <a href="../other-pages/gio-hang.jsp" class="cart-a"
          ><i class="fas fa-shopping-cart"></i
          ></a>
          <span class="badge">0</span>
        </div>
        <div class="user-menu">
          <i class="fas fa-user"></i>
          <div class="dropdown">
            <a class="menu-link" href="../other-pages/dangnhap.jsp">Đăng nhập</a>
            <a class="menu-link" href="../other-pages/dangki.jsp">Đăng ký</a>
          </div>
        </div>
        <!-- <div class="login-message-cart" id="loginMessageCart">
          Chưa có sản phẩm nào
        </div> -->
      </div>
    </div>
  </nav>
</section>
<!-- =====================================container================================= -->
<div class="container">
  <h1>Little Whale</h1>
  <div class="breadcrumb">
    <a href="./gio-hang.jsp">Giỏ hàng</a> &gt;
    <a href="./Thong-tin-giao-hang.jsp">Thông tin giao hàng</a> &gt;
    <a href="./phuong-thuc-thanh-toan.jsp">Phương thức thanh toán</a>
  </div>
  <div class="shipping-method">
    <div class="section-title">Phương thức vận chuyển</div>
    <div class="method-option">
      <input checked name="shipping" type="radio" />
      Giao hàng tận nơi (3-5 ngày) <span>25,000đ</span>
    </div>
  </div>
  <div class="payment-method">
    <div class="section-title">Phương thức thanh toán</div>
    <div class="method-option">
      <input checked name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/pWAzKzYnOfVKaCG5Wll77fSf75o14AaVUnpaCffFdOBHIzceE.jpg"
              alt="COD icon"
              width="20"
              height="20"
      />
      Thanh toán khi giao hàng (COD)
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/zCVkqX9qIoZ8KxNf4gbkNaeK539oiafV7bKoHClueKoQkZOPB.jpg"
              alt="Bank transfer icon"
              width="20"
              height="20"
      />
      Chuyển khoản ngân hàng - Vietcombank
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/3yHicwn0iu42IJXzU0pAd1tT4kPdI89cBQNyrt3eSvxfYmzTA.jpg"
              alt="VNPay icon"
              width="20"
              height="20"
      />
      TT VNPay (ATM/Visa/MasterCard/JCB/QR Pay)
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/Cbhgjr2miVpzLlHJkcMYRb4pecXujAefvUKoijflEoELkZOPB.jpg"
              alt="MoMo icon"
              width="20"
              height="20"
      />
      TT qua ví MoMo
    </div>
  </div>
  <button class="complete-order" id="save-btn">Hoàn tất đơn hàng</button>
  <!-- Modal -->
  <div class="modal-overlay" id="success-modal" style="display: none">
    <div class="modal-content">
      <div class="modal-icon">
        <i class="fa-solid fa-circle-check"></i>
      </div>
      <p>Bạn đã thanh toán thành công nhé!</p>
      <button type="button" class="btn-close" id="close-modal">Đóng</button>
    </div>
  </div>
</div>
<!-- <div class="summary">
<div class="item">
  <img src="https://storage.googleapis.com/a1aa/image/Av4FnLABNfXraSr5P2Mp0TYVlID0KeEDjJB2fr7Apv1GyMnnA.jpg" alt="Product image" width="50" height="50" />
  <div class="item-details">
    <p>Đầm váy ren dài tay bé gái Rabity 92726</p>
    <p>Xanh rêu / 10Y-27-31kg</p>
    <p>116,700đ</p>
  </div>
</div>
<div class="discount-code">
  <input type="text" placeholder="Mã giảm giá" />
  <button>Sử dụng</button>
</div>
<a class="discount-link" href="#">Xem thêm mã giảm giá</a>
<div class="discount-amount">Giảm 50,000đ</div>
<div class="totals">
  <p>Tạm tính: 116,700đ</p>
  <p>Phí vận chuyển: 25,000đ</p>
  <p class="total-amount">Tổng cộng: VND 141,700đ</p>
</div>
</div> -->
<!-- ====================================footer=============================== -->
<section class="section-footer">
  <div class="footer">
    <div class="footer-column">
      <img
              alt="Little Whale Logo"
              height="50"
              src="../static/images/logo.png"
              width="100"
      />
      <p>
        Little Whale là thương hiệu thời trang trẻ em hàng đầu Việt Nam với
        hơn 60 showroom trên toàn quốc, mang đến cho bé những bộ quần áo
        thoải mái cho bé "tự do khám phá" thế giới và trải nghiệm niềm vui
        mỗi ngày.
      </p>
      <h3>ĐĂNG KÝ NHẬN TIN</h3>
      <div class="subscribe">
        <input placeholder="Nhập địa chỉ email" type="email" />
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
      <br />
      <a href="#">Tin tức Little Whale</a>
      <br />
      <a href="../other-pages//contact.jsp">Liên hệ với chúng tôi</a>
    </div>

    <div class="footer-column">
      <h3>HỖ TRỢ KHÁCH HÀNG</h3>
      <a href="../other-pages//tracuudonhang.jsp">Tra cứu đơn hàng</a>
      <br />
      <a href="../other-pages//chinhsachdoitra.jsp"
      >Chính sách đổi trả hàng Online</a
      >
      <br />
      <a href="../other-pages//chinhsachkhachangthanthiet.jsp"
      >Chính sách Khách hàng thân thiết</a
      >
      <br />
      <a href="../other-pages//giaohang-phigiaohang.jsp"
      >Giao hàng &amp; phí giao hàng</a
      >
      <br />
      <a href="#">Hướng dẫn chọn size</a>
      <br />
      <a href="#">Chính sách bảo mật thông tin</a>
      <br />
      <a href="#">Chính sách đại lý</a>
    </div>

    <div class="footer-column">
      <h3>CÔNG TY TNHH Little Whale</h3>
      <p>Địa chỉ:</p>
      <p>khu phố 6, Thủ Đức, Hồ Chí Minh</p>
      <p>
        Văn phòng phía Nam: Số 33 đường 12A Khu Đô Thị Lake View City, Bình
        Trưng Đông, Quận 2, TP HCM
      </p>
      <p>Điện thoại: 0969 969 969</p>
      <p>Email: cskh@littleWhale</p>
    </div>
  </div>
</section>
</body>

<script src="../static/js/scriptnav.js"></script>
<script src="../static/js/thong-tin-cua-toi.js"></script>
</html>
