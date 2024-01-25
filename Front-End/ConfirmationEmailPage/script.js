const hamburguer_menu = document.querySelector(".hamburguer-menu")
const nav = document.querySelector("nav")

hamburguer_menu.addEventListener('click', function(){
  nav.classList.toggle("active")
})