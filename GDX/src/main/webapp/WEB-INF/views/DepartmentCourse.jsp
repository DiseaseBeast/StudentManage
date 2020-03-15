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
.none {border-style:none;}
        table {
            margin-top: 10px;
            border: 2px solid #000;/*边框宽度，颜色*/
            border-collapse: collapse;/*为表格设置合并边框模型*/
            
            }       
            
        table th{
            text-align: center;
            border:1px solid #000 ;
            }

        table td{
            text-align: center;
            border:1px solid #000 ;
            }
            

        form {
        	align: center;
        	}
        
        .ne{
            padding: 50px;
            margin: auto;
            }
            
        #table{
            margin: auto;
            padding:10px 5px;
            }
		#table1{
            margin: auto;
            padding:10px 5px;
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
            /*弹窗*/
            body{
				margin: 0px;
			}
			.zhezhao{
				position: fixed;
				left: 0px;
				top: 0px;
				background: #000;
				width: 100%;
				height: 100%;
				background:rgba(0,0,0,0.5);
			}
			.tankuang{
				position: relative;
				background: #E0FFFF;
				width: 50%;
				height: 80%;
				border-radius: 5px;
				margin: 5% auto;
			}
			#header{
				height: 40px;
			}
			.header-right{
				position: absolute;
				width: 25px;
				height: 25px;
				border-radius: 5px;
				background: red;
				color: white;
				right: 5px;
				top: 5px;
				text-align: center;
			}   
        	.divcenter {
            overflow: auto;  /*当内容溢出时添加滚动条 */
            margin: 50px auto;/*使div块居中显示 */
            }
    </style>

