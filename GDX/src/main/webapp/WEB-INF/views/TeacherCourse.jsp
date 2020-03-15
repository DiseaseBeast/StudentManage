<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

    <!---教师信息页面--->
    <meta charset="utf-8">
    <title>教师信息</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../layui/css/layui.css" type="text/css">
    <script src="../layui/layui.all.js"></script>
    <!---引用所有css，准备修改页面样式--->
    <link rel="stylesheet" href="../css/table.css" type="text/css">
    <link rel="stylesheet" href="../css/search.css" type="text/css">
    <link rel="stylesheet" href="../css/btn1.css"type="text/css">
    <link rel="stylesheet" href="../css/btn.css" type="text/css">
    <link rel="stylesheet" href="../css/table1.css" type="text/css">
    <link rel="stylesheet" href="../css/index.css" type="text/css">
    <script src="../js/lojs.js"></script>
<body style="background: url('../img/f11.jpg');background-size: cover">
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

<table class="table  table-bordered" align="center" width="100%" border=1 style="font-weight: bold;background: rgba(255,255,255,.4)">
    <caption style="color:black">${Time.get(id)} 所带课程</caption>
    <thead>
    <tr class="success">
        <th>课程号</th>
        <th>课程名</th>
        <th>课程学时</th>
        <th>课程学分</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${list}" var="list" varStatus="status">
        <tr>
            <td>${list.cno}</td>
            <td>${list.cname}</td>
            <td>${list.cperiod}</td>
            <td>${list.ccredit}</td>
            <td><input class="btn" type="button" value="查看" onclick="window.location.href='../Teacher/queryresult?tno=${tno}&cno=${list.cno}&id=${id}'"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>