
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Đơn Hàng Của Tôi</title>
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          rel="stylesheet"
  />
  <link rel="stylesheet" href="../web/src/main/webapp/static/css/user.css" />
  <link rel="stylesheet" href="../web/src/main/webapp/static/css/header-nav-footer.css" />
  <link rel="stylesheet" href="../web/src/main/webapp/static/css/index.css" />
  <link
          rel="icon"
          type="image/png"
          sizes="32x32"
          href="../web/src/main/webapp/static/images/favicon.png"
  />
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
              src="../web/src/main/webapp/static/images/logo.png"
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
        <a href="./contact.html">Liên hệ với chúng tôi</a>
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
        <a href="../index.html">Trang Chủ</a>
        <div class="dropdown-menu">
          <!-- Thêm lớp cho Bé gái -->
          <div class="navheight">
            <a href="./be-gai.html">Bé gái</a>
            <!-- <ion-icon name="chevron-down-outline"></ion-icon> -->
          </div>
          <div class="dropdown dropdown-full">
            <!-- Dropdown cho Bé gái -->
            <div class="column">
              <h3>ĐẦM VÁY</h3>
              <a href="./tat-ca-dam-vay.html" class="menu-link"
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
          <a href="./gio-hang.html" class="cart-a"
          ><i class="fas fa-shopping-cart"></i
          ></a>
          <span class="badge">0</span>
        </div>
        <div class="user-menu">
          <i class="fas fa-user"></i>
          <div class="dropdown">
            <a class="menu-link" href="./dangnhap.html">Đăng nhập</a>
            <a class="menu-link" href="./dangki.html">Đăng ký</a>
          </div>
        </div>
        <!-- <div class="login-message-cart" id="loginMessageCart">
          Chưa có sản phẩm nào
        </div> -->
      </div>
    </div>
  </nav>
</section>
<section class="lichsumua">
  <div class="container">
    <div class="sidebar">
      <div class="profile">
        <img
                alt="Profile Picture"
                height="50"
                src="https://storage.googleapis.com/a1aa/image/lZk15YwRKq7TPlNFLTlCsBl5oIfUCHaFWr7XX6vQmSRZvK4JA.jpg"
                width="50"
        />
        <div>
          <div>DanhSieuCapVippro</div>
          <a href="./thong-tin-cua-toi.html">&emsp;Sửa Hồ Sơ </a>
        </div>
      </div>
      <ul class="menu">
        <!-- <li>
        <a href="#">
          <i class="fas fa-calendar-alt"> </i>

          <span style="color: red"> New </span>
        </a>
      </li> -->
        <li>
          <a href="./thong-tin-cua-toi.html">
            <i class="fas fa-user"> </i>
            Tài Khoản Của Tôi
          </a>
        </li>
        <li>
          <a class="active" href="./don-hang-cua-toi.html">
            <i class="fas fa-shopping-cart"> </i>
            Đơn Hàng Của Tôi
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-bell"> </i>
            Thông Báo
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-ticket-alt"> </i>
            Kho Voucher
          </a>
        </li>
        <!-- <li>
          <a href="#">
            <i class="fas fa-coins"> </i>
            Shopee Xu
          </a>
        </li> -->
      </ul>
    </div>
    <div class="content">
      <div class="tabs">
        <a class="active" href="#" data-tab="all"> Tất cả </a>
        <a href="#" data-tab="pending"> Chờ thanh toán </a>
        <a href="#" data-tab="shipping"> Vận chuyển </a>
        <a href="#" data-tab="waiting"> Chờ giao hàng </a>
        <a href="#" data-tab="completed"> Hoàn thành </a>
        <a href="#" data-tab="canceled"> Đã hủy </a>
        <a href="#" data-tab="return"> Trả hàng</a>
      </div>
      <div class="search-bar">
        <input
                placeholder="Bạn có thể tìm kiếm theo tên Shop, ID đơn hàng hoặc Tên Sản phẩm"
                type="text"
        />
      </div>

      <!-- Tab content for "Tất cả" -->
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">HOÀN THÀNH</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/10g.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Váy Bé Gái Màu Đỏ</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Mua Lại</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">HOÀN THÀNH</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/12.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Đồ Bộ Bé Trai</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Mua Lại</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">CHƯA THANH TOÁN</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/10g.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Váy Bé Gái Màu Đỏ</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Hủy Đơn Hàng</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <!-- Tab content for "Chờ giao hàng" -->
      <div class="cho-giao-hang" data-content="waiting">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang chờ giao hàng</p>
      </div>
      <!-- Tab content for "Vận chuyển" -->
      <div class="cho-van-chuyen" data-content="shipping">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang vận chuyển</p>
      </div>
      <!-- Tab content for "Hoàn thành" -->
      <div class="hoan-thanh" data-content="completed">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đã hoàn thành</p>
      </div>
      <!-- Tab content for "Đã hủy" -->
      <div class="da-huy" data-content="canceled">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đã hủy</p>
      </div>

      <!-- Tab content for "Chờ thanh toán" -->
      <div class="cho-thanh-toan" data-content="pending">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa có đơn hàng</p>
      </div>
      <!-- Tab content for "Trả hàng/Hoàn tiền" -->
      <div class="tra-hang-hoan-tien" data-content="return">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang được trả hoặc hoàn tiền</p>
      </div>
    </div>
  </div>
</section>
<!-- ====================================footer=============================== -->
<section class="section-footer">
  <div class="footer">
    <div class="footer-column">
      <img
              alt="Little Whale Logo"
              height="50"
              src="../web/src/main/webapp/static/images/logo.png"
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
      <a href="contact.html">Liên hệ với chúng tôi</a>
    </div>

    <div class="footer-column">
      <h3>HỖ TRỢ KHÁCH HÀNG</h3>
      <a href="./tracuudonhang.html">Tra cứu đơn hàng</a>
      <br />
      <a href="./chinhsachdoitra.html">Chính sách đổi trả hàng Online</a>
      <br />
      <a href="./chinhsachkhachangthanthiet.html"
      >Chính sách Khách hàng thân thiết</a
      >
      <br />
      <a href="./giaohang-phigiaohang.html"
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
<script src="../js/lichsumua.js"></script>
<script src="../js/scriptnav.js"></script>
</html>

