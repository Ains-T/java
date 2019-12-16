<%@page import="bo.GioHangBo"%>
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
gh.Xoatoanbo();
session.setAttribute("gh", gh);
response.sendRedirect("muacontroller");

%>
</body>
</html>