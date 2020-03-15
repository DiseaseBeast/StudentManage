<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <!---教师改密码页面--->
    <meta charset="UTF-8" />
    <title>更改密码界面</title>
    <link
            href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet" />
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script  type="text/javascript" src="../../baidude/js/lojs.js"></script>
</head>
<body style="background: url('../img/f38.jpg');background-size: cover">
<form id="form1" class="well" style="width: 30em; margin: auto; margin-top: 150px; background: rgba(255,255,255,.4)" action="../Teacher/updatepass">
    <h3 align="center">教师更改密码</h3><br/>
    <div class=" input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"><i
                      class="glyphicon glyphicon-lock" ></i></span>
        <input  type="text" name="oldpassword" id="oldpassword" placeholder="密码..." class="form-control"  required autocomplete="off"/>
    </div>
    <br />
    <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon2"><i
                      class="glyphicon glyphicon-lock"></i></span>
        <input type="password" name="password" id="password" placeholder="新密码..." class="form-control"  required autocomplete="off" />
    </div>
    <br/>
    <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon3"><i
                      class="glyphicon glyphicon-lock"></i></span>

        <input type="password" name="password1" id="password1" placeholder="确认新密码..." class="form-control"   required autocomplete="off"/>
        <input type="hidden" name="tno" value="${tno}">
    </div>
    <br/>
    <br/>
    <button type="button" class="btn btn-success btn-block" onclick="window.location.href='../Teacher/self?tno=${tno}'">返回</button>
    <button type="submit" value="submit" id="bn" class="btn btn-success btn-block" onclick="check()">修改</button>

    <br />

</form>

<script >

function check(){
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
</body>
</html>
