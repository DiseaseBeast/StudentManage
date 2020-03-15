<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
  
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <title>查看已选课程</title>
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

</head>
<body style="background: url('../img/y147.jpg');background-size: cover;">
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <!---返回按钮--->
    <ul class="nav navbar-nav navbar-right">
        <li> <span>欢迎你 </span></li>
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
                <li><a href="../Student/self?sno=${sno}"  target="_Self"><span class="glyphicon"></span> 学生个人信息</a></li>
                <li><a id="select" href="../Student/select?sno=${sno}&Status=0&iqStatus=0" target="_Self"><span class="glyphicon "></span>学生选课</a></li>
                <li><a href="../Student/course?sno=${sno}&Status=0&resultStatus=0&selectStatus=${selectStatus}" style="background-color: #666666"><span class="glyphicon "></span>查看已选课程</a></li>
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
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!----表格位置---->
<div class="divs">
    <div class="div_clear" >
    <table class="gridtable" border=1 cellspacing="0px" cellpadding="0px" >
        <caption style="color:black;font-size:large;"><b>已选课程</b></caption>
        <thead style="background-color: white">
        <tr class="success">
       		<th width="5%">序号</th>
            <th width="16%">课程号</th>
            <th width="16%">课程名</th>
            <th width="16%">课程学时</th>
            <th width="16%">课程学分</th>
            <th width="16%">任课教师</th>
            <th wdith="20%" style="border-right:none">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="list" varStatus="status">
            <tr class="success">
            	<td width="5%" >${page.start + status.count}</td>
                <td width="16%">${list.cno}</td>
                <td width="16%">${listc[status.index].cname}</td>
                <td width="16%">${listc[status.index].cperiod}</td>
                <td width="16%">${listc[status.index].ccredit}</td>
                <td width="16%">${listt[status.index].tname}</td>
                <td width="20%"><a style="color: wheat" class="btn" name="delet"  value="取消选课" href="../Student/cancel?sno=${sno}&cno=${list.cno}">取消选课</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</div>
</body>
<script type="text/javascript">
    $(function(){
        if('${selectStatus}'==0){
            $('input.btn').hide();
            $('#select').attr('href', "#");
    		$("#select").click(function(){
    			alert("选课按钮已关闭！");
    		});
        }
    })
</script>
<script>
    //根据后台返回状态给予提示
    if('${Status}'==1){
        if('${resultStatus}'==1)
            alert('取消成功！')
        else
            alert('取消失败！')
    }
</script>
</html>