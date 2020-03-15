<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Insert title here</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="../css/table.css" type="text/css">
    <link rel="stylesheet" href="../css/search.css" type="text/css">
    <link rel="stylesheet" href="../css/btn.css">

</head>
<body style="background: url('../img/y99.jpg') ;background-size: cover;">
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
   
    <ul class="nav navbar-nav navbar-right">
    
    </li>
        <li><a href="../Tourist/welcome"><span class="glyphicon " style="color: white"></span>注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
    
    <div class="container">

        <div class="navbar-header" >

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand navbar-left" href="../Student/Main?sno=${sno}" >学生成绩管理系统 -- 学生</a>
        </div>
            <div class="collapse navbar-collapse" >
                 <ul class="nav navbar-nav" >
                    <li><a href="../Student/self?sno=${sno}"  target="_Self" style="background-color: #666666"><span class="glyphicon "></span> 学生个人信息</a></li>
                    <li><a id="select" href="../Student/select?sno=${sno}&Status=0&iqStatus=0" target="_Self"><span class="glyphicon "></span>学生选课</a></li>
                    <li><a href="../Student/course?sno=${sno}&Status=0&resultStatus=0"><span class="glyphicon "></span>查看已选课程</a></li>
                     <li><a href="#"class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon "></span>查看成绩</a>
                         <ul class="dropdown-menu">
                             <li><a href="../Student/queryresult?sno=${sno}&id=0">${Time.get(0)}</a></li>	
                             <li><a href="../Student/queryresult?sno=${sno}&id=1">${Time.get(1)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=2">${Time.get(2)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=3">${Time.get(3)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=4">${Time.get(4)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=5">${Time.get(5)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=6">${Time.get(6)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=7">${Time.get(7)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=8">${Time.get(8)}</a></li>
                             <li><a href="../Student/queryresult?sno=${sno}&id=9">${Time.get(9)}</a></li>
                         </ul></li>
                 </ul>
            </div>
      </div>
</div>
<script type="text/javascript">
	if('${selectStatus}'==0){
		$('#select').attr('href', "#");
		$("#select").click(function(){
			alert("选课按钮已关闭！");
		});
	}
</script>
<div class="divs">
	<div style="bottom: 80%">
	<form id="data_form" enctype="multipart/form-data" style="position:absolute; left: 17.5%;top: 15%">
		<table border=1 align="center" class="gridtable">
			<thead  style="background-color: white">
        	<tr class="success">
            	<th>属性</th>
            	<th>值</th>
        	</tr>
        	</thead>
			<tr>
            	<td>学号</td>
            	<td>${Self.sno}</td>
         	</tr>
         	<tr>
            	<td>姓名</td>
            	<td>${Self.sname}</td>
         	</tr>
         	<tr>
            	<td>性别</td>
            	<td>${Self.ssex}</td>
         	</tr>
         	<tr>
            	<td>班级</td>
            	<td>${Self.sclass}</td>
         	</tr>
         	<tr>
            	<td>学院</td>
            	<td>${Self.sdept}</td>
         	</tr>
         	<tr>
            	<td>专业</td>
            	<td>${Self.smajor}</td>
         	</tr>
         	<tr>
            	<td>手机号</td>
            	<td>${Self.stel}</td>
         	</tr>
         	<tr>
            	<td>籍贯</td>
            	<td>${Self.saddress}</td>
         	</tr>
         	<tr>
            	<td>电子邮箱</td>
            	<td>${Self.semail}</td>
         	</tr>
		</table>
	</form>
</div>
</div>
<div class="All ">
	<a style="position:absolute;top:62%;left:20.3%" href="../Student/updateself?sno=${sno}">修改</a>
</div>
</body>
</html>