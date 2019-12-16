<%@page import="bo.GioHangBo"%>
<%@page import="bean.GioHangBean"%>
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
 GioHangBo gh=(GioHangBo)session.getAttribute("gh");
String ms = request.getParameter("ms");
gh.Xoa(ms);
session.setAttribute("gh", gh);
response.sendRedirect("muacontroller");

%>
</body>
</html>