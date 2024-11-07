let loginBtn = document.querySelector(".login-btn");

        if (loginBtn !== null) {
            loginBtn.addEventListener("click", openLoginPopup);
        }
        
        
        function openLoginPopup() {
            document.querySelector(".login-popup-box").style.display = "block";
            document.querySelector(".user-management-login").style.display = "grid";
            document.querySelector(".user-management-signup").style.display = "none";
            document.querySelector(".popup-background-overlay").style.display = "block";

            let closeBtn = document.querySelector(".close-popup-btn");
            closeBtn.addEventListener("click", closeLoginPopup);

            let swapBtnList = document.querySelectorAll(".user-management-swap-btn");
            swapBtnList.forEach(swapBtn => {
                swapBtn.addEventListener("click", switchPopup);
            });
        }

        function switchPopup(event) {
            swapBtnText = event.target.innerText
            let hidePopup = '';
            switch (swapBtnText) {
                case 'Login':   
                    hidePopup = ".user-management-signup";
                    showPopup = ".user-management-login";
                    break;
                case 'Create Account':
                    console.log('goodbye')
                    hidePopup = ".user-management-login";
                    showPopup = ".user-management-signup";
                    break;
            }

            document.querySelector(showPopup).style.display = "grid";
            document.querySelector(hidePopup).style.display = "none";

            let swapBtnList = document.querySelectorAll(".user-management-swap-btn");
            swapBtnList.forEach(swapBtn => {
                swapBtn.addEventListener("click", switchPopup);
            });

        }

        function closeLoginPopup() {
            document.querySelector(".login-popup-box").style.display = "none";
            document.querySelector(".popup-background-overlay").style.display = "none";
        }