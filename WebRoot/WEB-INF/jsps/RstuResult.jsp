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
    
    <title>选题结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/MyPractice/JsCheck.js" charset="gb2312"></script>
	<link rel="stylesheet" type="text/css" href="style2.css">
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
	<form action="DeleteRes.do" method="post" >
	 <table cellpadding="10">
	 <tr><th>课题id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>课题name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>学生id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>学生姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>老师id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th></tr>
		<c:forEach var="n" items="${RstuResult }">
         	<tr><td>${n.bno }</td><td>${n.bname }</td><td>${n.sno }</td><td>${n.sname }</td><td>${n.tno }</td><td><button value="${n.sno }" name="DeleteKETE" type="submit" onclick="return delete1();" style="background-color: black;color: white;height: 30px;width: 50px;border-radius:8px;">删除</button></td></tr>
    	</c:forEach>
     </table>
     </form>
     </center>
  </body>
</html>
