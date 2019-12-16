<%@page import="bean.GioHangBean"%>
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
		String ms = request.getParameter("ms");
		String ts = request.getParameter("ts");
		String tg = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		if (giatam != null) {
			long gia = Long.parseLong(giatam);
			GioHangBo gh = null;
			//kiem tra xem da tao session
			if (session.getAttribute("gh") == null){
				//neu chua thi tao 1 session de luu giohangbo
				gh = new GioHangBo();
			session.setAttribute("gh", gh);
			}
			//b1 gan session vao bien gh
			gh = (GioHangBo) session.getAttribute("gh");

			//b2 thay doi bien gh
			//gh.Them(ms, ts, tg, gia, 1);
			//b3 luu bien vao lai session
			session.setAttribute("gh", gh);

			//hien thi gio hang
			response.sendRedirect("t2.jsp");
		}
	%>
</body>
</html>