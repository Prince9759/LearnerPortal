<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "admin";
String userid = "root";
String password = "Prince@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try {if(!(session.getAttribute("uname").equals("tom"))) {
	String site = new String("Login.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
}}
catch (Exception e) {
	String site = new String("Login.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
}%>
<h1>List1 those Student who study Hindi and Teacher name Harish </h1>
<table border="1"  cellpadding="5" cellspacing="5" style="width:1%; background-color: black;color:red;float:left ">
<tr>
<td>Student Name</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Student where classs_class_id=0";
resultSet  = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Sname") %></td>

</tr>


<%


}


connection.close();

} catch (Exception e) {
e.printStackTrace();
}
%>


</table> 

<a href = "Portal.jsp"><h1>Back to portal</h1></a>

</body>
</html>