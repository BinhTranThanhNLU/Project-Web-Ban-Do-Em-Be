<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Little Whale</title>
    <style></style>
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="static/css/index.css"/>
    <link rel="icon" type="image/png" sizes="32x32" href="./static/images/favicon.png">
</head>
<body>
<!-- HEADER -->
<section class="section-header hidden-search-bar" id="hiddenSearchBar">
    <div class="header">
        <div class="logo-header">
            <a href=""><img alt="Company Logo" height="50" src="./static/images/logo.png" width="100"/></a>
        </div>
        <div class="search-bar-header">
            <input placeholder="Bạn cần tìm gì?" type="text"/>
            <i class="fas fa-search"></i>
        </div>
        <div class="contact-info-header">
            <div class="icon-header">
                <i class="fas fa-phone-alt"></i>
            </div>
            <div class="text-header"><a href="./view/contact.jsp">Liên hệ với chúng tôi</a></div>
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
                        <a href="./other-pages/be-gai.jsp">Bé gái</a>
                        <!-- <ion-icon name="chevron-down-outline"></ion-icon> -->
                    </div>
                    <div class="dropdown dropdown-full">
                        <!-- Dropdown cho Bé gái -->
                        <div class="column">
                            <h3>ĐẦM VÁY</h3>
                            <a href="./other-pages/tat-ca-dam-vay.jsp" class="menu-link">Tất cả Đầm váy</a>
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
                            <h3>ÁO </h3>
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
                            <a class="menu-link" href="#">✨Bộ Sưu Tập Mùa Thu</a>
                            <a class="menu-link" href="#">🍂Bộ Sưu Tập Mùa Đông</a>
                            <a class="menu-link" href="#">🌼Bộ Sưu Tập Xuân</a>
                            <a class="menu-link" href="#">🏠Bộ Sưu Tập Mùa Hè</a>
                            <!-- <a class="menu-link" href="#">🎒Be Cool At School Collection🎒</a> -->
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
                            <a class="menu-link" href="#"> Hàng Mới Về Bé trai</a>
                            <a class="menu-link" href="#">BÁN HÀNG NHẤT</a>
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
                <div class="cart" id="cart">
                    <a href="/web_war/other-pages/gio-hang.jsp" class="cart-a"><i class="fas fa-shopping-cart"></i></a>
                    <span class="badge">0</span>
                </div>
                <!-- Biểu tượng người dùng với menu đăng nhập/đăng ký -->
                <div class="user-menu">
                    <i class="fas fa-user"></i>


                    <div class="dropdown">
                        <a class="menu-link" href="/web_war/other-pages/dangnhap.jsp">Đăng nhập</a>
                        <a class="menu-link" href="/web_war/other-pages/dangki.jsp">Đăng ký</a>
                    </div>
                </div>
                <div class="login-message-cart" id="loginMessageCart">
                    Chưa có sản phẩm nào
                </div>
            </div>
        </div>
    </nav>
</section>
<!-- ================Hiệu ứng di chuyển hình ảnh ở đầu trang can js============-->
<section id="Slider">
    <div class="slider">
        <div class="list">
            <div class="list">
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider2.jpg" alt="Slide 2"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider3.jpg" alt="Slide 3"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider4.jpg" alt="Slide 4"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider1.jpg" alt="Slide 1"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider3.jpg" alt="Slide 3"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/slider_6.webp" alt="Slide 6"/>
                </div>
                <div class="item">
                    <img class="slider-img" src="./static/images/Slider_7.webp" alt="Slide 7"/>
                </div>
            </div>

        </div>
        <div class="buttons">
            <button id="prev"><</button>
            <button id="next">></button>
        </div>
        <ul class="dots">
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</section>

