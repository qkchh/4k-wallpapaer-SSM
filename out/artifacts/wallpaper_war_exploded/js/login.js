//表单的验证
function verifyNumber(){
    if(verifyName()  && verifyPassword()){
        let data={
            imageUserName:$("#name").val(),
            imageUserPassword:$("#password").val()
        };
        $.post("user/verifyNumber",data,function (data){
            $("#message").css("display","block");
            if(data.flag){
                $("#message").css("display","none");
                $(location).attr('href','index.html');
            }else {
                $("#message").html(data.errorMsg);
            }
        })
    }
}
//验证用户名
function verifyName(){
    //1.获取用户名值
    let username = $("#name").val();
    if (username!=""){
        $("#message").css("display","none");
        return true;
    }else {
        $("#message").css("display","block");
        $("#message").html("用户名不能为空");
        return false;
    }
}
//验证密码
function verifyPassword(){
    //1.获取用户名值
    let  password= $("#password").val();
    //2.定义正则
    let re=/^\w{3,20}$/
    //3.判断，给出提示信息
    let b = re.test(password);
    console.log(b);
    //判空
    if(password==""){
        $("#message").css("display","block");
        $("#message").html("密码不能为空");
        return false;
    }
    if (b){
        $("#message").css("display","none");
    }else {
        $("#message").css("display","block");
        $("#message").html("密码格式错误，需要长度3 -20");
    }
    return b;
}
//验证密码是否相同
function verifyPasswordEqual(){
    let  rePassword= $("#rePassword").val();
    let  password= $("#password").val();

    if(rePassword==password){
        $("#message").css("display","none");
        return true;
    }
    $("#message").css("display","block");
    $("#message").html("密码不一致，请重新输入");
    return false;
}
//注册表单的验证
function register(){
    if(verifyName()  && verifyPassword() && verifyPasswordEqual()){
        let data={
            imageUserName:$("#name").val(),
            imageUserPassword:$("#password").val()
        };
        $.post("user/registerUser",data,function (data){
            $("#message").css("display","block");
            if(data.flag){
                $("#message").css("display","none");
                $(location).attr('href','login.html');
            }else {
                $("#message").html(data.errorMsg);
            }
        })
    }
}
//监听点击回车
document.onkeydown = function (e) {
    var theEvent = window.event || e;
    var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
    if (code == 13) {
        $("#form-submit").click();
    }
};

//密码修改
function updatePassword(){
    if(verifyPasswordEqual() && verifyPasswordLength()){
        let data={
            imageUserName:$("#name").val(),
            imageUserPassword:$("#password").val()
        };
        $.post("user/updatePassword",data,function (data){
            $("#message").css("display","block");
            if(data.flag){
                $("#message").css("display","none");
                alert("账号密码修改成功")
                $(location).attr('href','login.html');
            }else {
                $("#message").html(data.errorMsg);
            }
        })
    }
}

//验证密码长度
function verifyPasswordLength(){
    //1.获取用户名值
    let  password= $("#password").val();
    //2.定义正则
    let re=/^\w{3,20}$/
    //3.判断，给出提示信息
    let b = re.test(password);
    console.log(b);
    //判空
    if(password==""){
        return true;
    }
    if (b){
        $("#message").css("display","none");
    }else {
        $("#message").css("display","block");
        $("#message").html("密码格式错误，需要长度3 -20");
    }
    return b;
}


