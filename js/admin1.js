// Sử dụng jQuery để tải nội dung trang con vào #content-area khi nhấp vào menu bên trái:
$(document).ready(function () {
    // Lắng nghe sự kiện click vào navigation
    $('.menu-link').on('click', function (e) {
        e.preventDefault(); // Ngăn không cho chuyển hướng mặc định

        let page = $(this).data('page'); // Lấy giá trị data-page
        let url = $(this).attr('href'); // Lấy URL của trang

        // Thêm hiệu ứng loading
        $('#content-area').html('<p>Đang tải nội dung...</p>');

        // Gửi AJAX để lấy nội dung trang
        $.ajax({
            url: url,
            method: 'GET',
            success: function (data) {
                // Tạm thời lưu nội dung trả về
                let newContent = $('<div>').html(data);
            
                // Chỉ lấy nội dung trong #content-area từ dữ liệu trả về
                let contentArea = newContent.find('#content-area').html();
            
                // Chèn nội dung mới vào #content-area trên trang hiện tại
                $('#content-area').html(contentArea);
            
                // Cập nhật trạng thái active cho menu
                $('.menu-link').removeClass('active');
                $(`[data-page=${page}]`).addClass('active');
            
                // Xác định file CSS từ thuộc tính data-css
                let cssFile = $(this).data('css');
            
                // Kiểm tra nếu file CSS đã được load
                let existingCss = $(`link[href="${cssFile}"]`);
                if (existingCss.length === 0) {
                    // Nếu chưa được load, thêm file CSS mới vào <head>
                    $('head').append(`<link rel="stylesheet" href="${cssFile}" type="text/css" />`);
                }
            
                // Loại bỏ các file CSS không còn sử dụng
                $('head link[rel="stylesheet"]').each(function () {
                    let href = $(this).attr('href');
                    if (href.includes('../../css/admin-css/') && href !== cssFile) {
                        $(this).remove();
                    }
                });
            },
            error: function (error) {
                $('#content-area').html('<p>Lỗi khi tải nội dung!</p>');
                console.error('Lỗi:', error);
            }
        });
    });
});


// Cập Nhật URL mà Không Reload
$.ajax({
    url: url,
    method: 'GET',
    success: function (data) {
        $('#loading').hide();
        $('#content-area').html(data);

        // Cập nhật URL trên thanh địa chỉ
        window.history.pushState({ path: url }, '', url);

        $('.menu-link').removeClass('active');
        $(`[data-page=${page}]`).addClass('active');
    },
    error: function (error) {
        $('#loading').hide();
        $('#content-area').html('<p>Lỗi khi tải nội dung!</p>');
    }
});

// Khi người dùng nhấn nút Back hoặc Forward trên trình duyệt, bạn cần xử lý để tải lại nội dung tương ứng.
window.onpopstate = function (event) {
    if (event.state) {
        // Lấy URL từ trạng thái lịch sử
        let url = event.state.path;

        // Gửi AJAX để tải nội dung
        $.ajax({
            url: url,
            method: 'GET',
            success: function (data) {
                $('#content-area').html(data);
            },
            error: function (error) {
                $('#content-area').html('<p>Lỗi khi tải nội dung!</p>');
            }
        });
    }
};

