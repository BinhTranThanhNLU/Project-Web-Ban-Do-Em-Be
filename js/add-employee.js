function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function(e) {
            var thumbImage = document.getElementById("thumbimage");
            thumbImage.src = e.target.result;
            thumbImage.style.display = "block"; // Hiển thị ảnh sau khi tải lên
        };
        
        reader.readAsDataURL(input.files[0]); // Đọc dữ liệu ảnh
    }
}

// Lắng nghe sự kiện thay đổi của input file để chạy hàm readURL
document.getElementById("uploadfile").addEventListener("change", function() {
    readURL(this);
});
