<%@page import="utils.UserBean"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Personal Profile</title>
</head>
<body>
	<h4> 
		<% 
			UserBean user = (UserBean) (session.getAttribute("username")); 	 
		%>  
		Username:  <%= user.getUsername() %><br />
		First Name: <%= user.getFirstName() %><br />
		Last Name: <%= user.getLastName() %><br />
		Sex: <%= user.getSex() %><br />
		Age: <%= user.getAge() %><br />
	</h4>
	<a href="Home.jsp">Go Back</a>
</body>
</html>