<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
int kt=-1;
String un=request.getParameter("txta");
String pass=request.getParameter("txtb");

if(un!=null && pass!=null)
	
   if(un.equals("abc") && pass.equals("123"))
   {
	   out.print("xin chao "+un);
	   %><a href="maytinhcuchuoi.jsp"> Next</a> <% 
	   kt=0;
   }
   else
	   kt=1;
if((kt==1)||(kt==-1))
{
%>
<form method="post" action='FormLogin.jsp'>
 Username:<input type="text" name='txta' value="<%=(un==null?"":un)%>"> <br>
 Password: <input type="password" name='txtb' value=""> <br>
 <input type='submit' name='but1' value="Login">
</form>

<%  if(kt==1){%>
	<p style="color: red">Thong tin sai!</p>
      	
   <%}
}
%>

</body>
</html>