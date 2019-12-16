<%@page import="sun.security.util.Length"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resgiter.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body class="bg-light">
	<%	
	String user = request.getParameter("user");
	String ht = request.getParameter("ht");
	String pass1=request.getParameter("pass1");
	String pass2=request.getParameter("pass2");
	String mail1=request.getParameter("mail1");
	String mail2=request.getParameter("mail2");
	String gt=request.getParameter("gt");
	String d=request.getParameter("d");
	String m=request.getParameter("m");
	String y=request.getParameter("y");
	String tp=request.getParameter("tp");
	int kt=0;
%>
	<div class="container">

		<form method='post' action='FormResgiter.jsp' >
			<h1>Đăng kí tài khoản</h1>
			<div class="form-row mt-2">
				<div class="col-md-4">
					<input type="text" class="form-control" name="user"
						placeholder="Nhập Username" value='<%=(user==null?"":user)%>'
						required >
						<%if(user!=null){
					  if(user.length()<6){
						  out.print("<font color='red'>Độ dài phải lớn hơn 6 kí tự</font>");
					  }
					  else kt++;
				  } %>
				</div>
				<div class="col-md-4">
					<input type="text" class="form-control" name="ht"
						placeholder="Nhập Họ và Tên" value='<%=(ht==null?"":ht)%>'
						 required >
				</div>
			</div>
			<div class="form-row mt-2">
				<div class=" col-md-4">
					<input type="password" class="form-control" name="pass1" value=''
						placeholder="Nhập mật khẩu" required >
				</div>
				<div class=" col-md-2" >
					<select name="gt" class="form-control"  required>
						<option value="">Giới tính</option>
						<option >Nam</option>
						<option >Nu</option>
					</select>
				</div>
			</div>
			<div class="form-row mt-2">
				<div class=" col-md-4">
					<input type="password" class="form-control" name="pass2" value=''
						placeholder="Nhập lại mật khẩu" required >
						<%if(pass1!=null)
				  	 if(!pass1.equals(pass2))
				    	{out.print("<font color='red'>Nhập lại mật khẩu</font>");
				    }else if(pass1.equals(pass2)) kt++;
				    %>
				</div>
				<div class=" col-md-2">
					<select class="form-control" name="d" required >
						<option value="">Ngày sinh</option>
						<%for(int i=1;i<=31;i++){
						 %>
						<option value="<%=i%>"><%=i %></option>
						<% } %>
					</select>
				</div>
				<div class=" col-md-2">
					<select class="form-control" name="m" required >
						<option value="">Tháng</option>
						<%for(int j=1;j<=12;j++){
						 %>
						<option value="<%=j%>"><%=j %></option>
						<% } %>
					</select>
				</div>
				<div class=" col-md-2">
					<select class="form-control" name="y" required >
						<option value="">Năm</option>
						<%for(int k=1960;k<=2000;k++){
						 %>
						<option value="<%=k%>"><%=k %></option>
						<% } %>
					</select>
				</div>
			</div>
			<div class="form-row mt-2">
				<div class="col-md-4">
					<input type="email" class="form-control" name="mail1"
						placeholder="Nhập Email" value='<%=(mail1==null?"":mail1)%>'
						required >
				</div>
				<div class="col-md-2">
					<select class="form-control" name="tp" required >
						<option value="">Tỉnh\Thành phố</option>
						
						<option >Ha Noi</option>
						<option >TT-Hue</option>
						<option >Ho Chi Minh</option>
				
					</select>
				</div>
			</div>
			<div class="form-row mt-2">
				<div class="col-md-4">
					<input type="email" class="form-control" name="mail2"
						placeholder="Nhập lại Email" required >
						<%
							if(mail1!=null)
								if(!mail1.equals(mail2)){
								out.print("<font color='red'>Nhập lại Email</font>");
								kt=0;
					}else if(mail1.equals(mail2)) kt++; %>
				</div>
				<div class="col-md-3">
					<input type="text" class="form-control"
						placeholder="Nhập mã xác nhận" required >
				</div>
				<div>
					<img alt=""
						src="https://tailieu.vn/image/captcha/717c36e574ee60a74a970610c7162da4.png">
				</div>
			</div>
			
			<div class="form-row ml-2 mt-2">
				<button type="submit" class="btn btn-primary">Đăng ký</button>
				<div class="form-check ml-2">
					<input class="form-check-input" required  type="checkbox"
						checked="checked" id="gridCheck"> <label
						class="form-check-label" for="gridCheck"> Tôi đồng ý
						với điều khoản sử dụng </label>
				</div>
			</div>
			
		</form>
		<% if(kt==3)
			 response.sendRedirect("thongtindk.jsp?user="+user+"&ht="+ht+"&gt="+gt+"&d="+
						d+"&m="+m+"&y="+y+"&tp="+tp+"&mail1="+mail1);%>
		
		
	</div>
</body>
</html>