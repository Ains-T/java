<%@page import="bo.sachbo"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Hiển thị sách</title>
</head>
<body
	background="https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-040.jpg">
	<h1 class="pt-5" align="center" style="color: #ff6666">Thông Tin
		Sách</h1>
	<table class="table-light mt-5" width="1000" height="470"
		align="center" border="3">
		<tr>
			<td width="200" align="center">
				<div class="mb-5">
					<strong>Mã sách</strong>
				</div>
				<hr color="black"> <%
 	sachbo sach = new sachbo();
 	for (sachbean s : sach.getsach()) {
 %> <a
				href="hienthi.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>
  &tg=<%=s.getTacgia()%>&img=<%=s.getAnh()%>"
				style="color: black"><%=s.getMasach()%></a>
			<hr width="150"> <%
 	}
 %>
			</td>
			<td class="table-dark">
				<%
					String ts = request.getParameter("ts");
					String tg = request.getParameter("tg");
					String img = request.getParameter("img");
				%>

				<p class="mb-1 pl-3 pt-2">
					<strong>Tên sách:</strong>
					<%=ts%></p>
				<br>
				<p class="mb-1 pl-3">
					<strong>Tác giả:</strong>
					<%=tg%></p>
				<br>
				<p class="mb-1 pl-3">
					<strong>Bìa sách:</strong>
				</p> <br>
				<div class="mb-5" align="center">
					<img src="<%=img%>" width="500" height="300">
				</div>
			</td>
		</tr>
	</table>
</body>

</html>