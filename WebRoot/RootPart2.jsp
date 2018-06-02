<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TeaPart2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
			#menu{
				margin:20px auto;
				/*background-color: darkgray;*/
			}
			#menu a{
				display: block;
				height: 34px;
				line-height:30px;
				text-indent:45px ;
				font-family:"微软雅黑 ";
				font-size: 15px;
				font-weight:bold;
				color:#00C;
				text-decoration:none;
				border-bottom:1px solid #dee;
				margin: 10px;
				
		</style>
	</head>
	<body onload="starttime()">
		<div id="menu">
			<a href="RstuResult.do" target="main_right">&nbsp;选&nbsp;题&nbsp;结&nbsp;果&nbsp;</a>
			<a href="Rcheckketi.do" target="main_right">&nbsp;课&nbsp;题&nbsp;申&nbsp;核&nbsp;</a>
			<a href="RmanageTeacher.do" target="main_right">&nbsp;教&nbsp;师&nbsp;管&nbsp;理&nbsp;</a>
			<a href="RmanageStudent.do" target="main_right">&nbsp;学&nbsp;生&nbsp;管&nbsp;理&nbsp;</a>
			<a href="login.jsp" target="login">&nbsp;退&nbsp;出&nbsp;系&nbsp;统&nbsp;</a>
			<a>&nbsp;当&nbsp;前&nbsp;时&nbsp;间：&nbsp;</a>
			<a id="time1"></a>
		</div>
	</body>
	<script>
			function starttime(){
				var d=new Date();
				var h=d.getHours();
				var m=d.getMinutes();
				var s=d.getSeconds();
				m=checktime(m);
				s=checktime(s);
				document.getElementById('time1').innerHTML=h+" : "+m+" : "+s;
				t=setTimeout('starttime()',500);
			}
			function checktime(i)
			{
				if(i<10)
				{
					i="0"+i;
					
				}
				return i;
			}
		</script>
</html>
