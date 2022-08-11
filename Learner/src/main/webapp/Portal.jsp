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
 <a href="Classess.jsp">classes</a>
  <a href="student.jsp">Student</a>
   <a href="subject.jsp">subject</a>
    <a href="Teacher.jsp">Teacher</a>
    
   <h1>Retrieve data from database in jsp</h1>
<table border="1">
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

<table border="1">
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


<table border="1">
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