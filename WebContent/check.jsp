<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String un=request.getParameter("txta");
String pass=request.getParameter("txtb");
if(un.equals("abc")&& pass.equals("123"))
	response.sendRedirect("maytinhcuchuoi.jsp");
else
	response.sendRedirect("FormLogin.jsp");
	%>

</body>
</html>