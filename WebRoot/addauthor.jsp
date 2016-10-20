<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/2.jpg" height="100%" width="100%"/>    
</div> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addauthor.action" method = "post">
<table align = "center"><tr><td>
该作者不在数据库中！</td><td>
</td></tr><tr><td>
请补全该作者相关信息</td><td>
</td></tr><tr><td>
姓名:<s:property value="author1"/>
</td></tr><tr><td>
AuthorID：</td><td> <input type="text" name="bookauthor">
</td></tr><tr><td>
年龄: </td><td> <input type="text" name="author2">
</td></tr><tr><td>
国籍:</td><td>  <input type="text" name="author3">
</td></tr><tr><td>
<input type="submit" value="提交">
</td></tr></table>
</form>
</body>
</html>