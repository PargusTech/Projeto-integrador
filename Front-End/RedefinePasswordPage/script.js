let btn_password = document.querySelector("#btn-view-password") 

btn_password.addEventListener('click', function(){
  let password = document.querySelector("#input-password")
  if(password.type === "password"){
    password.type = "text"
    btn_password.classList.replace('bi-eye-fill', 'bi-eye-slash-fill')
  } else{
    password.type = "password"
     btn_password.classList.replace('bi-eye-slash-fill', 'bi-eye-fill')
  }
})

const hamburguer_menu = document.querySelector(".hamburguer-menu")
const nav = document.querySelector("nav")

hamburguer_menu.addEventListener('click', function(){
  nav.classList.toggle("active")
})