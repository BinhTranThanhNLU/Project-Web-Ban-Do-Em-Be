
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bé Gái</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
  <link rel="stylesheet" href="../static/css/header-nav-footer.css">
  <link rel="stylesheet" href="../static/css/be-gai.css">
  <link rel="stylesheet" href="../static/css/card-product.css">
  <link rel="icon" type="image/png" sizes="32x32" href="../static/images/favicon.png">
</head>

<body>
<!-- HEADER -->
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
        <a href="index.jsp">Trang Chủ</a>
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
          <a href="../other-pages/be-gai.jsp" itemprop="url" target="_self"><span itemprop="title">Thời Trang Bé Gái</span></a>
          <span class="">&nbsp;/&nbsp;</span>
        </li>

      </ul>
    </div>
  </div>
</section>

<!-- IMAGE -->
<section class="dbg-header-image">
  <div class="header-image">
    <img src="https://file.hstatic.net/1000290074/collection/kvblackfireday_begai_1e777bc17d8b42ac8e89039400469fcd.jpg"
         width="1410" height="183" alt="Đầm - Váy Bé Gái">
  </div>
</section>

<!-- PRODUCTS -->

<section class="wrap-background">
  <div class="container-wrap-background">
    <div class="bg-collection">
      <div class="coll-head">
        <h1 class="title_page">
          Thời Trang Bé Gái </h1>
        <div class="coll-sortby">
          <div class="sortPagiBar">
            <div class="sort-cate clearfix">
              <div id="sort-by">
                <label class="left">
                  <span class="">Sắp xếp: </span>
                </label>
                <select class="content_ul" onchange="sortby(this)">
                  <option data-sort="manual" data-sortnew="manual" value="manual">Mặc định</option>
                  <option data-sort="name:asc" data-sortnew="title-ascending" value="alpha-asc">Tên A → Z</option>
                  <option data-sort="name:desc" data-sortnew="title-descending" value="alpha-desc">Tên Z → A</option>
                  <option data-sort="price_min:asc" data-sortnew="price-ascending" value="price-asc">Giá tăng dần
                  </option>
                  <option data-sort="price_min:desc" data-sortnew="price-descending" value="price-desc">Giá giảm dần
                  </option>
                  <option data-sort="created_on:desc" data-sortnew="created-descending" value="created-desc">Hàng mới
                  </option>
                </select>
              </div>
            </div>
          </div>
          <div id="open-filters" class="btn open-filters d-lg-none d-block p-0">
            <i class="fa fa-filter"></i>
            <span>Lọc</span>
          </div>
        </div>
      </div>

      <div class="container-filter-products">
        <!-- Lọc và sản phẩm -->
        <div class="container-filter" style="margin-bottom: 500px;">
          <!-- Filter Sidebar -->
          <div class="filters">
            <div class="filter-item">
              <div class="filter-color">
                <h3>Màu Sắc</h3>
                <label><input type="radio" name="color" /> GR.COR/Hồng</label>
                <label><input type="radio" name="color" /> GR.COR/Vàng</label>
                <label><input type="radio" name="color" /> GR.COR/Xanh</label>
                <label><input type="radio" name="color" /> GR.COR/Kem</label>
                <label><input type="radio" name="color" /> GR.COR/Trắng</label>
                <label><input type="radio" name="color" /> GR.COR/Tím</label>
                <label><input type="radio" name="color" /> GR.COR/Nâu than</label>
                <label><input type="radio" name="color" /> GR.COR/Xám</label>
                <label><input type="radio" name="color" /> GR.COR/Đen</label>
                <label><input type="radio" name="color" /> GR.COR/Cam</label>
                <label><input type="radio" name="color" /> GR.COR/Đỏ</label>
                <label><input type="radio" name="color" /> GR.COR/Ghi</label>
              </div>
              <button class="collapse-btn">Thu gọn <i class="fa-solid fa-chevron-up"></i></button>
            </div>

            <div class="filter-item">
              <div class="filter-price">
                <h3>Mức Giá</h3>
                <label><input type="checkbox" /> Giá dưới 100,000₫</label>
                <label><input type="checkbox" /> 100,000₫ - 200,000₫</label>
                <label><input type="checkbox" /> 200,000₫ - 300,000₫</label>
                <label><input type="checkbox" /> 300,000₫ - 400,000₫</label>
                <label><input type="checkbox" /> Giá trên 500,000₫</label>
              </div>
              <button class="collapse-btn">Thu gọn <i class="fa-solid fa-chevron-up"></i></button>
            </div>

            <div class="filter-item">
              <div class="filter-type">
                <h3>Loại</h3>
                <label><input type="checkbox" /> Sơ sinh khác</label>
                <label><input type="checkbox" /> Đầm váy</label>
                <label><input type="checkbox" /> Chân váy</label>
                <label><input type="checkbox" /> Đầm váy Elsa</label>
              </div>
            </div>

            <div class="filter-item">
              <div class="filter-size">
                <h3>Kích thước</h3>
                <label><input type="checkbox" /> 1Y 9-11kg</label>
                <label><input type="checkbox" /> 2Y 11-12kg</label>
                <label><input type="checkbox" /> 3Y 12-13kg</label>
                <label><input type="checkbox" /> 4Y 14-16kg</label>
                <label><input type="checkbox" /> 5Y 17-19kg</label>
                <label><input type="checkbox" /> 6Y 19-21kg</label>
                <label><input type="checkbox" /> 7Y 21-23kg</label>
                <label><input type="checkbox" /> 8Y 23-25kg</label>
                <label><input type="checkbox" /> 9Y 25-27kg</label>
                <label><input type="checkbox" /> 10Y 27-31kg</label>
                <label><input type="checkbox" /> 11Y 31-33kg</label>
                <label><input type="checkbox" /> 12Y 33-35kg</label>
              </div>
              <button class="collapse-btn">Thu gọn <i class="fa-solid fa-chevron-up"></i></button>
            </div>
          </div>
        </div>

        <!-- Products List -->

        <div class="container-products">
          <!-- Row 1 -->
          <div class="row">
            <!-- Product 1 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 2 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 3 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 4 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Row 2 -->
          <div class="row">
            <!-- Product 1 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 2 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 3 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 4 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Row 3 -->
          <div class="row">
            <!-- Product 1 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 2 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 3 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Product 4 -->
            <div class="col-card">
              <div class="card">
                <div class="image-container">
                  <div class="first">
                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                  </div>
                  <div class="sale-badge">-20%</div>
                  <img src="../static/images/1g.jpg"
                       class="thumbnail-image">
                </div>

                <div class="product-detail-container">
                  <div class="product-info">
                    <h5 class="dress-name">áo em bé gái</h5>
                    <div class="price-container">
                      <span class="new-price">400.000d</span>
                      <small class="old-price">500.000d</small>
                    </div>
                  </div>
                  <div class="rating-purchase">
                    <div class="rating">
                      <i class="fa-solid fa-star"></i>
                      <span class="rating-number">4.8</span>
                    </div>
                    <button class="buy-btn">Thêm</button>
                    <a href="../other-pages/chi-tiet-san-pham.jsp" class="details-btn">Chi tiết</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- PageNav -->
