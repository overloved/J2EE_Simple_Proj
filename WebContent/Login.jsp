<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Welcome to Login Page</title>
<script>
	function validate() {
		if(trim(document.loginForm.username.value) == "") {
			alert("username cannot be empty");
			document.loginForm.username.focus();
			return false;
		}
		else if (trim(document.loginForm.password.value)=="") {
			alert("password cannot be empty");
			docuemtn.loginForm.password.focus();
			return false;
		}
	}
	
	function trim(s) {
		return s.replace(/^s*/, "").replace(/s*$/, "");
	}
</script>

</head>
<body>
	<center> 
		<h2>Login Details</h2> 
		<form name="loginForm" action="LoginCheckServlet" method="post" onSubmit="return validate();"> 
		<br/>Username:<input type="text" name="username"> 
		<br/>Password:<input type="password" name="password"> 
		<br/><input type="submit" value="Submit"> 
		</form> 
	</center>
</body>
</html>