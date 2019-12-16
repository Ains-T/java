<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resgiter.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Admin Sách</title>
</head>
<body>
<%if(request.getAttribute("ktnhap")!=null)
	out.print("<script>alert('Them khong dc');</script>"); %>
<%ArrayList<loaibean> loai=(ArrayList<loaibean>)request.getAttribute("dsloai"); %>
<div align="center">
<form method="post" action="SachAdminController" enctype= "multipart/form-data" >
<label><strong>Mã sách</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txtmasach" placeholder="Mã sách" value="" required>
<label><strong>Tên sách</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txttensach" placeholder="Tên sách" value="" required>
<label><strong>Tác giả</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txttg" placeholder="Tác giả" value="" required>
<label><strong>Giá</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txtgia" placeholder="Giá" value=""  required>
<label><strong>Số lượng</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txtsl" placeholder="Số lượng" value="" required>
<label><strong>Ngày nhập</strong></label>
<input class=" form-control col-md-4 pt-1" type="date" name="txtngay"  value="" required>
<label><strong>Ảnh</strong></label>
<input class=" form-control col-md-4 pt-1" type="file" name="txtanh" value="" required>
<label><strong>Số tập</strong></label>
<input class=" form-control col-md-4 pt-1" type="text" name="txtst" placeholder="Số tập" value="" required>
<label><strong>Mã loại</strong></label>
<select name="txtmaloai" required>
<%  
for(loaibean s:loai){
%>
 <option value="<%=s.getMaloai()%>" ><%=s.getMaloai()%></option>
 <%} %>
</select>

<table class="mt-2">
<tr>
<td>
<input type="submit" name="butthem" value="Thêm" ><br>
</td>
<td>
<input type="submit" name="butsua" value="Sửa" ><br>
</td>
</tr>
</table>
</form>
</div>
<h2>Danh sách Sách</h2>
	
	<table width="1500" class=" m-2"  align="center" border="1">
	 	
	 		<tr>
	 		<td><h6>Mã sách</h6></td>
	 		<td><h6>Tên sách</h6></td>
	 		<td><h6>Tác giả</h6></td>
	 		<td><h6>Số lượng</h6></td>
	 		<td><h6>Ảnh</h6></td>
	 		<td><h6>Giá</h6></td>
	 		<td><h6>Số tập</h6></td>
	 		<td><h6>Mã loại</h6></td>
	 		<td><h6>Ngày nhập</h6></td>
	 		<td><h6>Chọn</h6></td>
	 		<td><h6>Xóa</h6></td>
	 		</tr>
	 		<%ArrayList<sachbean> sach=(ArrayList<sachbean>)request.getAttribute("dssach"); %>
	 		<%  
	 		for(sachbean s:sach){
	 		%>
	 		<tr>
	 		<td><%=s.getMasach()%></td>
	 		<td><%=s.getTensach()%></td>
	 		<td><%=s.getTacgia()%></td>
	 		<td><%=s.getSoluong()%></td>
	 		<td><%=s.getAnh()%></td>
	 		<td><%=s.getGia()%></td>
	 		<td><%=s.getSotap()%></td>
	 		<td><%=s.getMaloai()%></td>
	 		<td><%=s.getNgaynhap()%></td>
	 		<td>
	 		<a href=""><button>Chọn</button></a>
	 		</td>
	 		<td>
	 		<a href=""><button>Xóa</button></a>
	 		</td>
	 		</tr>
	 	<%} %>
	 	</table>
</body>
</html>