document.addEventListener("DOMContentLoaded", () => {
  const formElements = {
    name: document.getElementById("name"),
    email: document.getElementById("email"),
    message: document.getElementById("message"),
    terms: document.getElementById("terms"),
    submitBtn: document.querySelector(".submit-btn"),
  };

  // Hàm để xóa thông báo lỗi cũ
  const clearErrors = () => {
    const errorMessages = document.querySelectorAll(".error-message");
    errorMessages.forEach((error) => error.remove());
  };

  const validateForm = () => {
    clearErrors();
    let isValid = true;
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

    // Kiểm tra trường "Name"
    if (formElements.name.value.trim() === "") {
      formElements.name.style.borderColor = "red";
      const errorMessage = document.createElement("div");
      errorMessage.className = "error-message";
      errorMessage.textContent = "Vui lòng nhập tên của bạn.";
      formElements.name.parentNode.appendChild(errorMessage);
      isValid = false;
    } else {
      formElements.name.style.borderColor = "";
    }

    // Kiểm tra trường "Email"
    if (!emailPattern.test(formElements.email.value)) {
      formElements.email.style.borderColor = "red";
      const errorMessage = document.createElement("div");
      errorMessage.className = "error-message";
      errorMessage.textContent =
        "Vui lòng nhập email hợp lệ.Ví dụ user@gmail.com";
      formElements.email.parentNode.appendChild(errorMessage);
      isValid = false;
    } else {
      formElements.email.style.borderColor = "";
    }

    // Kiểm tra trường "Message"
    if (formElements.message.value.trim() === "") {
      formElements.message.style.borderColor = "red";
      const errorMessage = document.createElement("div");
      errorMessage.className = "error-message";
      errorMessage.textContent = "Vui lòng nhập tin nhắn của bạn.";
      formElements.message.parentNode.appendChild(errorMessage);
      isValid = false;
    } else {
      formElements.message.style.borderColor = "";
    }

    // Kiểm tra checkbox "Terms"
    if (!formElements.terms.checked) {
      const errorMessage = document.createElement("div");
      errorMessage.className = "error-message";
      errorMessage.textContent = "Bạn cần đồng ý với Điều khoản Dịch vụ.";
      formElements.terms.parentNode.parentNode.insertBefore(
        errorMessage,
        formElements.submitBtn
      );
      isValid = false;
    }

    return isValid;
  };

  const showSuccessMessage = () => {
    const successMessage = document.createElement("div");
    successMessage.textContent = "Cảm ơn bạn đã gửi tin nhắn!";
    successMessage.className = "success-message";
    document.querySelector(".right-section").appendChild(successMessage);
    setTimeout(() => successMessage.remove(), 3000);
  };

  formElements.submitBtn.addEventListener("click", (event) => {
    event.preventDefault();
    if (validateForm()) {
      showSuccessMessage();
      formElements.name.value = "";
      formElements.email.value = "";
      formElements.message.value = "";
      formElements.terms.checked = false;
      clearErrors();
    }
  });
});
// ======================
document.addEventListener("DOMContentLoaded", () => {
  const rightSection = document.querySelector(".right-section");
  setTimeout(() => {
    rightSection.classList.add("show");
  }, 500); // Đợi 500ms sau khi tải trang rồi mới chạy hiệu ứng
});
// =====================\
document.addEventListener("DOMContentLoaded", () => {
  const infoSection = document.querySelector(".info-section");
  setTimeout(() => {
    infoSection.classList.add("show");
  }, 500); // Đợi 500ms sau khi tải trang để hiệu ứng mượt mà hơn
});
