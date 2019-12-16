<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin đăng kí</title>
</head>

<% String kt= request.getParameter("kt");
String user = request.getParameter("user");
String ht = request.getParameter("ht");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
String mail1=request.getParameter("mail1");
String mail2=request.getParameter("mail2");
String gt=request.getParameter("gt");
String d=request.getParameter("d");
String m=request.getParameter("m");
String y=request.getParameter("y");
String tp=request.getParameter("tp"); 
%>
<body>

<h1>Thông tin tài khoản</h1>
	<p>Tài khoản: <%=user%></p>
	<p>Email: <%=mail1 %></p>
	<p>Giới tính: <%=gt%></p>
	<p>Ngày sinh: <%=d+"/"+m+"/"+y%></p>
	<p>Tỉnh/Thành Phố: <%=tp%></p>
	
</body>
</html>