<!-- =================================bé trai bé gái========================== -->
<section class="boy-girl">

    <div class="category-header">
        <h1>BẠN ĐANG TÌM KIẾM ĐỒ EM BÉ</h1>
        <a id="girl-tab" class="active" href="javascript:void(0)">Bé gái</a>
        <a id="boy-tab" href="javascript:void(0)">Bé trai</a>
    </div>

    <div id="girl-category" class="category-container">
        <div class="category-item">
            <img
                    alt="Image of a pink dress"
                    height="100"
                    src="./static/images/dam.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Đầm em bé</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of a pink outfit"
                    height="100"
                    src="./static/images/dobo.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Đồ bộ</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of a pink hoodie"
                    height="100"
                    src="./static/images/aokhoac.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Áo khoác</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of a red shirt with a heart"
                    height="100"
                    src="./static/images/ao.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Áo</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of pink shorts with a bow"
                    height="100"
                    src="./static/images/dolot.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Quần</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of pink underwear"
                    height="100"
                    src="./static/images/quan.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Giày</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Image of a pink backpack"
                    height="100"
                    src="./static/images/phukien.webp"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Phụ kiện</a></p>
        </div>
        <div class="category-item">
            <img
                    alt="Easy Wear logo"
                    height="100"
                    src="./static/images/easy-wearpng.png"
                    width="100"
            />
            <p><a href="./other-pages/be-gai.jsp">Mũ</a></p>
        </div>
    </div>

    <div id="boy-category" class="category-container" style="display: none">
        <div class="category-item-boy">
            <img
                    alt="Image of a pink dress"
                    height="100"
                    src="./static/images/ao-boy.webp"
                    width="100"
            />
            <p><a href="">Áo</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of a pink outfit"
                    height="100"
                    src="./static/images/quan-boy.webp"
                    width="100"
            />
            <p><a href="">Quần</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of a pink hoodie"
                    height="100"
                    src="./static/images/dobo-boy.webp"
                    width="100"
            />
            <p><a href="">Đồ Bộ</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of a red shirt with a heart"
                    height="100"
                    src="images/aokhoac-boy.webp"
                    width="100"
            />
            <p><a href="">Áo Khoác</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of pink shorts with a bow"
                    height="100"
                    src="./static/images/aosomi-boy.webp"
                    width="100"
            />
            <p><a href="">Áo Sơ Mi</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of pink underwear"
                    height="100"
                    src="images/mavel-boy.webp"
                    width="100"
            />
            <p><a href="">Marvel</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Image of a pink backpack"
                    height="100"
                    src="./static/images/phukien-boy.webp"
                    width="100"
            />
            <p><a href="">Đồ Lót</a></p>
        </div>
        <div class="category-item-boy">
            <img
                    alt="Easy Wear logo"
                    height="100"
                    src="./static/images/easy-wearpng.png"
                    width="100"
            />
            <p><a href="">Easy Wear</a></p>
        </div>
    </div>
