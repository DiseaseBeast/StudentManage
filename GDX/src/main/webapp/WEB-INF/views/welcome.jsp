<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
  Created by IntelliJ IDEA.
  User: DMOH
  Date: 2019/12/29
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/Main.css">
  </head>
  <body >
  <nav class="navbar navbar-default" role="navigation" style="background: black ;border-box:none;">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#" style="color: white">学生成绩管理系统</a>
      </div>
      <!---下拉栏--->
      <ul class="nav navbar-nav navbar-right">
        <!---下拉栏样式class--->
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="Box">
        <h2>Login</h2>
        <form action="../Tourist/login">
          <div class="InputBox">
            <input type="text" name="username">
            <label>username</label>
          </div>
          <div class="InputBox">
            <input type="password" name="password">
            <label>password</label>
          </div>
          <div class="xll">
          		<select name="carlist">
            	<option value="XS">学生</option>
            	<option value="LS">老师</option>
            	<option value="JWC">教务处</option>
         	 	</select>
       		 </div>
          <input type="submit" value="login">
        </form>
      </div>
    </div>
  </div>
  </body>
  <script>
    	//根据后台返回状态给予提示
    	if('${Status}'==1){
    		if ('${UserStatus}'==1) {
    	        if ('${PassStatus}'==1) {
    	            if('${type}'=="XS"){
    	            	var url="../Student/Main"+"?sno=" + '${username}';
        	            location.href = url;
    	            }
    	            else if('${type}'=="LS"){
    	            	var url="../Teacher/Main"+"?tno=" + '${username}';
        	            location.href = url;
    	            }
    	            else{
    	            	var url="../Department/Main"+"?Ano=" + '${username}';
        	            location.href = url;
    	            }
    	        }
    	        else
    	            alert('exception，密码错误！')
    	    }
    	    else
  		      alert('exception，用户名不存在！')
    }
</script>
  
</html>