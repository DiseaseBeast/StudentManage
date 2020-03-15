<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	<style>
          .wel * {
            padding: 0;
            margin: 0;
        }

        .wel div {
            padding: 4px 48px;
        }

        .wel body {
            background: #fff;
            font-family: "微软雅黑";
            color: #333;
        }

        .wel h1 {
            font-size: 100px;
            font-weight: normal;
            margin-bottom: 12px;
        }

        .wel p {
            line-height: 1.8em;
            font-size: 36px
        }
    
    </style>
    
</head>
<body style="background:white">
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand navbar-left" href="../Teacher/Main?tno=${tno}">学生成绩管理系统 -- 教师</a>
        </div>
        <!--下拉框-->
        <div>
            <ul class="nav navbar-nav">
                <li><a href="../Teacher/self?tno=${tno}"class="dropdown-toggle" >查看个人信息</a></li>
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
<div style="padding: 24px 48px ;position:absolute; top: 50%;right: 43%">
    <h1>&nbsp;&nbsp;&nbsp;:)</h1>
    <p>欢迎${tname}老师使用 <b>教师成绩管理系统</b>!</p>
</div>
</body>
</html>