</section>
<!-- =================================section-exclusive-sale========================== -->
<section class="section-exclusive-sale">
    <div class="container-exclusive-sale">
        <div class="exclusive-sale">
            <h1>GIẢM GIÁ MẠNH</h1>
            <div class="timer">
                <div class="time-unit">
                    <span class="time-number hours">3</span>
                    <span class="time-label">Giờ</span>
                </div>
                <div class="time-unit">
                    <span class="time-number minutes">0</span>
                    <span class="time-label">Phút</span>
                </div>
                <div class="time-unit">
                    <span class="time-number seconds">0</span>
                    <span class="time-label">Giây</span>
                </div>
            </div>
        </div>
        <div class="tabs-exclusive-sale">
            <div class="tab" onclick="showTab(0)">Giảm Giá 20 - 40%</div>
            <div class="tab" onclick="showTab(1)">Giảm Giá 50 - 70%</div>
            <div class="tab" onclick="showTab(2)">Giảm Giá up to 70%</div>
        </div>
        <div class="tab-content-item">
            <div class="container-sale swiper">
                <div class="card-wrapper swiper-wrapper">
                    <ul class="card-list swiper-wrapper">
                        <li class="card-item swiper-slide">
                            <a href="./other-pages/be-gai.jsp">
                                <div class="card-link image-container-card">
                                    <div class="discount-wrap"><p class="discount">20%</p></div>
                                    <img class="image-card image1" src="./static/images/big-ao-khoac-mavel.jpg"
                                         alt="Ảnh 1"/>
                                    <img class="image-card image2" src="./static/images/big-ao-khoac-mavel-boy.jpg"
                                         alt="Ảnh 2"/>
                                    <h2 class="card-title">Áo em bé trai</h2>
                                    <div class="card-title-price">
                                        <p class="card-title-new-price">320.000đ</p>
                                        <p class="card-title-old-price">400.000đ</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="card-item swiper-slide">
                            <a href="./other-pages/be-gai.jsp">
                                <div class="card-link image-container-card">
                                    <div class="discount-wrap"><p class="discount">20%</p></div>
                                    <img class="image-card image1" src="./static/images/big-capybara.jpg"/>
                                    <img class="image-card image2" src="./static/images/big-capybara-vuong.jpg"/>
                                    <h2 class="card-title">Áo em bé trai</h2>
                                    <div class="card-title-price">
                                        <p class="card-title-new-price">320.000đ</p>
                                        <p class="card-title-old-price">400.000đ</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="card-item swiper-slide">
                            <a href="./other-pages/be-gai.jsp">
                                <div class="card-link image-container-card">
                                    <div class="discount-wrap"><p class="discount">30%</p></div>
                                    <img class="image-card image1" src="./static/images/big-bodonguoinhen.jpg"
                                         alt="Ảnh 1"/>
                                    <img class="image-card image2" src="./static/images/big-bodonguoinhene-vuong.jpg"
                                         alt="Ảnh 2"/>
                                    <h2 class="card-title">Áo em bé trai</h2>
                                    <div class="card-title-price">
                                        <p class="card-title-new-price">280.000đ</p>
                                        <p class="card-title-old-price">400.000đ</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="card-item swiper-slide">
                            <a href="./other-pages/be-gai.jsp">
                                <div class="card-link image-container-card">
                                    <div class="discount-wrap"><p class="discount">40%</p></div>
                                    <img class="image-card image1" src="./static/images/big-nguoi-nhen-2.jpg"
                                         alt="Ảnh 1"/>
                                    <img class="image-card image2" src="./static/images/big-nguoi-nhen-vuong.jpg"/>
                                    <h2 class="card-title">Áo em bé trai</h2>
                                    <div class="card-title-price">
                                        <p class="card-title-new-price">240.000đ</p>
                                        <p class="card-title-old-price">400.000đ</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="card-item swiper-slide">
                            <a href="./other-pages/be-gai.jsp">
                                <div class="card-link image-container-card">
                                    <div class="discount-wrap"><p class="discount">20%</p></div>
                                    <img class="image-card image1" src="./static/images/big-mickey.jpg" alt="Ảnh 1"/>
                                    <img class="image-card image2" src="./static/images/big-mickey-vuong.jpg"
                                         alt="Ảnh 2"/>
                                    <h2 class="card-title">Áo em bé trai</h2>
                                    <div class="card-title-price">
                                        <p class="card-title-new-price">320.000đ</p>
                                        <p class="card-title-old-price">400.000đ</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">20%</p></div>
                                <img class="image-card image1" src="./static/images/big-ao-1-vuong.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-ao-1.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai</h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">320.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-slide-button swiper-button-prev"></div>
                    <div class="swiper-slide-button swiper-button-next"></div>
                </div>
            </div>
        </div>
        <div class="tab-content-item">
            <div class="container-sale swiper">
                <div class="card-wrapper swiper-wrapper">
                    <ul class="card-list swiper-wrapper">
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">50%</p></div>
                                <img class="image-card image1" src="./static/images/6.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/5.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai</h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">150.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">60%</p></div>
                                <img class="image-card image1" src="./static/images/spider-man.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/spider-man-vuong.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai</h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">120.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">65%</p></div>
                                <img class="image-card image1" src="./static/images/8.png" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/7.png" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai</h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">105.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">50%</p></div>
                                <img class="image-card image1" src="./static/images/9.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/10.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">150.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">60%</p></div>
                                <img class="image-card image1" src="./static/images/12.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/11.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">120.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">60%</p></div>
                                <img class="image-card image1" src="./static/images/13.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/14.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">120.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-slide-button swiper-button-prev"></div>
                    <div class="swiper-slide-button swiper-button-next"></div>
                </div>
            </div>
        </div>
        <div class="tab-content-item">
            <div class="container-sale swiper">
                <div class="card-wrapper swiper-wrapper">
                    <ul class="card-list swiper-wrapper">
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">70%</p></div>
                                <img class="image-card image1" src="./static/images/big-ao-khoac.png" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-ao-khoac-vuong.png"
                                     alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">90.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">70%</p></div>
                                <img class="image-card image1" src="./static/images/big-yem-truoc.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-yem-sau.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">90.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">70%</p></div>
                                <img class="image-card image1" src="./static/images/big-quan-dui-1-truoc.jpg"
                                     alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-quan-dui-1-sau.jpg"
                                     alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">90.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">70%</p></div>
                                <img class="image-card image1" src="./static/images/big-quan-dui2.jpg" alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-quan-dui2-bpy.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">90.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-item swiper-slide">
                            <div class="card-link image-container-card">
                                <div class="discount-wrap"><p class="discount">70%</p></div>
                                <img class="image-card image1" src="./static/images/big-quan-ao-1-truoc.jpg"
                                     alt="Ảnh 1"/>
                                <img class="image-card image2" src="./static/images/big-quan-ao-1-sau.jpg" alt="Ảnh 2"/>
                                <h2 class="card-title">Áo em bé trai </h2>
                                <div class="card-title-price">
                                    <p class="card-title-new-price">90.000đ</p>
                                    <p class="card-title-old-price">400.000đ</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-slide-button swiper-button-prev"></div>
                    <div class="swiper-slide-button swiper-button-next"></div>
                </div>
            </div>
        </div>
        <div class="load-more">
            <button>Xem thêm</button>
        </div>
    </div>
