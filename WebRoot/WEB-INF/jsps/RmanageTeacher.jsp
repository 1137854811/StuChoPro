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
    
    <title>教师管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
	
	<link rel="stylesheet" type="text/css" href="css/style2.css">
		<style type="text/css">
			table {
				border-collapse: collapse;
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
	<form action="JiansuoTeacher.do" method="post">
		<p>查找教师：<input type="text" name="Tid" required="required" >&nbsp;&nbsp;<input type="submit" value="检索" class="jiansuo"><br></p>
	</form>
	<form method="post" action="JiansuoTeacher.do">
	<table cellpadding="10" cellspacing="10">
	<tr><th>&nbsp;&nbsp;&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;账号&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;&nbsp;&nbsp;</th><th>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
	 	<c:forEach items="${RmanageTeacher }" var="n">
			<tr>
			<td align="center">${n.name }</td>
			<td align="center">${n.id }</td>
			<td align="center">${n.password }</td>
			<td><button type="submit" value="${n.id }" class="check" name="RcheckT">查看</button>&nbsp;<button type="submit" name="RdeleteT" value="${n.id }"  class="delete" onclick="return judge();">删除</button></td>
			</tr>
		</c:forEach>
	</table>
  	</form>
	  	<form action="JiansuoTeacher.do" method="post">
	  		<button class="jiansuo" type="submit" value="RAddTea" name="RaddTea" style="width: 80px">添加教师</button>
	  	</form>
  	</center>
  </body>
</html>
