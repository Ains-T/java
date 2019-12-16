<%@page import="bean.DeKT_1_Bean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ĐỀ KT SỐ 1</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <form class="form-inline" action="DeKT_1_Controller">
    <h6 style="color: white">Nhập tên hàng hoặc tên nhà cung cấp:</h4>
    <input class="form-control mr-sm-2" type="text" placeholder="Search" name="tim">
    <button class="btn btn-warning" type="submit">Search</button>
  </form>
</nav>
<h1>Chi tiết hàng</h1>
<table class="table table-striped ">
<% ArrayList<DeKT_1_Bean> mathang = (ArrayList<DeKT_1_Bean>)request.getAttribute("dshang"); 
		for(DeKT_1_Bean s: mathang){%>
	<tr>
		<td width="200px">
		<img alt="" src="<%=s.getAnh()%>" width="200px"">
		</td>
		<td>
			Mã Hàng: <%=s.getMahang() %>
			<hr>
			Tên Hàng: <%=s.getTenhang() %>
			<hr>
			Nhà Cung Cấp: <%=s.getTennhacungcap()%>
			<hr>
			Giá: <%=s.getGia() %>
		</td>
		
	</tr>
	<%} %>
</table>
</body>
</html>