</section>
<!-- =================================section-best-seller========================== -->
<section class="section-best-seller">
    <div class="container-best-seller">
        <div class="title-best-seller">
            <h1>BÁN CHẠY NHẤT</h1>
        </div>
        <div class="best-seller">
            <div class="tab-button active" onclick="showTabB('best-seller')">Đồ Bé Gái</div>
            <!-- <p>&nbsp;&nbsp;</p> -->
            <div class="tab-button" onclick="showTabB('disney')">Đồ Bé Trai</div>
        </div>
    </div>
    <div class="products-sale" id="best-seller">
        <div class="container-products">
            <div class="row">
                <!-- Product 1 -->
                <div class="col-card">
                    <div class="card">
                        <div class="image-container">
                            <div class="first">
                                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                            </div>
                            <div class="sale-badge">-20%</div>
                            <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                            <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <!-- Tạm thời xóa onClick  onclick="showQuickView()"-->
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/4g.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/3g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/7g.jpg" class="thumbnail-image first-image"/>
                            <img src="./static/images/8g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/7g.jpg" class="thumbnail-image first-image"/>
                            <img src="./static/images/8g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Product 1 -->
                <div class="col-card">
                    <div class="card">
                        <div class="image-container">
                            <div class="first">
                                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                            </div>
                            <div class="sale-badge">-20%</div>
                            <img src="./static/images/11g.png" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/12g.png" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/13g.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/14g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/15g.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/16g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/17g.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/18g.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="products-sale" id="disney" style="display: none">
        <div class="container-products">
            <div class="row">
                <!-- Product 1 -->
                <div class="col-card">
                    <div class="card">
                        <div class="image-container">
                            <div class="first">
                                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                            </div>
                            <div class="sale-badge">-20%</div>
                            <img src="./static/images/2b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/1b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/6b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/5b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/7b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/8b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/9b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/10b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Product 1 -->
                <div class="col-card">
                    <div class="card">
                        <div class="image-container">
                            <div class="first">
                                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                            </div>
                            <div class="sale-badge">-20%</div>
                            <img src="./static/images/2b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/1b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/7b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/8b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/9b.jpg" class="thumbnail-image first-image"/>
                            <!-- Ảnh 2 (ẩn ban đầu) -->
                            <img src="./static/images/10b.jpg" class="thumbnail-image second-image"/>
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
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
                            <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                            <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                        </div>
                        <div class="product-detail-container">
                            <div class="product-info">
                                <h5 class="dress-name">Đầm em bé</h5>
                                <div class="price-container">
                                    <span class="new-price">400.000đ</span>
                                    <small class="old-price">500.000đ</small>
                                </div>
                            </div>
                            <div class="rating-purchase">
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <span class="rating-number">4.8</span>
                                </div>
                                <button class="buy-btn">Thêm</button>
                                <a href="./other-pages/chi-tiet-san-pham.jsp">
                                    <button class="details-btn">Chi Tiết</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="load-more">
        <button>Xem Thêm</button>
    </div>
    </div>
    <!-- Modal Overlay and Quick View Modal -->
    <div class="modal-overlay" onclick="closeQuickView()"></div>
    <div class="quick-view-modal">
        <button class="close-btn-overlay" onclick="closeQuickView()">Đóng</button>
        <div class="container-overlay">
            <div class="image-section-overlay">
                <!-- <img src="../static/images/ao.webp" alt="Product Image"> -->
                <swiper-container class="mySwiper swiper-h" pagination="true" pagination-clickable="true"
                                  space-between="50">
                    <swiper-slide><img src="./static/images/1b.jpg" alt=""></swiper-slide>
                    <swiper-slide>
                        <swiper-container class="mySwiper2 swiper-v" pagination="true" pagination-clickable="true"
                                          space-between="50" direction="vertical">
                            <swiper-slide><img src="./static/images/2b.jpg" alt=""></swiper-slide>
                        </swiper-container>
                    </swiper-slide>
                    <swiper-slide><img src="./static/images/4b.jpg" alt=""></swiper-slide>
                    <swiper-slide><img src="./static/images/5b.jpg" alt=""></swiper-slide>
                </swiper-container>
            </div>
            <div class="details-section-overlay">
                <h3>Kids - designed in Paris</h3>
                <p>Mã sản phẩm: 001</p>
                <div class="wrap-price">
                    <p class="price-overlay">
                        199,000₫
                    </p>
                    <span class="old-price-overlay"> 399,000₫ </span>
                </div>
                <div class="size-options-overlay">
                    <p>Kích thước:</p>
                    <button class="active">1Y</button>
                    <button>2Y</button>
                    <button>3Y</button>
                    <button>4Y</button>
                    <button>5Y</button>
                    <button>6Y</button>
                    <button>7Y</button>
                    <button>8Y</button>
                    <button>9Y</button>
                    <button>10Y</button>
                    <button>11Y</button>
                    <button>12Y</button>
                </div>
                <div class="add-to-cart-overlay">
                    THÊM VÀO GIỎ <i class="fas fa-shopping-cart"></i>
                </div>

                <a href="./other-pages/chi-tiet-san-pham.jsp">
                    <div class="add-to-detail-overlay">
                        XEM CHI TIẾT
                    </div>
                </a>

            </div>
        </div>
    </div>
