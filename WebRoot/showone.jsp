<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/1.jpg" height="100%" width="100%"/>    
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
 		</tr>
 		<c:forEach items="${myAu}" var="m">
 	
 		  <td>${m}</td>
 		
 		</c:forEach>
 	</table>
	<table border="2" align="center">
 		<tr><td>书籍信息</td></tr>
 		<tr>
 			<td align ="center">ISBN</td>
 			<td>Title</td>
 			<td>AuthorID</td>
 			<td>Publisher</td>
 			<td>PublishDate</td>
 			<td>Price</td></tr><tr>
 		<c:forEach items="${myBo}" var="u">
 		 	<td> ${u}</td >
 		</c:forEach>
 		</tr>
 	</table>
<div align="center" style="color:red;font-family:楷体;font-size:20px">
 <c:forEach items="${myTi}" var="q">
 		 <br>
 		 	<a href="delete.action?name=${q}"><button type="button">删除:${q}</button></a>
 		 	<a href="update.action?name=${q}"><button type="button">更新:${q}</button></a>
 </c:forEach>
  <br><a href="home.action"><button type="button">回到主页面</button></a> 
 	<br>made by 张茗帅
 	</div>
</body>
</html>