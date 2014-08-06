<%@page import="utils.UserBean"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Hello</title>
</head>
<body>
	<center> 
		<h4> 
		<% 
			UserBean user = (UserBean) (session.getAttribute("username")); 	 
		%>  
		Hello, <%= user.getFirstName() + " " + user.getLastName() %>
		</h4> 
		<br /><br />
		<a href="Profile.jsp">Edit Profile</a>
		<br/><br/><br/><br/><br/><br/><br/> 
		<a href="Logout.jsp">Logout</a> 
	</center>
</body>
</html>