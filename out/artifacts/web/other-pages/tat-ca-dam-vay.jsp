
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đồ Bé Gái</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="../static/css/header-nav-footer.css">
    <link rel="stylesheet" href="../static/css/card-product.css">
    <link rel="stylesheet" href="../static/css/do-be-gai.css">
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
                <a href="./contact.jsp">Liên hệ với chúng tôi</a>
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
                        <a href="./be-gai.jsp">Bé gái</a>
                        <!-- <ion-icon name="chevron-down-outline"></ion-icon> -->
                    </div>
                    <div class="dropdown dropdown-full">
                        <!-- Dropdown cho Bé gái -->
                        <div class="column">
                            <h3>ĐẦM VÁY</h3>
                            <a href="./tat-ca-dam-vay.jsp" class="menu-link"
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
                    <a href="./gio-hang.jsp" class="cart-a"
                    ><i class="fas fa-shopping-cart"></i
                    ></a>
                    <span class="badge">0</span>
                </div>
                <div class="user-menu">
                    <i class="fas fa-user"></i>
                    <div class="dropdown">
                        <a class="menu-link" href="./dangnhap.jsp">Đăng nhập</a>
                        <a class="menu-link" href="./dangki.jsp">Đăng ký</a>
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
                    <a href="./be-gai.jsp" itemprop="url" target="_self"><span itemprop="title">Thời Trang Bé Gái</span></a>
                    <span class="">&nbsp;/&nbsp;</span>
                </li>

                <li>
                    <a href="./do-be-gai.jsp" itemprop="url" target="_self"><span itemprop="title">Đầm-Váy Bé Gái</span></a>
                    <span class="">&nbsp;/&nbsp;</span>
                </li>

            </ul>
        </div>
    </div>
</section>

