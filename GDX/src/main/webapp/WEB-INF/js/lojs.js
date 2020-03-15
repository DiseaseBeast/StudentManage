$(document).ready(function(){
    $("#bn").click(function(){
        var userName=$("#userName").val();
        var password=$("#password").val();
        var error="";
        if (userName=="") {
            error+="用户名不能为空";
            error+="\n";
        }
        if (password=="") {
            error += "密码不能为空";
            error += "\n";
        }

        if (error!="") {
            alert(error);
        }
        else{
            $.ajax({
                type:'POST',
                dataType:'json',
                url:'http://localhost:9003/login',
                contentType:'application/json;charset=UTF-8',
                data:JSON.stringify({"userName":userName,"password":password}),
                success:function(data1){//返回结果
                    if(data1){
                        //检查密码和账号
                        window.location.href="success.html?userName="+userName;
                    }
                    else {
                        alert("用户名或密码错误");
                    }
                }
            });
        }
    });
})
