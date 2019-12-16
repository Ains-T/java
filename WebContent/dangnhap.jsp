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
<title>Log in</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">HomePage</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      <% if(session.getAttribute("un")!=null){ 
           session.removeAttribute("un");
           session.removeAttribute("gh");
      }
          %>
          <li><a href="sachcontroller">Shop</a></li>
          <li><a href="muacontroller">Cart</a></li>
          <li><a href=""><span class="glyphicon glyphicon-user"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
	<form action="dangnhapcontroller" method="post" >
		un: <input type='text' name='tenDN' class="form-control"><br>
		pass: <input type='password' name='txtpass' class="form-control"><br>
		<input type="submit" name="but1" value="Login" class="btn-primary">
	</form>
	<a href="dangnhapcontroller?kt=1">test gui du lieu</a>
  
</div>

</body>
</html>