<!-- IMAGE -->
<section class="dbg-header-image">
    <div class="header-image">
        <img src="https://file.hstatic.net/1000290074/collection/website_1_23e6a9fe2e194526b25366c64affd1ff.jpg"
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
                <div class="container-filter" style="margin-bottom: 800px;">
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
                                        <h5 class="dress-name">Tên Sản Phẩm</h5>
                                        <div class="price-container">
                                            <span class="new-price">20.000đ</span>
                                            <small class="old-price">50.000đ</small>
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
            <span>Little Whale</span> là một thương hiệu thời trang trẻ em hàng đầu Việt Nam với chất lượng cao cấp, đa dạng mẫu mã, màu sắc và phong cách với hệ thống cửa hàng phủ sóng trên toàn quốc,
            mang đến cho bé những bộ quần áo thoải mái, "tự do khám phá" thế giới và trải nghiệm niềm vui mỗi ngày, với hàng loạt mẫu mới được các mẹ vô cùng săn đón.
            Đặc biệt những mẫu quần áo thời trang bé gái luôn là dòng sản phẩm vô cùng bán chạy tại nhà Thỏ.
        </p>
        <div class="description-collections">
            <div class="header-content">
                <h2>1. Thời trang bé gái tại Little Whale có những dòng sản phẩm hot nào?</h3>
                    <p>Nàng công chúa nhỏ của nhà mình sẽ thêm phần nổi bật và đáng yêu khi bé sở hữu những chiếc đầm váy trẻ em ngay sau đây!</p>
            </div>
            <div class="body-content">
                <h3>1.1. Đầm váy bé gái thun cotton mát mẻ và năng động</h3>
                <p>
                    Kiểu đầm váy thun bé gái với kiểu dáng thiết kế tối giản, vô cùng dễ mặc cho các bé gái từ 1 đến 14 tuổi, với dáng suông rộng rãi,
                    co giãn giúp bé mặc thật thoáng mát vào mùa hè. Ngay cả mùa thu hay mùa đông bé cũng có thể phối thêm quần tất hoặc áo khoác mặc vô cùng ấm áp nhưng vẫn rất thời trang.
                    Những chiếc váy thun dễ dàng mix & match, màu sắc tươi mới, họa tiết đáng yêu, cùng với kiểu dáng phù hợp giúp bé thoải mái vui chơi, vận động.
                </p>
                <img src="https://product.hstatic.net/1000290074/product/mau_nhi_1_3fccac74cde547ca9ba46f1ae2d75434.jpg" alt="">
            </div>
            <div class="body-content">
                <h3>1.2. Váy công chúa bé gái điệu đà với những lớp voan phồng bồng bềnh</h3>
                <p>
                    Những chiếc váy dạ hội công chúa, váy công chúa Disney, váy hồng công chúa sẽ là sự lựa chọn hoàn hảo của
                    mẹ giúp cho bé diện đồ thật xinh thỏa ước mơ hóa thân thành một cô công chúa bé nhỏ.
                    Những chiếc váy công chúa với thiết kế voan bồng bềnh nhiều lớp, màu sắc bắt mắt mang phong cách tiểu thư điệu đà.
                    Thường được trang trí họa tiết lấp lánh nổi bật, nơ bản to, tay áo voan hoặc bồng. Đặc biệt, những chiếc váy công
                    chúa Elsa cho bé gái với điểm nhấn là hình in Elsa bản quyền Disney được các bé gái vô cùng yêu thích và ưa chuộng.
                </p>
                <img src="https://www.moby.com.vn/data/ck/images/dv546-dam-cong-chua-elsa-de-thuong-cho-be-mau-xanh.png" alt="">
            </div>
            <div class="body-content">
                <h3>1.3. Đầm váy xòe chất vải thô cotton nhẹ tênh với họa tiết đáng yêu</h3>
                <p>
                    Kiểu váy xòe đáng yêu luôn là item được các bé gái yêu thích, với đa dạng kiểu dáng từ xếp ly, váy suông, nhún cho đến tay bèo, cánh tiên xinh xắn, hay kiểu váy 2 dây và cổ yếm điệu đà, tất cả đều được các tiểu thư nhí vô cùng yêu thích.
                    Từ những chiếc váy trơn màu đến những họa tiết hoa nhí, ngựa pony, kẻ sắc màu, chấm bi,... hay váy caro bé gái, mỗi một thiết kế đều mang đến cho bé một diện mạo thật nổi bật và đáng yêu.
                    Với chất liệu cotton thô nhẹ tênh, thoáng mát, êm mịn an toàn cho làn da trẻ nhỏ, bé tha hồ mặc mọi lúc, mọi nơi từ đi học, đi chơi hay dự tiệc mà vẫn thoải mái vô cùng.
                </p>
                <img src="https://cdn.becungshop.vn/images/300x300/dam-thun-xoe-hoa-tiet-ngua-pony-3d-cuc-xinh-danh-cho-be-gai-p268606ee68477-300x300.jpg" alt="">
            </div>
            <div class="body-content">
                <h3>1.4. Váy bé gái dài tay giữ ấm trong những ngày se lạnh</h3>
                <p>
                    Mùa thu đông càng thêm ấm áp và không kém phần thời trang với những chiếc váy dài tay xinh xắn cho bé. Thiết kế lớp vải thun hoặc dày dặn hơn là vải nhung, nỉ,
                    dạ nhưng vẫn vô cùng mềm mại và thoải mái cho bé, không gây cảm giác nặng nề khó chịu.
                    Mẹ có thể kết hợp thêm những chiếc mũ len, khăn choàng cổ và tất vào tiết trời se lạnh để bé thêm ấm áp nhé.
                </p>
                <img src="https://cdn.becungshop.vn/images/500x500/dam-cong-chua-tay-dai-theu-ren-cho-be-gai-tu-3-8-tuoi-p2389072d20cd4-500x500.jpg" alt="">
            </div>
        </div>

        <div class="description-note">
            <div class="header-content">
                <h2>2. Một số lưu ý khi mua đầm váy trẻ em chất lượng và phù hợp</h3>
            </div>
            <div class="body-content">
                <h3>2.1. Kiểu dáng - Sự phù hợp giúp bé tự tin và tỏa sáng</h3>
                <p>
                    Những chiếc đầm váy dành cho bé gái từ 1 - 12 tuổi với nhiều kiểu dáng thiết kế khác nhau sẽ giúp bé yêu nhà bạn đa dạng tủ đồ của mình, từ váy suông đơn giản năng động, đến những chiếc váy xếp ly đáng yêu, hay chiếc váy voan nhiều
                    lớp bồng bềnh và điệu đà,... cho nàng công chúa nhỏ nhiều sự lựa chọn vào những dịp khác nhau.
                </p>
            </div>
            <div class="body-content">
                <h3>2.2. Chất liệu - Yếu tố quan trọng ảnh hưởng đến làn da của bé</h3>
                <p>
                    Chất liệu vải được trực tiếp tiếp xúc với làn da trẻ nhỏ nên đây là yếu tố vô cùng quan trọng. Mẹ hãy ưu tiên lựa chọn những chiếc đầm váy trẻ em cao cấp có
                    chất liệu cotton hoặc thun mát mềm mại, thoáng khí,... Tránh những chiếc váy có chất lượng kém sẽ ảnh hưởng đến làn da nhạy cảm của bé, vô tình làm bé khó chịu.
                </p>
            </div>
            <div class="body-content">
                <h3>2.3. Chọn kích thước đầm váy phù hợp - Đảm bảo thoải mái khi vận động</h3>
                <p>
                    Trẻ em rất mau lớn, các mẹ không nên lựa chọn những chiếc váy vừa in với bé nếu không muốn chỉ sau một thời gian ngắn váy cho bé gái đã bị chật. Ví dụ như khi lựa chọn những chiếc đầm váy trẻ em đẹp vào mùa hè,
                    các mẹ nên lựa chọn những chiếc váy rộng hơn so với dáng người của bé.
                    Đồng thời, nếu bé nhà bạn đang trong giai đoạn chập chững biết đi thì mẹ nên chú ý chọn những chiếc đầm váy với kích thước và chiều dài không gây bất tiện cho bé.
                    <img src="../static/images/bang-size-quan-ao-tre-em.png" alt="">
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
            <a href="./contact.jsp">Liên hệ với chúng tôi</a>
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

<script src="../static/js/scriptnav.js"></script>
<script src="../static/js/interaction-dobegai.js"></script>


</body>

</html>

