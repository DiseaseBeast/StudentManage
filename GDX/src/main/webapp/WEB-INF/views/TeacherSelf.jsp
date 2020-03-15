<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

    <!---教师信息页面--->
    <meta charset="utf-8">
    <title>教师信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../css/table1.css">
    <script src="../js/tblColor.js" type="javascript"></script>
    <link rel="stylesheet" href="../css/btn1.css" type="text/css">
</head>

<body style="background:url('../img/f6.jpg');background-size: cover;">
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand navbar-left" href="../Teacher/Main?tno=${tno}">学生成绩管理系统 -- 教师</a>
        </div>
        <!--下拉框-->
        <div>
            <ul class="nav navbar-nav">
                <li><a href="../Teacher/self?tno=${tno}"class="dropdown-toggle">查看个人信息</a></li>
                <li class="dropdown"><a href=""class="dropdown-toggle" data-toggle="dropdown">查看课程<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=0">${Time.get(0)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=1">${Time.get(1)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=2">${Time.get(2)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=3">${Time.get(3)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=4">${Time.get(4)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=5">${Time.get(5)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=6">${Time.get(6)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=7">${Time.get(7)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=8">${Time.get(8)}</a></li>
                        <li><a href="../Teacher/querycourse?tno=${tno}&id=9">${Time.get(9)}</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!---返回--->
                <li><a href="../Tourist/welcome"><span class="glyphicon" style="color: black"></span><b>注销&nbsp;&nbsp;</b></a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="table">
    <form action="../Teacher/update" id="data_form" enctype="multipart/form-data">
        <table border=1 align="center" class="altrowstable" id="alternatecolor" border=1 align="center" style="font-size: large;background-color: rgba(255,255,255,.3);color: black">
            <thead>
            <tr class="success">
                <th>属性</th>
                <th>值</th>
            </tr>
            </thead>
            <tr>
                <td>教师工号</td>
                <td>${Self.tno}</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>${Self.tname}</td>
            </tr>
            <tr>
                <td>性别</td>
                <td>${Self.tsex}</td>
            </tr>
            <tr>
                <td>学院</td>
                <td>${Self.tdept}</td>
            </tr>
            <tr>
                <td>职称</td>
                <td>${Self.ttitle}</td>
            </tr>
            <tr>
                <td>手机号</td>
                <td>${Self.ttel}</td>
            </tr>
            <tr>
                <td>籍贯</td>
                <td>${Self.taddress}</td>
            </tr>
            <tr>
                <td>电子邮箱</td>
                <td>${Self.temail}</td>
            </tr>
        </table>
    </form>
</div>
<div>
    <a class="anniu" style="  position: absolute;top: 65%;right: 20%;" href="../Teacher/updateself?tno=${tno}">修改</a>
</div>
</body>
</html>