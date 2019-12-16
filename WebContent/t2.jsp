<%@page import="java.text.DecimalFormat"%>
<%@page import="bo.GioHangBo"%>
<%@page import="bean.GioHangBean"%>
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
<title>Trang 2</title>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">HomePage</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
        <% if(session.getAttribute("un")==null){ 
        	session.removeAttribute("gh");
           response.sendRedirect("dangnhapcontroller");
          }else{
        	  DecimalFormat dd=new DecimalFormat("###,###");
        	  int k=0;
        	  long l=0;
              if(session.getAttribute("gh")!=null)
              { GioHangBo gh=(GioHangBo)session.getAttribute("gh");
                k=gh.ds.size();
                l=gh.Tong();
              }
          %>
          <li><a href="sachcontroller">Shop</a></li>
          <li><a href="muacontroller">Cart 
           <%if(session.getAttribute("un")!=null){ %>
          (<%=k %>):<%=dd.format(l)%>vnd</a></li>  
          <%} %>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=session.getAttribute("un")%></a></li>
         <li><a href="dangnhapcontroller"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Page 2</h3>
  <% int stt=0;
if(session.getAttribute("gh")!=null)
{  
	GioHangBo gh=(GioHangBo)session.getAttribute("gh");
	if(gh.ds.size()==0)
	{%>
	<h1 align="center">Gio Hang Rong</h1>
	<div align="center"><a href="sachcontroller"><img  src="buynow.jpg"></a></div>
	 <%
	}
	else{
	%>
	<table width='1000' align='center' border="1" >
	<% for(GioHangBean g: gh.ds){%>
	<tr>
	<td><input type="checkbox" value="<%=g.getMasach()%>"></td>
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
    <div align="right"> 
	<a href="cleargh.jsp" >	
	<button class="bg-danger">Clear All</button>
	</a>
	</div>
	   <div align="right"> 
	<a href="cleargh.jsp" >	
	<button class="bg-danger">Xoa</button>
	</a>
	</div>
	
	<div align="right">Tong:<%=dd.format(gh.Tong()) %></div>
	<div align="center"><a href="sachcontroller"><img  src="buynow.jpg"></a></div>
	<%
}}
          }
%>
</div>

</body>
</html>