</section>
<!-- ===================================thời trang nữ========================- -->
<section class="section-girl-fashion">
    <div class="container-girl">
        <div class="girl-fashion">
            <h1>THỜI TRANG BÉ GÁI</h1>
        </div>
        <div class="nav-girl-fashion">
            <p id="girl-damvay-tab" class="active" onclick="showTabGirl('dam-vay')">Đầm Váy</p>
            <p id="girl-ao-tab" class="tab" onclick="showTabGirl('ao')">Áo</p>
            <p id="girl-dolot-tab" class="tab" onclick="showTabGirl('do-lot')">Đồ Lót</p>
            <p id="girl-dobo-tab" class="tab" onclick="showTabGirl('do-bo')">Đồ Bộ</p>
        </div>
        <div class="products-girl-fashion" id="dam-vay">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/4g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/3g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/7g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/8g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/9g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/10g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/11g.png" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/12g.png" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/13g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/14g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/15g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/16g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="products-girl-fashion" id="ao" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/11g.png" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/12g.png" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/13g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/14g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/15g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/16g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/17g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/18g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/4g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/3g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/7g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/8g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/9g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/10g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-girl-fashion" id="do-lot" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/4g.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/3g.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-girl-fashion" id="do-bo" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="load-more">
            <button><a href="./other-pages/be-gai.jsp">Xem thêm</a></button>
        </div>
    </div>
