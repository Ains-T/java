<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table width='1000' align='center'>
		<%
			
			ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
			int ss = ds.size();
			for (int i = 0; i < ss; i++) {
				sachbean s = ds.get(i);
		%>
		<tr>
			<td><img src="<%=s.getAnh()%>" width="400" height="400"
				align='çenter'><br> <%=s.getTensach()%><br> <%=s.getTacgia()%><br>
				<%=s.getGia()%><br> <a
				href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img
					src='buynow.jpg'></a>
			<hr></td>
			<%
				i++;
					if (i < ss) {
						s = ds.get(i);
					}
			%>
			<td><img src="<%=s.getAnh()%>" width="400" height="400"
				align='çenter'><br> <%=s.getTensach()%><br> <%=s.getTacgia()%><br>
				<%=s.getGia()%><br> <a
				href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img
					src='buynow.jpg'></a>
			<hr></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>