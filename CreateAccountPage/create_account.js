function mostrar_senha() {
    var senha = document.getElementById("confirm_password")
    if(senha.type == "password"){
        senha.type= "text";
    }else{
        senha.type = "password";
    }
}