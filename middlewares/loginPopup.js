let loginBtn = document.querySelector(".login-btn");
    loginBtn.addEventListener("click", openLoginPopup);

function openLoginPopup() {
    document.querySelector(".login-popup-box").style.display = "block";
    document.querySelector(".popup-background-overlay").style.display = "block";

    let closeBtn = document.querySelector(".close-popup-btn");
    closeBtn.addEventListener("click", closeLoginPopup)
}

function closeLoginPopup() {
    document.querySelector(".winning-box").style.display = "none";
    document.querySelector(".winning-background-overlay").style.display = "none";
}

