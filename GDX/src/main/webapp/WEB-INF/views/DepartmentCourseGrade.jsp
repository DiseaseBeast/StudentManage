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
            <li><a href="../Department/course?Ano=${Ano}&id=${id}"><span class="glyphicon glyphicon-user" style="color: white"></span>返回&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
</div>
<div id="sty">
<div>
        <table  class="table  table-bordered  table-condensed" align="center" width="100%" border=1>
            <caption align="center" style="color:black">学生信息-当前第${Integer((page.start/10)+1)}页</caption>
            <thead>
            <tr class="success">
                <th class="id">序号</th>
                <th class="cno">学号</th>
                <th class="sname">姓名</th>
                <th class="sgrade">成绩</th>
            </tr>
            </thead>
            <tbody id="sgrades">
            <c:forEach items="${lists}" var="lists" varStatus="status">
                <tr style="background:rgba(255,255,255,.2);font-size:large">
                    <td>${status.count}</td>
                    <td>${lists.sno}</td>
                    <td>${lists.sname}</td>
                    <td class="sgrade">${listg[status.index]}</td>
                </tr>
            </c:forEach>
            </tbody>
            </tbody>
        </table>
    </div>

<!--打印内容结束-->

<!--endprint1-->
<input type=button name='button_export' title='打印1' onclick=preview(1) value=打印>
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