function view_modal(modal){
  const modal_visible = document.querySelector(modal)
  modal_visible.classList.add('view-modal')
  modal_visible.addEventListener('click', (e) => {
    if(e.target.className === 'close-modal' || e.target.className === 'modal'){
      modal_visible.classList.remove('view-modal')
    }
  })
}

const btn_contact = document.querySelector("#form-contact")
const btn_contact2 = document.querySelector("#btn-contact2")
const btn_close_modal = document.querySelector(".close-modal")

btn_contact.addEventListener('click', function(){
  view_modal(".modal")
})

btn_contact2.addEventListener('click', function(){
  view_modal(".modal")
})

const btn_password = document.querySelector("#btn-view-password")

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

const btn_hamburguer = document.querySelector(".hamburguer-menu")
const nav_bar = document.querySelector(".navbar-header")
const items_menu = document.querySelector(".items-menu")

btn_hamburguer.addEventListener('touchstart', function(){
  nav_bar.classList.toggle("active")
})

const links = document.querySelectorAll(".items-menu");

links.forEach(function(link) {
  link.addEventListener('click', function() {
    nav_bar.classList.remove("active");
  });
});

/* const form = document.querySelector("#form-login")
const email = document.querySelector("#input-email")
const password = document.querySelector("#input-password") */

/* form.addEventListener('submit', function(e){
    
})

function check_inputs(){
  const email_value = email.value
  const password_value = password.value
  
  if(email_value === ""){
    error(email, "Digite seu email")
  } else if(!checkEmail(email_value)){
    error(email, "Digite um email válido")
  }
  
  if(password_value === ""){
    error(password, "Digite sua senha")
  }
}

function checkEmail(email) {
    return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(
      email
    );
}

function error(input, message){
  const form_input = input.parentElement
  const error_message = form_input.querySelector(".error")

  error_message.innerHTML = message
} */