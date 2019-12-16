<%@page import="bean.loaibean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="bo.GioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Trang 1</title>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">HomePage</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      
      
          <li><a href="sachcontroller">Shop</a></li>
          <% 
          DecimalFormat dd=new DecimalFormat("###,###");
          int k=0;
          long l=0;
          if(session.getAttribute("gh")!=null)
          { GioHangBo gh=(GioHangBo)session.getAttribute("gh");
            k=gh.ds.size();
            l=gh.Tong();
          }
          %>
          <li><a href="muacontroller">Cart
          <%if(session.getAttribute("un")!=null){ %>
          (<%=k %>):<%=dd.format(l)%>vnd</a></li>  
          <%} %>
            <% if(session.getAttribute("un")!=null){ %>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=session.getAttribute("un")%></a></li>
      <li><a href="dangnhapcontroller"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
      <%}else{ %>
      <li><a href="dangnhapcontroller"><span class="glyphicon glyphicon-user"></span> Log in</a></li>
      <%} %>
    </ul>
  
  </div>
</nav>
  
<div class="container-fluid">
	 <h3>Page 1</h3>
	 <table width="1500" align="center">
	 <tr>
	 	<td valign="top" width="300">
	 	<%ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai"); %>
	 	<table width="300" class="table table-hover table-border" border="3">
	 	<%  
	 		for(loaibean ls:dsloai){
	 		%>
	 		<tr>
	 		<td>
	 		<a href="sachcontroller?ml=<%=ls.getMaloai()%>"><%=ls.getTenloai() %></a>
	 		</td>
	 		</tr>
	 	<%} %>
	 	</table>
	 	<td valign="top" width="800">
	 	<table width='800' align='center'>
		<%
			ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
			int ss = ds.size();
			for (int i = 0; i < ss; i++) {
				sachbean s = ds.get(i);
		%>
		<tr>
			<td ><img src="<%=s.getAnh()%>" width="400" height="400"
				align='çenter'><br> <%=s.getTensach()%><br> <%=s.getTacgia()%><br>
				<%=s.getGia()%><br>
				 <a href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
				 <img
					src='buynow.jpg'>
				 </a>
			<hr></td>
			<%
				i++;
					if (i < ss) {
						s = ds.get(i);
					}
			%>
			<td><img src="<%=s.getAnh()%>" width="400" height="400"
				align='çenter'><br> <%=s.getTensach()%><br> <%=s.getTacgia()%><br>
				<%=s.getGia()%><br> 
				 <a href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
				 <img
					src='buynow.jpg'>
				 </a>
			<hr></td>
		</tr>
		<%
			}
		%>
		</table>
	 	</td>
	 	<td valign="top" width="300">
	 		<table >
	 		<form  method="post" action='sachcontroller'>
 				Tìm kiếm: <input type="text" name='txttim'> 
 		         <input type="submit" name="but1" value="Search" class="btn-primary">
 				
			</form>
	 	</table>
	 	</td>
	 </tr>
	 </table>
	 
</div>

</body>
</html>