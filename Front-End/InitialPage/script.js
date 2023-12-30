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
