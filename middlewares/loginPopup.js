let loginBtn = document.querySelector(".login-btn");
    loginBtn.addEventListener("click", closeWinPopUp);

function closeWinPopUp() {
    document.querySelector(".login-popup-box").style.display = "block";
    document.querySelector(".popup-background-overlay").style.display = "none";
}