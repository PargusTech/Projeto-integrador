function view_modal(modal){
  const modal_visible = document.querySelector(modal)
  modal_visible.classList.add('view-modal')
  modal_visible.addEventListener('click', (e) => {
    if(e.target.className == 'close-modal'){
      modal_visible.classList.remove('view-modal')
    }
  })
}

const btn_contact = document.querySelector("#form-contact")
const btn_close_modal = document.querySelector(".close-modal")

btn_contact.addEventListener('click', function(){
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