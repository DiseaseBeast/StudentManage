<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/Main.css">
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="background: black">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand " href="../Department/Main?Ano=${Ano}"  style="color: white">学生成绩管理系统 -- 教务处</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="../Department/Main?Ano=${Ano}"><span class="glyphicon glyphicon-user" style="color: white"></span>返回</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="Box">
            <h2>修改密码</h2>
            <form action="../Department/updatepass">
                <div class="InputBox">
                    <input type="text" name="oldpassword" id="oldpassword"  required autocomplete="off">
                    <label>原密码</label>
                </div>
                <div class="InputBox">
                    <input type="password" name="password" id="password" required autocomplete="off">
                    <label>新密码</label>
                </div>
                <div class="InputBox">
                    <input type="password" name="password1" id="password1" required autocomplete="off">
                    <input type="hidden" name="Ano" value=${Ano}>
                    <label>确认新密码</label>
                </div>
                <input type="submit" name="" value="Submit"  onclick="check()">
            </form>
        </div>
    </div>
</div>
</body>

<script>
function check() {
    var op = document.getElementById("oldpassword").value;
    var p1 = document.getElementById("password").value;
    var p1 = document.getElementById("password1").value;

    if (op == p1){
        alert("原密码不能与新密码相同");
        document.referrer;

    }
    else if (p1 != p2){
        alert("两次密码不一致！");
        document.referrer;

    }
    else{
    	if('${Status}'==1){
    		if ('${oldpassword}'==1) {
    	        if ('${updateStatus}'==1) {
    	        	alert('exception，修改成功！')
    	        }
    	        else
    	            alert('exception，修改失败！')
    	    }
    	    else
  		      alert('exception，原密码不正确！')
    	}
    }
    }
</script>

</html>