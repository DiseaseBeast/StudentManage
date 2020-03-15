<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--   width 属性控制设备的宽度。
    假设您的网站将被带有不同屏幕分辨率的设备浏览，那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。
    initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放。
    在移动设备浏览器上，通过为 viewport meta 标签添加 user-scalable=no 可以禁用其缩放（zooming）功能。
    通常情况下，maximum-scale=1.0 与 user-scalable=no 一起使用。这样禁用缩放功能后，用户只能滚动屏幕，
    就能让您的网站看上去更像原生应用的感觉。
    注意，这种方式我们并不推荐所有网站使用，还是要看您自己的情况而定！--->
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <title>Bootstrap</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>

        .divs {
            width: 400px;

            margin:100px auto;
            padding: auto;
        }
        table {
            margin-top: 10px;
            width: 400px;
            border: 2px solid #000;
            border-collapse: collapse;
        }
        table thead tr {
            background-color: purple;
            color: #e0e0e0;
        }

        table tr {
            background-color: pink;
        }

        table td {
            text-align: center;
            border:1px solid #000 ;
        }

        table td:nth-child(1){
            width: 100px;
        }

        table td:nth-child(2){
            width: 300px;
        }
        table td:nth-child(3){
            width: 300px;
        }
        table td:nth-child(4){
            width: 100px;
        }
        .ne{
            padding: 50px;
            margin: auto;
        }
        #table{
            margin: auto;
            padding: auto;
        }
        #zx{

            background:transparent;
            border:none;
            outline: none;
            color: #ffffff;
            background: aqua;
            padding: 10px 20px;
            cursor: pointer;
            border-radius:5px;
        }
        *{
			margin: 0;
			padding: 0;
			font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		}
		.slide-btn{
			width:100px;
			display:inline-block;
			border:1px solid;
			border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
			border-radius:5px;
			position: relative;
			overflow: hidden;
			cursor: pointer;
		}
		.slide-btn .inner-on,.slide-btn .inner-off{
			width:151px;
			box-sizing:border-box;
			display: inline-block;
			position: relative;
			left:0;
			cursor: pointer;
			transition:left 0.5s;
		}
		.inner-on .left,.inner-off .left{
			width: 50px;
			color: #fff;
			text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
			background:#58b058;
			text-align:center;
			display: inline-block;
			padding: 4px 0;
		}
		.inner-on .space,.inner-off .space{
			width: 51px;
			display: inline-block;
			box-sizing:border-box;
			padding: 4px 0;
			color: #fff;
			background-color: #f5f5f5;
			border-left: 1px solid #cccccc;
			border-right: 1px solid #cccccc;
			text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
			background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
			border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
		}
		.inner-on .right,.inner-off .right{
			width: 50px;
			color: #fff;
			text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
			background:#f9a123;
			text-align:center;
			display: inline-block;
			padding: 4px 0;
		}
    </style>

</head>
<body style="text-align:center;background: url('../img/f11.jpg');background-size: cover">
<!--startprint1-->

<!--打印内容开始-->
<div>
	<ul class="nav navbar-nav navbar-right">
            <li><a href="../Department/student?Ano=${Ano}"><span class="glyphicon glyphicon-user" style="color: white"></span>返回&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
</div>

<div id=sty >
<div>



		<form action="../Department/querystudentgrade" style="text-align: center;margin-top: 10px">
        	<input id="Sno" name="Sno" type="hidden" value=${Sno}>
        	<input id="Ano" name="Ano" type="hidden" value=${Ano}>
        	<select name="id" style="width:155px;height:25px;border:1px solid #ccc;"> 
        	<option value="0">${Time[0]}</option>
        	<option value="1">${Time[1]}</option>
        	<option value="2">${Time[2]}</option>
        	<option value="3">${Time[3]}</option>
        	<option value="4">${Time[4]}</option>
        	<option value="5">${Time[5]}</option>
        	<option value="6">${Time[6]}</option>
        	<option value="7">${Time[7]}</option>
        	</select>
        	<input type="submit" value="查询">
		</form>
	    <table class="table  table-bordered  table-condensed" align="center" width="100%" border=1 >
        <caption style="color:black">${QTime}成绩列表</caption>
        <thead>
        <tr class="success" style="color:black">
            <th>课程号</th>
            <th>课程名</th>
            <th>课程学时</th>
            <th>课程学分</th>
            <th>任课教师</th>
            <th>课程成绩</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${list}" var="list" varStatus="status">
            <tr>
                <td>${list.cno}</td>
                <td>${listc[status.index].cname}</td>
                <td>${listc[status.index].cperiod}</td>
                <td>${listc[status.index].ccredit}</td>
                <td>${listt[status.index].tname}</td>
                <td>${list.grade}</td>
            </tr>
        </c:forEach>
        </tbody>  
      </table>
</div>
</div>

<!--打印内容结束-->

<!--endprint1-->
<input type=button name='button_export' title='打印' onclick=preview(1) value=打印>
<script language="javascript">
    function preview(oper)
    {
        if (oper < 10){
            bdhtml=window.document.body.innerHTML;//获取当前页的html代码
            sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域
            eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域
            prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
            prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
            window.document.body.innerHTML=prnhtml;
            window.print();
            window.document.body.innerHTML=bdhtml;
        } else {
            window.print();
        }
    }
</script>
</body>
</html>