<div class="container-pagenav">
  <nav class="nav_pagi">
    <ul class="pagination">
      <li class="page-item disabled"><a class="page-link" href="#"><i class="fa-solid fa-angle-left"></i></a></li>
      <li class="page-item active"><a class="page-link" href="javascript:;">1</a></li>
      <li class="page-item"><a class="page-link" href="">2</a></li>
      <li class="page-item"><a class="page-link" href="">3</a></li>
      <li class="page-item"><a class="page-link" href="">4</a></li>
      <li class="page-item"><a class="page-link" href="">5</a></li>
      <li class="page-item"><a class="page-link" href="">6</a></li>
      <li class="page-item"><a class="page-link" href=""><i class="fa-solid fa-angle-right"></i></a></li>
    </ul>
  </nav>
</div>

<!-- Container-description -->
<section class="container-description">
  <div class="description-content">
    <p>
      <span>Little Whale</span> là một thương hiệu thời trang trẻ em hàng đầu Việt Nam với chất lượng cao cấp, đa dạng mẫu mã,
      màu
      sắc và phong cách với hệ thống cửa hàng phủ sóng trên toàn quốc,
      mang đến cho bé những bộ quần áo thoải mái, "tự do khám phá" thế giới và trải nghiệm niềm vui mỗi ngày, với hàng
      loạt
      mẫu mới được các mẹ vô cùng săn đón.
      Đặc biệt những mẫu quần áo thời trang bé gái luôn là dòng sản phẩm vô cùng bán chạy tại nhà Thỏ.
    </p>

    <div class="body-content">
      <h2>1. Thời trang bé gái tại Little Whale có những dòng sản phẩm hot nào?</h3>
        <p>Với sự phong phú và sáng tạo trong thời trang trẻ em, Little Whale đã cho ra mắt đa dạng dòng sản phẩm từ áo quần,
          đầm váy đến phụ kiện. Do đó, ba mẹ có thể dễ dàng tìm ra những bộ trang phục dành cho bé gái phù hợp với phong
          cách và sở thích riêng của bé nhà mình. Dưới đây là một số BST đang rất được ưa chuộng tại hệ thống bán lẻ
          Little Whale:</p>
        <ul>
          <li><span class="highlight">Đầm, váy:</span> Chúng không chỉ là một item làm đẹp mà còn giúp bé gái đáng yêu
            và dịu dàng. Các sản phẩm váy đầm đầy màu sắc, dễ thương phù hợp với các bé gái ở mọi lứa tuổi.</li>
          <li><span class="highlight">Quần áo bộ:</span> Các thiết kế đồ bộ trẻ em của Little Whale mang lại sự thoải mái khi
            vận động. Đây cũng là sản phẩm không thể thiếu trong bất kỳ BST nào dành cho các bé gái vì sự dễ thương và
            phù hợp với mọi tình huống.</li>
          <li><span class="highlight">Quần legging, quần jean:</span> Little Whale cung cấp đa dạng mẫu quần cho bé gái từ
            quần short đến quần dài với kiểu dáng thời trang và chất liệu vải thoáng mát, thoải mái khi vận động.</li>
          <li><span class="highlight">Áo phông, áo thun:</span> Các mẫu áo thun với họa tiết dễ thương và đa dạng màu
            sắc được thiết kế phù hợp cho mọi lứa tuổi. Áo thun của Little Whale có chất liệu cotton an toàn, rất mềm mịn, dễ
            chịu khi mặc và không gây ngứa da.</li>
          <li><span class="highlight">Áo khoác, áo gió:</span> Một item không thể thiếu cho những ngày lạnh đầu và giữa
            mùa đông, với áo khoác giữ ấm nhưng không gây nặng nề khi mặc. Little Whale với sự đa dạng màu sắc, mẫu mã giúp bé
            gái của bạn luôn nổi bật.</li>
          <li><span class="highlight">Chân váy bé gái:</span> Là một trong những dòng sản phẩm bé gái phổ biến nhất,
            chân váy thiết kế làm nổi bật sự đáng yêu, dễ thương phù hợp với mọi lứa tuổi từ 1-14 tuổi.</li>
          <li><span class="highlight">Đồ bơi bé gái:</span> Đồ bơi bé gái được thiết kế thời trang và an toàn với chất
            liệu phù hợp, giúp bé thoải mái vui chơi khi đến biển, hồ bơi.</li>
          <li><span class="highlight">Phụ kiện bé gái:</span> Với các phụ kiện như băng đô, khẩu trang, tất và các món
            đồ trang trí khác giúp hoàn thiện bộ trang phục của bé gái. Bộ sưu tập phụ kiện bé gái có thể làm nổi bật cá
            tính của bé và cũng là món quà tuyệt vời cho các dịp sinh nhật hay lễ tết.</li>
        </ul>
        <img src="https://cdn.tgdd.vn/Files/2022/05/13/1432136/cach-phoi-do-cho-be-gai-12-tuoi-vua-dep-vua-nang-dong-thoai-mai-202205130838010474.jpg" alt="">
    </div>

    <div class="body-content">
      <h2>2. Phong cách thời trang cho bé gái đẹp, đặc trưng từ thương hiệu Little Whale</h2>
      <p>

        Đây là một trong những phong cách chính mà Little Whale đang hướng tới và chiếm phần lớn thiết kế
        các sản phẩm quần áo thời trang cho bé gái tại nhà Thỏ. Với những thiết kế tối giản, tính ứng dụng cao nhưng vẫn
        vô cùng năng động, đáng yêu
        và hiện đại để công chúa nhỏ tha hồ diện và phối nhiều outfits khác nhau trong mọi hoàn cảnh từ đi học, đi chơi
        hay sinh hoạt hằng ngày.
      </p>
      <div>
        <img src="https://product.hstatic.net/1000290074/product/mau_nhi_1_3fccac74cde547ca9ba46f1ae2d75434.jpg" alt="">
        <p class="italic-text">Thời trang bé gái phong cách đơn giản nhưng vô cùng năng động, tiện dụng</p>
      </div>
      <p>
        <span>Phong cách công chúa điệu đà, dự tiệc sang chảnh:</span>
        Bất kỳ bé gái nào cũng mê được hóa thân thành những nàng công chúa nhỏ thật đáng yêu.
        Vì vậy, những chiếc đầm mang kiểu dáng và họa tiết phong cách công chúa cũng được nhà Thỏ dành sự trau chuốt tỉ
        mỉ. Với những họa tiết,
        màu sắc bắt mắt, những điểm nhấn như phần chân váy nhiều lớp bồng bềnh, nơ bản to cách điệu, hay đính cườm lấp
        lánh, điệu đà,...
      </p>
      <div>
        <img src="https://fiancemedia.com/wp-content/uploads/2024/03/thoi-trang-tre-2.jpg" alt="">
        <p class="italic-text">Phong cách thời trang cho bé gái mê công chúa điệu đà</p>
      </div>
      <p>
        <span>Phong cách tươi sáng, sắc màu xuống phố:</span>
        Không dừng lại ở các kiểu dáng đồ bé gái trơn, đơn giản,
        Little Whale còn tạo ra những trang phục với vô vàn màu sắc phù hợp với sở thích khác nhau của các nàng thơ nhí.
      </p>
      <div>
        <img src="https://file.hstatic.net/1000290074/file/thoi-trang-be-gai-phong-cach-thanh-lich-di-hoc_a87e50f370564132a3b6b28a7eb46718.jpg" alt="">
        <p class="italic-text">Little Whale sở hữu những bộ đồ bé gái phong cách sắc màu tươi sáng </p>
      </div>
      <p>
        <span>Phong cách thanh lịch, chỉn chu đi học:</span>
        đây cũng là một phong cách nữa mà đồ bé gái Little Whale cũng hướng tới, với lối thiết kế tối giản nhưng vẫn hiện đại,
        phá cách từ những chiếc áo sơ mi, áo polo hay những chiếc quần dài, chân váy kaki và jean đứng form.
      </p>
      <div>
        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSg_-h87EmM3QUNI49Lm2lsfUCDGlOiinLG9w9iPZYO1LMU6znI1Kn71b-cVINVP64yKRL4AbigycFW_yoOUs2Iw4eoLJ2XdMJY4Zj5CY8" alt="">
        <p class="italic-text">Những mẫu quần áo bé gái lịch sự nhưng không kém phần phong cách cho bé đi học </p>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
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
        Little Whale là thương hiệu thời trang trẻ em hàng đầu Việt Nam với hơn 60
        showroom trên toàn quốc, mang đến cho bé những bộ quần áo thoải mái
        cho bé "tự do khám phá" thế giới và trải nghiệm niềm vui mỗi ngày.
      </p>
      <h3>ĐĂNG KÝ NHẬN TIN</h3>
      <div class="subscribe">
        <input placeholder="Nhập địa chỉ email" type="email" />
        <button>Đăng ký</button>
      </div>
      <div class="social-icons">
        <a href="">
          <i class="fab fa-facebook"></i>
        </a>
        <a href="">
          <i class="fab fa-tiktok"></i>
        </a>
      </div>
    </div>

    <div class="footer-column">
      <h3>VỀ Little Whale</h3>
      <a href="">Giới thiệu về Little Whale</a>
      <br />
      <a href="">Tin tức Little Whale</a>
      <br />
      <a href="../other-pages/contact.jsp">Liên hệ với chúng tôi</a>
    </div>

    <div class="footer-column">
      <h3>HỖ TRỢ KHÁCH HÀNG</h3>
      <a href="../other-pages/tracuudonhang.jsp">Tra cứu đơn hàng</a>
      <br />
      <a href="../other-pages/chinhsachdoitra.jsp">Chính sách đổi trả hàng Online</a>
      <br />
      <a href="../other-pages/chinhsachkhachangthanthiet.jsp">Chính sách Khách hàng thân thiết</a>
      <br />
      <a href="../other-pages/giaohang-phigiaohang.jsp">Giao hàng &amp; phí giao hàng</a>
      <br />
      <a href="">Hướng dẫn chọn size</a>
      <br />
      <a href="">Chính sách bảo mật thông tin</a>
      <br />
      <a href="">Chính sách đại lý</a>
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
<script src="../static/js/scriptnav.js"></script>
<script src="../static/js/interaction-dobegai.js"></script>
</body>

</html>

