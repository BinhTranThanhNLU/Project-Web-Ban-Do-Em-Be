<%--
  Created by IntelliJ IDEA.
  User: hdanh
  Date: 09/01/2025
  Time: 3:30 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<input type="hidden" id="status"
       value="<%= request.getAttribute("status")%>"/>

<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Snippet - BBBootstrap</title>
    <link
            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
            rel='stylesheet'>
    <link
            href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
            rel='stylesheet'>
    <script type='text/javascript'
            src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        .placeicon {
            font-family: fontawesome
        }

        .custom-control-label::before {
            background-color: #dee2e6;
            border: #dee2e6
        }
    </style>
</head>
<body oncontextmenu='return false' class='snippet-body bg-info'>
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
<div>
    <!-- Container containing all contents -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                <!-- White Container -->
                <div class="container bg-white rounded mt-2 mb-2 px-0">
                    <!-- Main Heading -->
                    <div class="row justify-content-center align-items-center pt-3">
                        <h1>
                            <strong>Tạo Mới Mật Khẩu</strong>
                        </h1>
                    </div>
                    <div class="pt-3 pb-3">
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/newpassword" method="POST">
                            <!-- User Name Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="text" name="password" placeholder="&#xf084; &nbsp; Mật Khẩu Mới"
                                           class="form-control border-info placeicon">
                                </div>
                            </div>
                            <!-- Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="password" name="confPassword"
                                           placeholder="&#xf084; &nbsp; Nhập Lại Mật Khẩu Mới"
                                           class="form-control border-info placeicon">
                                </div>
                            </div>

                            <!-- Log in Button -->
                            <div class="form-group row justify-content-center">
                                <div class="col-3 px-3 mt-3">
                                    <input type="submit" value="Tạo"
                                           class="btn btn-block btn-info">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Alternative Login -->
                    <div class="mx-0 px-0 bg-light">

                        <!-- Horizontal Line -->
                        <div class="px-4 pt-5">
                            <hr>
                        </div>
                        <!-- Register Now -->
                        <div class="pt-2">
                            <div class="row justify-content-center">
                                <h5>
                                    Không có Tài Khoản?<span><a href="#" class="text-danger"> Đăng Ký Ngay!</a></span>
                                </h5>
                            </div>
                            <div
                                    class="row justify-content-center align-items-center pt-4 pb-5">
                                <div class="col-4">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
<script type="text/javascript">
    // Lấy giá trị từ request attribute
    var status = "<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>";

    // Hiển thị thông báo tương ứng
    if (status === "failed") {
        swal("Đăng Nhập Thất Bại", "Bạn Nhập Sai Tài Khoản Hoặc Mật Khẩu", "error");
    }else
    if (status === "InvalidName") {
        swal("Đăng Nhập Thất Bại", "Bạn Cần Nhập Vào Tài Khoản", "error");
    }else
    if (status === "resetSuccess") {
        swal("Chúc Mừng", "Tạo Mới Mật Khẩu Thành Công", "success");
    }else
    if (status === "resetFailed") {
        swal("Tạo Mới Mật Khẩu Thất Bại", "Bạn Cần Kiểm Tra Lại Mật Khẩu", "error");
    }
</script>
</body>
</html>
