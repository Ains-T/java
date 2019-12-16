<%@page import="java.text.DecimalFormat"%>
<%@page import="bo.GioHangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Home</title>
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
          <% int k=0;
             long l=0;
             DecimalFormat dd=new DecimalFormat("###,###");
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
           <% if(session.getAttribute("un")==null){ %>
          <li><a href="dangnhapcontroller"><span class="glyphicon glyphicon-user"></span> Login</a></li>
          <%}else{ %>
           <li><a href="dangnhapcontroller"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
           <%} %>
    </ul>
  </div>
</nav>
  
<div class="container">
	<h1>Wecomle My Shopee</h1>
</div>

</body>
</html>