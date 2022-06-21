function fn_login(){
    let form = document.loginForm;

    let user_id = form.user_id.value;
    let user_pw = form.user_pw.value;

    if(user_id == "" || user_id == null || user_pw == "" || user_pw == null){
        document.getElementById("warning").style.display="block";
    }
}