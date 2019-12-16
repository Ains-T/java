<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>May tinh cu chuoi</title>
</head>
<body>
	<% /* Long a,b,kq=(long)0;
	 String aa=request.getParameter("txta");
	String bb=request.getParameter("txtb");
	String nut=request.getParameter("but1");
	if(aa!=null && bb!=null){
		a=Long.parseLong(aa);
		b=Long.parseLong(bb);
		if(nut.equals("+"))kq=a+b;
		if(nut.equals("-"))kq=a-b;
		if(nut.equals("*"))kq=a*b;
		if(nut.equals("/")){
			if(b==0) out.print("<script> alert('bo tay');</script>");
			else
			kq=a/b;
		}
	} */
 %>
 <form method="post" action='maytinhcuchuoicontroller'>
 a=<input type="number" name='txta' value=<%=request.getAttribute("a")%> > <br>
 b=<input type="number" name='txtb' value=<%=request.getAttribute("b")%>> <br>
  kq=<input type="number" name='txtkq' value=<%=request.getAttribute("tong")%>> <br>
 <input type='submit' name='but1' value="+">
 <input type='submit' name='but1' value="-">
 <input type='submit' name='but1' value="*">
 <input type='submit' name='but1' value="/">
 

 </form>
</body>
</html>