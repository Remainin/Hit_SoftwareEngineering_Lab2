<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/3.jpg" height="100%" width="100%"/>    
</div> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <table border="2" align="center">
 		<tr><td>作者信息</td></tr>
 		<tr>
 			<td align ="center">AuthorID</td>
 			<td>AuthorName</td>
 			<td>AuthorAge</td>
 			<td>Country</td>
 			</tr><tr>
 		<c:forEach items="${myAu}" var="m">
 		  <c:forEach items="${m}" var="mm">
 		 	<td align ="center">${mm}</td >
 			</c:forEach>
 		</c:forEach>
 		</tr>
 	</table>
	<table border="2" align="center">
 		<tr><td>该作者的书籍信息如下：</td></tr>
 		<tr>
 			<td>Title</td>
 		  <c:forEach items="${myTi}" var="uu">
 		  <tr>
 		 	<td align ="center">
 		 	<a href="show.action?name=${uu}">${uu}</a>
 		 	</td >
 		 	<td align ="right">
 		 	<a href="delete.action?name=${uu}"><button type="button">删除</button></a>
 			</td>
 			<td align ="right">
 		 	<a href="update.action?name=${uu}"><button type="button">更新</button></a>
 			</td>
 			</tr>
 			</c:forEach>
 	</tr>
 	</table>
<div align="center" style="color:red;font-family:楷体;font-size:20px">
 	<br>注：点击书籍名称可以查看该书籍详细信息！
  <br><a href="home.action"><button type="button">回到主页面</button></a> 
</div>
</body>
</html>