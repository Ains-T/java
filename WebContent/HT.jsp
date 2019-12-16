<%@page import="NghiaBean.SinhVienBean"%>
<%@page import="NghiaBean.KhoaBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Nghĩa</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <form class="form-inline align-item-center" action="TimkiemController">
    <h6 style="color: white">Nhập họ tên hoặc địa chỉ :</h4>
    <input class="form-control mr-sm-2" type="text" placeholder="Search" name="tim">
    <button class="btn btn-warning" type="submit">Search</button>
  </form>
</nav>
<h1 align="center">Danh sách Sinh Viên</h1>
 <table width="1500" align="center" class="pt-3 mt-3">
 	<tr>
 		<td valign="top" width="300">
 		<%ArrayList<KhoaBean> khoa=(ArrayList<KhoaBean>)request.getAttribute("dskhoa"); %>
	 	<table width="300" class="table table-hover table-border"  align="left">
	 	<%  
	 		for(KhoaBean s:khoa){
	 		%>
	 		<tr>
	 		<td>
	 		<a href="HTController?mk=<%=s.getMakhoa()%>" class="text-dark"><%=s.getTenkhoa()%></a>
	 		</td>
	 		</tr>
	 	<%} %>
	 	</table>
 		</td>
 		<td valign="top" width="800">
 		<%ArrayList<SinhVienBean> sv=(ArrayList<SinhVienBean>)request.getAttribute("dssv"); %>
 			<table width='800' class="table table-hover table-border" border="3" align='center'>
 			<tr class="bg-danger border-bottom">
	 		 <td>Mã Sinh Viên</td>
	 		 <td>Họ tên</td>
	 		 <td>Ngày sinh</td>
	 		 <td>Địa chỉ</td>
	 		 <td>Mã Khoa</td>
	 		</tr>
	 		<%  
	 		for(SinhVienBean s:sv){
	 		%>
	 		<tr>
	 		<td><%=s.getMasv() %></td>
	 		<td><%=s.getHoten() %></td>
	 		<td><%=s.getNgaysinh() %></td>
	 		<td><%=s.getDiachi() %></td>
	 		<td><%=s.getMakhoa() %></td>
	 		</tr>
	 	<%} %>
 			</table>
 		</td>
 	</tr>
 </table>
</body>
</html>