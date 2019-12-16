<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin</title>
</head>
<body>
<% if(request.getAttribute("ktnhap")!=null)
	out.print("<script>alert('Them khong dc');</script>");
if(request.getAttribute("ktsua")!=null)
	out.print("<script>alert('Không sửa được');</script>");
if(request.getAttribute("ktxoa")!=null)
	out.print("<script>alert('Không xóa được');</script>");

loaibean l=(loaibean)request.getAttribute("chonloai");
%>
<form action="LoaiAdminController" method="post">
	<label>Mã loại:</label>
	<input class="form-control" type="text" name="txtmaloai" placeholder="Mã loại" value="<%=(l!=null?l.getMaloai():"") %>" required><br>
	<label>Tên loại:</label>
	<input class="form-control" type="text" name="txttenloai" placeholder="Tên loại" value="" required ><br>
	<input type="submit" name="butthem" value="Thêm" ><br>
	<input type="submit" name="butsua" value="Sửa" ><br>
	</form>
<h2>Danh sách các loại</h2>
	<%ArrayList<loaibean> loai=(ArrayList<loaibean>)request.getAttribute("dsloai"); %>
	<table width="300" class="table table-hover table-border"  align="left">
	 	<%  
	 		for(loaibean s:loai){
	 		%>
	 		<tr>
	 		<td><%=s.getMaloai()%></td>
	 		<td><%=s.getTenloai()%></td>
	 		<td>
	 		<a href="LoaiAdminController?mlchon=<%=s.getMaloai()%>">Chọn</a>
	 		</td>
	 		<td>
	 		<a href="LoaiAdminController?mlxoa=<%=s.getMaloai()%>">Xóa</a>
	 		</td>
	 		</tr>
	 	<%} %>
	 	</table>
</body>
</html>