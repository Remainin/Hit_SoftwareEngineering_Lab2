<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="photo/2.jpg" height="100%" width="100%"/>    
</div> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addbook.action" method = "post">
<table align = "center"><tr><td>
请输入新书籍的信息：</td><td>
</td></tr><tr><td>
ISBN</td><td> <input type="text" name="book0">(输入数字)
</td></tr><tr><td>
书名: </td><td> <input type="text" name="book1">
</td></tr><tr><td>
作者姓名:</td><td>  <input type="text" name="author1">
</td></tr><tr><td>
出版商: </td><td> <input type="text" name="book3">
</td></tr><tr><td>
出版日期:</td><td> <input type="text" name="book4">(按照XXXX-XX-XX格式书写)
</td></tr><tr><td>
价格:  </td><td>  <input type="text" name="book5">(单位：美元  保留两位小数)
</td></tr><tr><td>
<input type="submit" value="提交">
</td></tr></table>
</form>

</body>
</html>