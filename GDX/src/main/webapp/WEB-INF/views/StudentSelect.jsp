<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

</head>
<body style="background: url('../img/y15.jpg');background-size: cover;">

<!---在这里，搜索框--->
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation" >
    <ul class="nav navbar-nav navbar-right">
        <li><a href="../Tourist/welcome"><span class="glyphicon " ></span>注销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    </ul>
    <div class="container">
        <div class="navbar-header" >
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../Student/Main?sno=${sno}"  >学生成绩管理系统 -- 学生</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav" >
                <li><a href="../Student/self?sno=${sno}"><span class="glyphicon "></span> 学生个人信息</a></li>
                <li><a href="../Student/select?sno=${sno}&Status=0&iqStatus=0" target="_Self"style="background-color: #666666"><span class="glyphicon "></span> 学生选课</a></li>
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
<div >
    <div class="div_clear" >
        <div >
            <div >
                <table class="gridtable" >
                    <caption style="color: black">未选课列表 - 共${page.total}门 - 当前第${Integer((page.start/10)+1)}页</caption>
                    <thead style="background-color: white">
                    <tr>
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
                    <c:forEach items="${listc}" var="listc" varStatus="status">
                        <tr>
                            <td width="5%">${page.start + status.count}</td>
                            <td width="16%">${listc.cno}</td>
                            <td width="16%">${listc.cname}</td>
                            <td width="16%">${listc.cperiod}</td>
                            <td width="16%">${listc.ccredit}</td>
                            <td width="16%">${listt[status.index].tname}</td>
                            <td width="20%" >
                                <a style="color: wheat" href="../Student/choice?sno=${sno}&cno=${listc.cno}">选课</a>&nbsp;
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<nav class="pageDIV" style="position:absolute; top:75%;left: 41.5%;background: transparent;color: white">
    <ul class="pagination">
        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
        <a href="?sno=${sno}&Status=0&iqStatus=0&starts=0&DimName=${DimName}">
            <span>«</span>
        </a>
        </li>

        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
        <a href="?starts=${page.start-page.count}&sno=${sno}&Status=0&iqStatus=0&DimName=${DimName}">
            <span>‹</span>
        </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                <a
                        href="?starts=${status.index*page.count}&sno=${sno}&Status=0&iqStatus=0&DimName=${DimName}"
                <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                >${status.count}</a>
                </li>
            </c:if>
        </c:forEach>

        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
        <a href="?sno=${sno}&Status=0&iqStatus=0&starts=${page.start+page.count}&DimName=${DimName}">
            <span>›</span>
        </a>
        </li>
        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
        <a href="?sno=${sno}&Status=0&iqStatus=0&starts=${page.last}&DimName=${DimName}">
            <span>»</span>
        </a>
        </li>
    </ul>
</nav><div class="search">
    <div class="../css/search">
    <form action="../Student/query" class="bar1" style="position: absolute;top: 10%;left: 21%">
        <input type="text" placeholder="请输入..." name="DimName"/>
        <input type="hidden" name="sno" value=${sno}>
        <input type="hidden" name="Status" value=0>
        <input type="hidden" name="iqStatus" value=0>
        <button type="submit">搜索</button>
    </form>
</div>
</div>
</body>
<script>
    //根据后台返回状态给予提示
    if('${Status}'==1){
        if('${iqStatus}'==1)
            alert('选课成功！')
        if('${iqStatus}'==2)
            alert('您已经选择此课程或学校没有开设此课程！')
        if('${iqStatus}'==3)
            alert('选课失败！')
    }
</script>
</html>