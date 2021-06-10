var user = document.querySelector('#user');
var pass = document.getElementById('password');
var btnLogin = document.querySelector('input[type="button"]');
function checkNull(elemnt){
    var errorMessage;
    var errorElement = elemnt.parentElement.querySelector('.messenger-error');
    var errorE = true;
    if(elemnt.value.trim() == ""){
        errorMessage =  "Không được để trống !";
        errorElement.style.color = 'red';
        errorElement.style.fontSize = '13px'
        errorE = false;
    }else{
        errorMessage = "";
    }
    errorElement.innerText = errorMessage;
    return errorE;
}

user.onblur = function(){
    checkNull(user);
}
pass.onblur = function(){
    checkNull(pass);
}

var btnloginElement = btnLogin.parentElement;
btnloginElement.onclick = function(event){
    checkNull(user);
    checkNull(pass);
    if(!checkNull(user) || !checkNull(pass) ){
        event.preventDefault();
    }
    
}