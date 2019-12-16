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
int stt=0;
if(session.getAttribute("gh")!=null)
{  
	GioHangBo gh=(GioHangBo)session.getAttribute("gh");
	if(gh.ds.size()==0)
	{%>
	<h1 align="center">Gio Hang Rong</h1>
	<div align="center"><a href="Htsach.jsp"><img  src="buynow.jpg"></a></div>
	 <%
	}
	else{
	%>
	<table width='1000' align='center' border="1" >
	<% for(GioHangBean g: gh.ds){%>
	<tr>
	<td><%=g.getMasach() %></td>
	<td><%=g.getTensach() %></td>
	<td><%=g.getTacgia() %></td>
	<td><%=g.getGia() %></td>
	<td>
	<form method="post" action="suagh.jsp?ms=<%=g.getMasach()%>&ts=<%=g.getTensach()%>&tg=<%=g.getTacgia()%>&gia=<%=g.getGia()%>">
		<input type="text" name='txtsua' value="<%=g.getSoluong()%>">
		<input type='submit' name='sua' value="Chinh sua">
	</form>
	</td>
	<td>
	<form method="post" action="xoagh.jsp?ms=<%=g.getMasach()%>">
		<input type='submit' name='xoa' value="Xoa">
	</form>
	</td>
	<td><%=g.getThanhtien()%></td>
	<%
	} %>
   </tr>
	</table>
	
	<div align="right">Tong:<%=gh.Tong() %></div>
	<div align="center"><a href="Htsach.jsp"><img  src="buynow.jpg"></a></div>
	<%
}}

%>
</body>
</html>