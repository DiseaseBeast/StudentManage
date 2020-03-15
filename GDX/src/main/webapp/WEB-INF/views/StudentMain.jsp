<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <title>选课页面</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../css/table.css" type="text/css">
    <link rel="stylesheet" href="../css/search.css" type="text/css">
 
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
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
   
    <ul class="nav navbar-nav navbar-right">
        <li><a href="../Tourist/welcome"><span class="glyphicon glyphicon-user" style="color: white"></span>注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
    
    <div class="container">

        <div class="navbar-header" >

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand navbar-left" href="../Student/Main?sno=${sno}" style="background-color: #666666">学生成绩管理系统 -- 学生</a>
        </div>
            <div class="collapse navbar-collapse" >
                 <ul class="nav navbar-nav" >
                   <li><a href="../Student/self?sno=${sno}"><span class="glyphicon "></span> 学生个人信息</a></li>
                <li><a id="select" href="../Student/select?sno=${sno}&Status=0&iqStatus=0" target="_Self"><span class="glyphicon "></span> 学生选课</a></li>
                <li><a href="../Student/course?sno=${sno}&Status=0&resultStatus=0&selectStatus=${selectStatus}"><span class="glyphicon "></span> 查看已选课程</a></li>
                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon "></span> 查看成绩</a>
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
            </div><!-- /.nav-collapse -->
     
    </div><!-- /.container -->

</div>
<script type="text/javascript">
	if('${selectStatus}'==0){
		$('#select').attr('href', "#");
		$("#select").click(function(){
			alert("选课按钮已关闭！");
		});
	}
</script>
<div style="padding: 24px 48px ;position:absolute; top: 50%;right: 43%">
    <h1>&nbsp;&nbsp;&nbsp;:)</h1>
    <p>欢迎${sname}同学使用 <b>学生成绩管理系统</b>!</p>
</div>
</body>
</html>