<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/3.jpg" height="100%" width="100%"/>    
</div> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ taglib prefix="s" uri="/struts-tags" %>
<title>Insert title here</title>
</head>
<body>
<form action="" name="form2">
   
	<table border="2" align="center">
 		<tr><td>我的全部书籍</td></tr>
 		<tr>
 			<td align ="center">Title</td>
 		</tr>
 		<c:forEach items="${my}" var="uu">
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
 	</table>
 </form>
<div align="center" style="color:red;font-family:楷体;font-size:20px">
 注：点击书籍名称可以查看该书籍详细信息！
 <a href="home.action"><button type="button">回到主页面</button></a> 
</div></body>
</html>