<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TeacherGrade</title>
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
</head>

<body style="text-align:center;background: url('../img/f11.jpg');background-size: cover">
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
<table id="aijquery"class="table  table-bordered" align="center" width="100%" border=1 style="font-weight: bold;">
	<thead>
		<tr style="background: rgba(255,255,255,.6)">
          	<th class="id">序号</th>
          	<th class="cno">学号</th>
			<th class="sname">姓名</th>
			<th class="sgrade">成绩</th>
		</tr>
	</thead>
	<tbody id="sgrades">
		<c:forEach items="${lists}" var="lists" varStatus="status">
            <tr style="background: rgba(255,255,255,.3)">
                <td>${status.count}</td>
                <td>${lists.sno}</td>
                <td>${lists.sname}</td>
                <td class="sgrade">${listg[status.index]}</td>
            </tr>
        </c:forEach>
	</tbody>
</table>
	<button class="anniu" align="center" id="subgrade" type="button" style="display: none;">录入</button>
</body>

<script type="text/javascript">
	var TimeStatus='${id}';
	if(TimeStatus==0){
		document.getElementById("subgrade").style.display="block";
		if('${entryStatus}'==0){
			document.getElementById("subgrade").style.display="none";
		}
	}

	$('table#aijquery').on("dblclick", "td.sgrade", function(){
		var $td=$(this);
	    var _t=$td.text();
	    var _w=$td.width();
		var _h=$td.height();
		$td.html("").css({"padding":0});
		var $input=$("<input type='text'>");
	    $input.appendTo($td).width(_w).height(_h).val(_t).focus().blur(function(){
	    	var v = $(this).val();
	    	if(v < 0 || v > 100){
	    		alert("Out of range");
	    		$td.html(_t);
	    	}
	    	else
	    		$td.html($(this).val().replace(/[^0-9]/g,''));
	    });
	})
	
	$('#subgrade').click(function(){
		var listgrade = new Array();
		var trList = $('#sgrades').children("tr");
		for(var i=0;i<trList.length;i++){
			var sgrade = trList.eq(i).find("td.sgrade").html();
			listgrade.push(sgrade);
		}
		$.ajax({
			url:"../Teacher/updategrade",
			type:"post",
			data:{
				"listgrade":listgrade,
				"id":'${id}',
				"tno":'${tno}',
				"cno":'${cno}',
				"leng":trList.length
			},
			traditional:true,
			success:function(data){
				if('${Status}'==0)
					alert('修改成功!');
				else 
					alert('修改失败！');
			}
		});
	})
</script>
</html>