</section>
<!-- ===================================thời trang nam=======================- -->
<section class="section-boy-fashion">
    <div class="container-boy-fashion">
        <div class="boy-fashion">
            <h1>THỜI TRANG BÉ TRAI</h1>
        </div>
        <div class="nav-boy-fashion">
            <p class="tab active" onclick="showTabBoy('ao-boy')">Áo</p>
            <p class="tab" onclick="showTabBoy('do-bo-boy')">Đồ Bộ</p>
            <p class="tab" onclick="showTabBoy('quan')">Quần</p>
            <p class="tab" onclick="showTabBoy('ao-khoac')">Áo Khoác</p>
        </div>
        <div class="products-boy-fashion" id="ao-boy">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/2b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/1b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/6b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/7b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/8b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/9b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/10b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/2b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/1b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/6b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/7b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/8b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/9b.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/10b.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-boy-fashion" id="do-bo-boy" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/6.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/6.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/big-mickey.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/big-mickey-vuong.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/spider-man.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/spider-man-vuong.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/6.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/6.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/5.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/big-mickey.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/big-mickey-vuong.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/spider-man.jpg" class="thumbnail-image first-image"/>
                                <!-- Ảnh 2 (ẩn ban đầu) -->
                                <img src="./static/images/spider-man-vuong.jpg" class="thumbnail-image second-image"/>
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">áo em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-boy-fashion" id="quan" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-boy-fashion" id="ao-khoac" style="display: none;">
            <div class="container-products">
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Product 1 -->
                    <div class="col-card">
                        <div class="card">
                            <div class="image-container">
                                <div class="first">
                                    <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                                </div>
                                <div class="sale-badge">-20%</div>
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
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
                                <img src="./static/images/1g.jpg" class="thumbnail-image first-image">
                                <img src="./static/images/2g.jpg" class="thumbnail-image second-image">
                            </div>
                            <div class="product-detail-container">
                                <div class="product-info">
                                    <h5 class="dress-name">Đầm em bé</h5>
                                    <div class="price-container">
                                        <span class="new-price">400.000đ</span>
                                        <small class="old-price">500.000đ</small>
                                    </div>
                                </div>
                                <div class="rating-purchase">
                                    <div class="rating">
                                        <i class="fa-solid fa-star"></i>
                                        <span class="rating-number">4.8</span>
                                    </div>
                                    <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                                    <a href="./other-pages/chi-tiet-san-pham.jsp">
                                        <button class="details-btn">Chi Tiết</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="load-more">
            <button>Xem thêm</button>
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
                    src="./static/images/logo.png"
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
            <a href="./other-pages/contact.jsp">Liên hệ với chúng tôi</a>
        </div>

        <div class="footer-column">
            <h3>HỖ TRỢ KHÁCH HÀNG</h3>
            <a href="./other-pages/tracuudonhang.jsp">Tra cứu đơn hàng</a>
            <br/>
            <a href="./other-pages/chinhsachdoitra.jsp">Chính sách đổi trả hàng Online</a>
            <br/>
            <a href="./other-pages/chinhsachkhachangthanthiet.jsp">Chính sách Khách hàng thân thiết</a>
            <br/>
            <a href="./other-pages/giaohang-phigiaohang.jsp">Giao hàng &amp; phí giao hàng</a>
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
</body>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="./static/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

</html>
