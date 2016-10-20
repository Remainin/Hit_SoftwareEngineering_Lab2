<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/3.jpg" height="100%" width="100%"/>    
</div> 
<head>
<title>Insert title here</title>
</head>
<body>

 <form action="" name="form1">
 <table align="center">
 		<tr><td align="center">欢迎来到我的图书馆！</td></tr>
 		<tr><td align="center">
    <input type="button"  value="显示全部图书" onclick="form1.action='showall.action';form1.submit();"/>
    <input type="button"  value="查询图书" onclick="form1.action='search.action';form1.submit();" />
	 <input type="button"  value="添加图书" onclick="form1.action='add.action';form1.submit();" />
	<tr><td align="center">made by 张茗帅</td></tr>
 	</table>
</form>
<div align="center" style="color:red;font-family:楷体;font-size:20px">
<br>注：在全部图书界面和查询图书后界面，您可以对图书进行更新和删除操作！
</div>
</body>
</html>