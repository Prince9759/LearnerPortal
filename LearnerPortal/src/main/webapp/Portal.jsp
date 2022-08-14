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
<style>
   
    div {
        height: 20px;
        margin: 0px;
        border: 5px solid;
        background-color: #FBD603;
    }
</style>
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
<div  >
 <a href="Classess.jsp" >classes</a> <b>|</b>
  <a href="student.jsp">Student</a>  <b>|</b>
   <a href="subject.jsp">subject</a>  <b>|</b>
    <a href="Teacher.jsp">Teacher</a> <b>|</b>
    <a href="Logout.jsp">LogOut</a>
    
    
  </div><br>
<table border="1"  cellpadding="5" cellspacing="5" style="width:1%; background-color: black;color:red;float:left ">
<tr>
<td>Subject Name</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Subject";
resultSet  = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Sbname") %></td>

</tr>


<%


}


connection.close();

} catch (Exception e) {
e.printStackTrace();
}
%>


</table> 
<table border="1"  cellpadding="5" cellspacing="5" style="width:1%; background-color: black;color:red;float:left ">
<tr>
<td>Teacher Name</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Teacher";
resultSet  = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Tname") %></td>

</tr>


<%


}


connection.close();

} catch (Exception e) {
e.printStackTrace();
}
%>


</table> 


<table border="1"  cellpadding="5" cellspacing="5" style="width:1%; background-color: black;color:red;float:left ">
<tr>
<td>List Of Student</td>

</tr>
<tr>
<td> 
 <a href="Student1.jsp"> List1</a>
 
</td>


</tr>
<tr>
<td> 
 <a href="Student2.jsp"> List2</a>
 
</td>


</tr>



</table> 


      
</body>
</html>