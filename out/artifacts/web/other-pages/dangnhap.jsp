
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Nhập </title>
  <link rel="stylesheet" href="../static/css/dangnhap.css">
  <link rel="stylesheet" href="../static/css/header-nav-footer.css">
  <link rel="stylesheet" href="../static/css/index.css">
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          rel="stylesheet"
  />
  <link rel="icon" type="image/png" sizes="32x32" href="../static/images/favicon.png">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body >
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
<div class="login-container">

  <div>
    <div class="logo">

    </div>
    <div class="register">
      <div>Đăng nhập tài khoản</div>
      <p>Đăng nhập để truy cập tất cả các tính năng của dịch vụ chúng tôi. Quản lý doanh nghiệp của bạn ở một nơi. Hoàn toàn miễn phí.</p>
      <div class="social">
        <a data-toggle="tooltip" title="Facebook" href=""><i class="fab fa-facebook-f"></i></a>
        <a data-toggle="tooltip" title="Google" href=""><i class="fab fa-google"></i></a>
        <a data-toggle="tooltip" title="Github" href=""><i class="fab fa-github"></i></a>
      </div>
    </div>
  </div>

  <div class="form-login">
    <form action="" method="POST" class="form" id="form-2">
      <h3 class="heading">Đăng Nhập</h3>

      <div class="form-group">
        <label for="email" class="form-label">Tên tài khoản hoặc Email</label>
        <input id="email" name="email" type="text" placeholder="Nhập tên tài khoản hoặc Email" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="password" class="form-label">Mật khẩu</label>
        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group f-term">
        <label for="agree" class="form-label">Quên mật khẩu? Nhấn vào <a href="./quentk.jsp">đây</a></label>
        <span class="form-message"></span>
      </div>

      <div class="sign-up">
        <div class="dangnhap">
          <a href="./index-user.jsp" >Đăng nhập</a>
        </div>
        <div class="dangki">
          <a href="dangki.jsp">Đăng kí tại đây</a>
        </div>

      </div>
      <div class="form-icon">
        <p>Hoặc đăng nhập bằng </p>
        <div class="button_icon ">
          <a href="#" class="login-button google-login"><i class="fab fa-google-plus-g"></i>Đăng nhập Google</a>
          <a href="#" class="login-button facebook-login"><i class="fab fa-facebook-f"></i></i>Đăng nhập Facebook</a>
        </div>
      </div>


    </form>

  </div>

</div>
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
        Rabity là thương hiệu thời trang trẻ em hàng đầu Việt Nam với hơn 60
        showroom trên toàn quốc, mang đến cho bé những bộ quần áo thoải mái
        cho bé "tự do khám phá" thế giới và trải nghiệm niềm vui mỗi ngày.
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
      <h3>VỀ RABITY</h3>
      <a href="#">Giới thiệu về Rabity</a>
      <br />
      <a href="#">Tin tức Rabity</a>
    </div>

    <div class="footer-column">
      <h3>HỖ TRỢ KHÁCH HÀNG</h3>
      <a href="./tracuudonhang.jsp">Tra cứu đơn hàng</a>
      <br />
      <a href="./chinhsachdoitra.jsp">Chính sách đổi trả hàng Online</a>
      <br />
      <a href="./chinhsachkhachangthanthiet.jsp">Chính sách Khách hàng thân thiết</a>
      <br />
      <a href="./giaohang-phigiaohang.jsp">Giao hàng &amp; phí giao hàng</a>
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
      <p>
        Văn phòng phía Bắc: VQCR+GP6, khu phố 6, Thủ Đức, Hồ Chí Minh
      </p>
      <p>
        Văn phòng phía Nam: Số 33 đường 12A Khu Đô Thị Lake View City, Bình
        Trưng Đông, Quận 2, TP HCM
      </p>
      <p>Điện thoại: 1900633520</p>
      <p>Email: cskh@littleWhale</p>
    </div>
  </div>
</section>


<!-- <script src="validate.js"></script>

<script>
   // Select all elements with data-toggle="tooltips" in the document
   $('[data-toggle="tooltip"]').tooltip();

   // Select a specified element
   // $('#myTooltip').tooltip();


 document.addEventListener('DOMContentLoaded', function () {
   // Mong muốn của chúng ta
   Validator({
     form: '#form-1',
     formGroupSelector: '.form-group',
     errorSelector: '.form-message',
     rules: [
       Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ của bạn'),
       Validator.isEmail('#email'),
       Validator.minLength('#password', 6),
       Validator.isRequired('#password_confirmation'),
       Validator.isConfirmed('#password_confirmation', function () {
         return document.querySelector('#form-1 #password').value;
       }, 'Mật khẩu nhập lại không chính xác')
     ],
     onSubmit: function (data) {
       // Call API
       console.log(data);
     }
   });


   Validator({
     form: '#form-2',
     formGroupSelector: '.form-group',
     errorSelector: '.form-message',
     rules: [
       Validator.isEmail('#email'),
       Validator.minLength('#password', 6),
     ],
     onSubmit: function (data) {
       // Call API
       console.log(data);
     }
   });
 });

</script> -->

</body>
<script src="../static/js/scriptnav.js"></script>
</html>
