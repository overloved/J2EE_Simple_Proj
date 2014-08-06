<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Successfully Logout</title>
</head>
<body>
	<% 
		request.getSession().removeAttribute("username"); 
		request.getSession().removeAttribute("password"); 
		request.getSession().invalidate(); 
	%>
	<h1>Logout was done successfully.</h1>
</body>
</html>	