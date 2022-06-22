function fn_login(){
    const form = document.loginForm;

    const um_id = form.um_id.value;
    const um_password = form.um_password.value;

    if(um_id == "" || um_id == null || um_password == "" || um_password == null){
        document.getElementById("warning").style.display="block";
    } else{
        document.getElementById("warning").style.display="none";
    }
}


function btn_cancel(){
    if(confirm("회원 가입을 취소하고 메인화면으로 돌아가시겠습니까?")){
        location.replace("index.html");
    }
}

function btn_save(){
    const form = document.joinForm;

    const um_id = form.um_id.value;
    const um_password = form.um_password.value;
    const pwcheck = form.um_password_check.value;
    const um_name = form.um_name.value;

    if(um_id.length < 5 || um_password.length < 8 || pwcheck != um_password || um_name == ""){

        if(um_id.length < 5 ){
            document.getElementById("id_warning").style.display="block"; 
        } 
        if(um_password.length < 8 ){
            document.getElementById("pw_warning").style.display="block";
        } 
        if(pwcheck != um_password){
            document.getElementById("pwcheck_warning").style.display="block";
        }
        if(um_name == ""){
            document.getElementById("name_warning").style.display="block";
        } 

    } else{
        alert("정상적으로 회원가입이 완료되었습니다.")
        form.submit();

        //um_id(아이디), um_password(비밀번호), um_name(닉네임) submit
    }

}

function check(obj, num, keyCode){

    if (obj.value.length < num && keyCode == 1){
        document.getElementById("id_warning").style.display="block"; 
    } else{
        document.getElementById("id_warning").style.display="none";
    }
    if(obj.value.length < num && keyCode == 2){
        document.getElementById("pw_warning").style.display="block";
    } else{
        document.getElementById("pw_warning").style.display="none";
    }
    if((obj.value == "" || obj.length < num) && keyCode == 3){
        document.getElementById("name_warning").style.display="block";
    } else{
        document.getElementById("name_warning").style.display="none";
    }
}

function pwcheck(obj){

    const form = document.joinForm;
    const pw = form.um_password.value;

    if(obj.value != pw){
        document.getElementById("pwcheck_warning").style.display="block";
    } else{
        document.getElementById("pwcheck_warning").style.display="none";
    }
}