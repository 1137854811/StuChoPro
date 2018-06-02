<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>

	<link rel="stylesheet" type="text/css" href="css/style2.css">
<style type="text/css">
			@CHARSET "UTF-8";
			body{
				background-image: url(img/6.jpg);
				background-repeat: no-repeat;
				background-size: 100%;
				background-attachment:fixed
			}
			h1{
				margin: 0;
							
				font-family: 华文行楷;
				font-size: 50px;
				position: fixed;
			}
			.nav ul{
				position: fixed;
				background-color: dodgerblue;
				height: 30px;
				width: 100%;
				list-style: none;
						
			}
			.nav ul li{
				display: inline;
			}
			.nav ul li a{
				color: #FFFFFF;
				float: left;
				text-decoration: none;
				font-size: x-large;
				text-align: center;
				/*	padding: 20px;*/
				margin-left: 10px;
			/*	margin-top: 10px;*/
				margin-right: 10px;
				outline: none;
							
			}
			.jiansuo{
				background-color: green;
				color:white;
				height: 30px;
				width:60px;
				border-radius:8px;
				border: 2px;
			} 
			
			.check{
				background-color: blue;
				color:white;
				height: 30px;
				width: 60px;
				border-radius:8px;
				border: 2px;
			}
			.delete{
				background-color: black;
				color:white;
				height: 30px;
				width: 50px;
				border-radius:8px;
				border: 2px;
			}
			.tijiao{
				margin-top:10px;
				background-color: green;
				color:white;
				height: 30px;
				width: 100px;
				border-radius:8px;
				border: 5px;
			}
			p{
				font-family: 华文行楷;
				font-size: 20px;
			}
			input {
				height: 30px;
				width: 200px;
				border: 2px soild;
			}
			table {
				border-collapse: collapse;
				
				border-top: 2px solid;
				border-bottom: 2px soild;
			}
			table td {
				border-top: 1px solid;
				border-bottom: 1px solid;
			}
		</style>
  </head>
  
  <body>
    <jsp:include page="root.jsp"></jsp:include>

	<center>
	<form action="SelectStudent.do" method="post">
		<p>查找学生：<input type="text" required="required" name="Sid"  >&nbsp;&nbsp;<input type="submit" value="检索" class="jiansuo"></p>
	</form>
	<form action="SelectStudent.do" method="post" >
	
	<table  cellpadding="10">
	<tr><th>&nbsp;&nbsp;&nbsp;&nbsp;账号&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
	 <c:forEach items="${RmanageStudent }" var="n">
		<tr>
		<td align="center">${n.id }</td>
		<td align="center">${n.name }</td>
		<td align="center">${n.password }</td>
		<td><button type="submit" name="SCheck" style="height: 30px;width:50px;color: white;border-radius:8px;background-color: blue;" value="${n.id }">查看</button>&nbsp;&nbsp;<button name="RdeleteS" type="submit" value="${n.id }" style="height: 30px;width: 50px;color: white;border-radius:8px;background-color: black;" onclick="return delete1();">删除</button></td></tr>
	 </c:forEach>
	</table>
  	</form>
  	<form action="RAddstu.do" method="post">
  		<button type="submit" name="RaddStu" style="height: 30px;width:80px;color: white;border-radius:8px;background-color: green;">添加学生</button>
  	</form>
  	</center>
  </body>
</html>
