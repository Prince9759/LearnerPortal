<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String uname  = request.getParameter("uname");
String pass = request.getParameter("pass");
if(uname.equals("tom") && pass.equals("jerry"))
{
   out.println("<a href='Portal.jsp'>go to Portal</a>");	
}
else
{
	out.println("Invalid user or password");
	out.println("<a href='Login.jsp'>LogIn again</a>");
}
%>
</body>
</html>