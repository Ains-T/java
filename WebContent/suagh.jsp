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
String ms = request.getParameter("ms");
String ts = request.getParameter("ts");
String tg = request.getParameter("tg");
String gia = request.getParameter("gia");
String anh = request.getParameter("anh");
String sl=request.getParameter("txtSoluong");
gh.Them(ms, ts, tg,Long.parseLong(gia),Long.parseLong(sl),anh);
session.setAttribute("gh", gh);
response.sendRedirect("muacontroller");

%>
</body>
</html>