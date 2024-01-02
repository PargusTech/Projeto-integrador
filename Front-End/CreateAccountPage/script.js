const btn_view_password = document.querySelector("#btn-view-password")

btn_view_password.addEventListener('click', function(){
    const input_confirm_password = document.querySelector("#input-confirm-password")
    if(input_confirm_password.type === "password"){
        input_confirm_password.type = "text"
        btn_view_password.classList.replace('bi-eye-fill', 'bi-eye-slash-fill')
    } else{
        input_confirm_password.type = "password"
        btn_view_password.classList.replace('bi-eye-slash-fill', 'bi-eye-fill')
    }
})