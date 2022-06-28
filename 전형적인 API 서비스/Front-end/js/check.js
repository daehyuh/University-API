function fn_login(){
    const form = document.loginForm;

    const um_id = form.um_id.value;
    const um_pwd = form.um_pwd.value;

    if(um_id == "" || um_id == null || um_pwd == "" || um_pwd == null){
        document.getElementById("warning").style.display="block";
    } else{
        document.getElementById("warning").style.display="none";
        form.submit();
    }
}


function btn_cancel(obj){
    if(confirm(obj + "을 취소하고 메인화면으로 돌아가시겠습니까?")){
        location.replace("index.jsp");
    }
}


function btn_save(){
    const form = document.joinForm;

    const um_id = form.um_id.value;
    const um_pwd = form.um_pwd.value;
    const pwcheck = form.um_password_check.value;
    const um_name = form.um_name.value;

    if(um_id.length < 5 || um_pwd.length < 8 || pwcheck != um_pwd || um_name == ""){

        if(um_id.length < 5 ){
            document.getElementById("id_warning").style.display="block"; 
        } 
        if(um_pwd.length < 8 ){
            document.getElementById("pw_warning").style.display="block";
        } 
        if(pwcheck != um_pwd){
            document.getElementById("pwcheck_warning").style.display="block";
        }
        if(um_name == ""){
            document.getElementById("name_warning").style.display="block";
        } 

    } else{
        alert("정상적으로 회원가입이 완료되었습니다.")
        form.submit();

        //um_id(아이디), um_pwd(비밀번호), um_name(닉네임) submit
    }

}


function btn_update(){
	
    const form = document.updateForm;
    
    const update_pwd = form.update_pwd.value;
    const update_pwchk = form.update_pwchk.value;
    const update_name = form.update_name.value;


    if(update_pwd < 8 || update_pwchk != update_pwd || update_name == ""){

        if(update_pwd.length < 8 ){
            document.getElementById("pw_warning").style.display="block";
        } 
        if(update_pwchk != update_pwd){
            document.getElementById("pwcheck_warning").style.display="block";
        }
        if(update_name == ""){
            document.getElementById("name_warning").style.display="block";
        } 

    } else{
        alert("정상적으로 수정이 완료되었습니다.")
        form.submit();
    }

}


function check(obj, num, keyCode){

	if(keyCode == 1){
    	if (obj.value.length < num){
        	document.getElementById("id_warning").style.display="block"; 
    	} 	else{
       		document.getElementById("id_warning").style.display="none";
    	}
    }
    if(keyCode == 2){
    	if (obj.value.length < num){
        	document.getElementById("pw_warning").style.display="block";
   		} else{
        	document.getElementById("pw_warning").style.display="none";
    	}
    }
    if(keyCode == 3){
    	if (obj.value == "" || obj.length < num){
        	document.getElementById("name_warning").style.display="block";
    	} else{
        	document.getElementById("name_warning").style.display="none";
    	}
    }
}

function pwcheck(obj, pw){

 	const pwd = document.getElementById(pw).value;

    if(obj.value != pwd){
        document.getElementById("pwcheck_warning").style.display="block";
    } else{
        document.getElementById("pwcheck_warning").style.display="none";
    }
}

function api_save(){

    const form = document.apiForm;

    const apiTechChk = form.apiTechChk.checked;
    const licenseChk = form.licenseChk.checked;

    if(apiTechChk == false || licenseChk == false){

        if( apiTechChk == false ){
            document.getElementById("tech_warning").style.display="block";
        }  
        if( licenseChk == false ){
            document.getElementById("license_warning").style.display="block";
        }

    }
     else{
        alert("API 신청 완료");
		
        form.submit();
    }
    
}

function api_checkbox(obj, keyCode){
    if(obj.checked == false && keyCode == 1){
        document.getElementById("tech_warning").style.display="block";
    } else{
        document.getElementById("tech_warning").style.display="none";
    }
    if(obj.checked == false && keyCode == 2){
        document.getElementById("license_warning").style.display="block";
    } else{
        document.getElementById("license_warning").style.display="none";
    }
}

function score_check(obj){
	
	if(obj.value < 1 || obj.value > 9){
		document.getElementById("score_warning").style.display="block";
	} else{
		document.getElementById("score_warning").style.display="none";
	}
}
