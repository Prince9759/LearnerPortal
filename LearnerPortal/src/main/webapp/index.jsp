<html>
<body>
<h2>Hello World!</h2>
<% RequestDispatcher requestDispatcher;
		  requestDispatcher=request.getRequestDispatcher("MapDemo");
	     requestDispatcher.forward(request, response);%>
</body>
</html>
