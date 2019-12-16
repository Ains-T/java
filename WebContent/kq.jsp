<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Long a,b,kq=(long)0;
 String aa=request.getParameter("txta");
String bb=request.getParameter("txtb");
String nut=request.getParameter("but1");
if(aa!=null && bb!=null){
	if(nut.equals("+")){
	 a=Long.parseLong(aa);
	b=Long.parseLong(bb);
	kq=a+b;
	out.print(a+"+"+b+"="+(kq));
	}
	else
		if(nut.equals("-"))
		{
			a=Long.parseLong(aa);
			b=Long.parseLong(bb);
			kq=a-b;
			out.print(a+"-"+b+"="+(kq));
		}
		else
			if(nut.equals("*"))
			{
				a=Long.parseLong(aa);
				b=Long.parseLong(bb);
				kq=a*b;
				out.print(a+"*"+b+"="+(kq));
			}
			else
			{   
				a=Long.parseLong(aa);
				b=Long.parseLong(bb);
				if (b==0) out.print("<script>alert('bo tay');</script>");
				kq=a/b;
				out.print(a+"/"+b+"="+(kq));
			}
}

%>
</body>
</html>