</head>
<body style="background: url('../img/f48.jpg');background-size: cover">
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <!---注销
    注销
    注销
    注销
    注销
    --->
    <ul class="nav navbar-nav navbar-right">
        <li><a href="../Tourist/welcome"><span class="glyphicon " style="color: white"></span>注销&nbsp;&nbsp;</a></li>
    </ul>
    <div class="container">
        <div class="navbar-header" >
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand navbar-left" href="../Department/Main?Ano=${Ano}" >学生成绩管理系统 -- 教务处</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav" >
                <li><a href="../Department/updateself?Ano=${Ano}"><span class="glyphicon "></span>修改密码</a></li>
                <li><a href="../Department/student?Ano=${Ano}&Status=0&iqStatus=0" target="_Self"><span class="glyphicon "></span>学生信息查看</a></li>
                <li><a href="../Department/teacher?Ano=${Ano}&Status=0&resultStatus=0"><span class="glyphicon "></span>教师信息查看</a></li>
                <li><a href="#"class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon "></span>课程信息查看</a>
                    <ul class="dropdown-menu">
                        <li><a href="../Department/course?Ano=${Ano}&id=0">${Time.get(0)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=1">${Time.get(1)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=2">${Time.get(2)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=3">${Time.get(3)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=4">${Time.get(4)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=5">${Time.get(5)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=6">${Time.get(6)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=7">${Time.get(7)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=8">${Time.get(8)}</a></li>
                        <li><a href="../Department/course?Ano=${Ano}&id=9">${Time.get(9)}</a></li>
                    </ul></li>
            </ul>
        </div><!-- /.nav-collapse -->
       

    </div><!-- /.container -->

</div>
<div>
     <!-----------------------------------查询按钮+添加教师信息-------------------------------------------->
     
     
<div class="btn-group" style="position: absolute;top: 10%;left: 40%">
		<input type="text" placeholder="请输入..." id="in" name="in" align="center"/>
		<button type="button" data-toggle="dropdown" align="center">选择搜索方式
        <span class="caret"></span>
    	</button>
    	<ul class="dropdown-menu" role="menu">
        <li>
            <a id="a_query_1" href="">课程号查找</a>
        </li>
        <li>
            <a id="a_query_2" href="">课程名模糊查找</a>
        </li>
		<li>
            <a id="a_query_3" href="">任课教师姓名模糊查找</a>
        </li>
    </ul>
</div>
<script>
$(function () {
    $("#a_query_1").click(function(){
    	var string = $("#in").val();
    	var url = "../Department/course?id=${id}&Ano=${Ano}&Status=0&iqStatus=0&Cno=" + string;
    	$('#a_query_1').attr('href', url);
    });
    $("#a_query_2").click(function(){
    	var string = $("#in").val();
    	var url = "../Department/course?id=${id}&Ano=${Ano}&Status=0&iqStatus=0&CDimName=" + string;
    	$('#a_query_2').attr('href', url);
    });
    $("#a_query_3").click(function(){
    	var string = $("#in").val();
    	var url = "../Department/course?id=${id}&Ano=${Ano}&Status=0&iqStatus=0&TDimName=" + string;
    	$('#a_query_3').attr('href', url);
    });
});  
</script>
<div class="divcenter">
        	<button class="nowc" type="button" onclick="dianwo()">添加课程信息</button>
		<div class="zhezhao" id='zhezhao'>
			<div class="tankuang">
				<div id="header">
					<div style="text-align: left;">添加课程信息</div>
					<div class="header-right" onclick="hidder()">x</div>
				</div>
				<!----------------------------------------------内容----------------------------------->
				<div class="divcenter">
    <div style="height: 40px"></div>
    <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
    <form style="text-align: center;" action="../Department/insertcourse">
        <%-- 表格使用align="center"居中显示 --%>
        <table style="border-collapse:separate; border-spacing:0px 10px;border-style:none" align="center" >
            <tr>
                <td>课程号：</td>
                <td><input id=Cno" name="Cno" placeholder="请输入课程号" required ></td>
            </tr>
            <tr>
                <td>课程名：</td>
                <td><input id="Cname" name="Cname" placeholder="请输入课程名" required></td>
            </tr>
            <tr>
                <td>课程学分：</td>
                <td><input id="Ccredit" name="Ccredit" placeholder="请输入课程学分" required></td>
            </tr>
            <tr>
                <td>课程学时：</td>
                <td><input id="Cperiod" name="Cperiod" placeholder="请输入课程学时" required></td>
            </tr>
            <tr>
                <td>任课教师：</td>
                <td><input id="Tno" name="Tno" placeholder="请输入任课教师" required></td>
                <td><input id="id" name="id" type="hidden" value="${id}"></td>
            </tr>
        </table>
        <table style="border-style:none" align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" value="增加">
                </td>
                <td>
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
        </form>
</div>
			</div>
		</div>
		<script type="text/javascript">
			document.getElementById('zhezhao').style.display="none";
			function dianwo(){
				document.getElementById('zhezhao').style.display="";
			}
			function hidder(){
				document.getElementById('zhezhao').style.display="none";
			}
		</script>
</div>
<div class="divcenter">
		<div class="zhezhao" id="updatediv">
			<div class="tankuang">
				<div id="header">
					<div style="text-align: left;">修改课程信息</div>
					<div class="header-right" id="updateclosediv">x</div>
				</div>
				<!----------------------------------------------内容----------------------------------->
				<div class="divcenter">
    <div style="height: 40px"></div>
    <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
    <form style="text-align: center;">
        <%-- 表格使用align="center"居中显示 --%>
        <table id="updatetable" style="border-collapse:separate; border-spacing:0px 10px;border-style:none" align="center" >
            <tr>
                <td>课程号：</td>
                <td id="Cno_u" name="Cno"></td>
            </tr>
            <tr class="rup">
                <td>课程名：</td>
                <td class="up" id="Cname_u" name="Cname"></td>
            </tr>
            <tr class="rup">
                <td>课程学分：</td>
                <td class="up" id="Ccredit_u" name="Ccredit"></td>
            </tr>
            <tr class="rup">
                <td>课程学时：</td>
                <td class="up" id="Cperiod_u" name="Cperiod"></td>
            </tr>
            <tr>
                <td>任课教师：</td>
                <td id="Tno_u" name="Tno"></td>
                <td type="hidden" name="id" value="${id}"></td>
            </tr>
        </table>
        <table style="border-style:none" align="center">
            <tr style="text-align: center">
                <td>
                    <button id="subcourse" type="button">修改</button>
                </td>
            </tr>
        </table>
        </form>
</div>
</div>
</div>
<script type="text/javascript">
	var row=0;
	$('#updatediv').hide();
   	$(function(){
   		$('button#update').click(function(){
   				$('#updatediv').show();
   				var ob = $(this).parents("tr");
   				row = ob.find("td").eq(0).text();
   				row = row - '${page.start}';
   				$('#Cno_u').html(ob.find("td").eq(1).text());
   				$('#Cname_u').html(ob.find("td").eq(2).text());
   				$('#Ccredit_u').html(ob.find("td").eq(3).text());
   				$('#Cperiod_u').html(ob.find("td").eq(4).text());
   				$('#Tno_u').html(ob.find("td").eq(5).text());
   			});
   		$('#updateclosediv').click(function(){
   			$('#updatediv').hide();
		});
   	});
   	
	$('table#updatetable').on("dblclick", "td.up", function(){
		var $td=$(this);
	    var _t=$td.text();
	    var _w=$td.width();
		var _h=$td.height();
		$td.html("").css({"padding":0});
		var $input=$("<input type='text'>");
	    $input.appendTo($td).width(_w).height(_h).val(_t).focus().blur(function(){
	    	var v = $(this).val();
	    	$td.html($(this).val());
	    });
	})
	
	$('#subcourse').click(function(){
		var listcourse = new Array();
		var Cno = $('table#updatetable').find('tr').eq(0).find('td').eq(1).html();
		listcourse.push(Cno);
		var trList = $('#updatetable').find("tr.rup");
		for(var i=0;i<trList.length;i++){
			var tup = trList.eq(i).find("td.up").html();
			listcourse.push(tup);
		}
		$.ajax({
			url:"../Department/updatecourse",
			type:"post",
			data:{
				"listcourse":listcourse,
				"Ano":'${Ano}',
				"leng":trList.length+1,
				"id":'${id}'
			},
			traditional:true,
			success:function(data){
				alert("修改成功！")
				location.href="../Department/course?id=${id}&Ano=${Ano}&Cno=${Cno}&Staus=0&iqStatus=0"
			}
		});
	})
</script>
   </div>
	
	<!---------表格----->
	<div>
		<table id="result" class="table table-bordered  table-condensed" align="center" width="100%" border=1 style="background: rgba(255,255,255,.4)">
        <caption align="center">${NTime}课程信息 - 共${page.total}条 - 当前第${Integer((page.start/10)+1)}页</caption>
        <thead>
        <tr class="success">
        	<th>序号</th>
            <th>课程号</th>
            <th>课程名</th>
            <th>课程学分</th>
            <th>课程学时</th>
            <th>任课教师</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${listc}" var="listc" varStatus="status">
            <tr>
            	<td>${page.start + status.count}</td>
                <td>${listc.cno}</td>
                <td>${listc.cname}</td>
                <td>${listc.ccredit}</td>
                <td>${listc.cperiod}</td>
                <td>${listt[status.index]}</td>
                <td>
                <button class="nowc" type="button" id="update">修改</button>  
                <button type="button" onclick="window.location.href='../Department/grade?id=${id}&Ano=${Ano}&Cno=${listc.cno}&Tno=${listc.tno}'">查看课程详情</button>   
                <button class="nowc" type="button" onclick="window.location.href='../Department/deletecourse?id=${id}&Ano=${Ano}&Cno=${listc.cno}'">删除</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
       </table>
	</div>
	<nav class="pageDIV" align="center" style="position:absolute; top: 90%;left:42.5%">
    <ul class="pagination">
        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?id=${id}&Ano=${Ano}&Status=0&iqStatus=0&starts=0&Cno=${Cno}&CDimName=${CDimName}&TDimname=${TDimname}">
                <span>«</span>
            </a>
        </li>

        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?starts=${page.start-page.count}&id=${id}&Ano=${Ano}&Status=0&iqStatus=0&Cno=${Cno}&CDimName=${CDimName}&TDimname=${TDimname}">
                <span>‹</span>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a
                            href="?starts=${status.index*page.count}&id=${id}&Ano=${Ano}&Status=0&iqStatus=0&Cno=${Cno}&CDimName=${CDimName}&TDimname=${TDimname}"
                            <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                    >${status.count}</a>
                </li>
            </c:if>
        </c:forEach>

        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <a href="?starts=${page.start+page.count}&id=${id}&Ano=${Ano}&Status=0&iqStatus=0&Cno=${Cno}&CDimName=${CDimName}&TDimname=${TDimname}">
                <span>›</span>
            </a>
        </li>
        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <a href="?starts=${page.last}&id=${id}&Ano=${Ano}&Status=0&iqStatus=0&Cno=${Cno}&CDimName=${CDimName}&TDimname=${TDimname}">
                <span>»</span>
            </a>
        </li>
    </ul>
</nav>
</div>
<script type="text/javascript">
//根据后台返回状态给予提示
if('${Status}'==1){
	if('${iqStatus}'==4)
		alert('添加失败！')
	if('${iqStatus}'==1)
		alert('添加成功！')
	if('${iqStatus}'==2){
		alert('重置成功！')
		location.href="../Department/course?&id=${id}Ano=${Ano}&Cno=${Cno}&Staus=0&iqStatus=0"
	}
	if('${iqStatus}'==3)
		alert('删除成功！')
}
if('${id}'!=0){
	$('button.nowc').hide();
}
</script>	
</body>
</html>