<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <title>Main</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../css/table1.css">
    <script src="../js/tblColor.js" type="javascript" rel="script"></script>
    <link rel="stylesheet" href="../css/btn1.css" type="text/css">
    <style>

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
<body >
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation" >

    <ul class="nav navbar-nav navbar-right">
        <li><a href="../Tourist/welcome"><span class="glyphicon " style="color: white"></span>注销&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
        </div>
    </div><!-- /.container -->

</div>

<div style="position:absolute; top: 80%;right: 10%">
	<button class="anniu" align="center" type="button" onclick="window.location.href='../Department/next?Ano=${Ano}'">本学期结束</button>
</div>

<div style="position: absolute;top: 40%;left: 40%">
    <div class="slide-btn">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选课开关</p>
        <div class="inner-on" id="inner_1">
            <input style="display:none;" type="checkbox" checked>

            <span class="left">ON</span><span class="space">&nbsp;</span><span class="right">OFF</span>
        </div>
    </div>
    <script type="text/javascript">
        document.getElementById("inner_1").onclick = function() {
            if (this.className == "inner-on") {
                this.style.left = -51 + "px";
                this.childNodes[1].checked = false;
                this.className = "inner-off";
                $.ajax({
                    url:"../Department/controllselect",
                    type:"post",
                    data:{
                        "selectStatus":"0"
                    },
                    traditional:true,
                    success:function(data){
                    }
                });
            }else{
                this.style.left = 0;
                this.childNodes[1].checked = true;
                this.className = "inner-on";
                $.ajax({
                    url:"../Department/controllselect",
                    type:"post",
                    data:{
                        "selectStatus":"1"
                    },
                    traditional:true,
                    success:function(data){
                    }
                });
            }
        }
    </script>
</div>
<div style="position: absolute;top: 40%;right: 40%">
    <div class="slide-btn">
        <p>&nbsp;&nbsp;成绩录入开关</p>
        <div class="inner-on" id="inner_2">
            <input style="display:none;" type="checkbox" checked>
            <span class="left">ON</span><span class="space">&nbsp;</span><span class="right">OFF</span>
        </div>
    </div>
    <script type="text/javascript">
        if('${entryStatus}'==0){
            document.getElementById("inner_2").style.left = -51 + "px";
            document.getElementById("inner_2").childNodes[2].checked = false;
            document.getElementById("inner_2").className = "inner-off";
        }

        if('${selectStatus}'==0){
            document.getElementById("inner_1").style.left = -51 + "px";
            document.getElementById("inner_1").childNodes[2].checked = false;
            document.getElementById("inner_1").className = "inner-off";
        }
        document.getElementById("inner_2").onclick = function() {
            if (this.className == "inner-on") {
                this.style.left = -51 + "px";
                this.childNodes[2].checked = false;
                this.className = "inner-off";
                $.ajax({
                    url:"../Department/controllentry",
                    type:"post",
                    data:{
                        "entryStatus":"0"
                    },
                    traditional:true,
                    success:function(data){
                    }
                });
            }else{
                this.style.left = 0;
                this.childNodes[2].checked = true;
                this.className = "inner-on";
                $.ajax({
                    url:"../Department/controllentry",
                    type:"post",
                    data:{
                        "entryStatus":"1"
                    },
                    traditional:true,
                    success:function(data){
                    }
                });
            }
        }
        if('${Status}'==1){
            if('${nextStatus}'==1){
                alert("成功进入下学期，祝下学期顺利")
            }
        }
    </script>
</div>

<div class="wel"style="padding: 24px 48px ;position:absolute; top: 50%;right: 43%">
    <h1>&nbsp;&nbsp;&nbsp;:)</h1>
    <p>欢迎${Aname}老师使用 <b>学生成绩管理系统</b>!</p>
</div>


</body>
</html>