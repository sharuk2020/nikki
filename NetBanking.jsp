<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<%=request.getContextPath() %>/AttendeeController" >
	<table>
		<tr>
			<td>UserName:</td>
			<td><input type="text" name="usernames"></td>
		</tr>
		<tr>
			<td>UserName:</td>
			<td><input type="password" name="passwords"></td>
		</tr>
		</table>
		</form>
		<input title="click to proceed" type="submit" name="action" value="Netpayment">
</body>
</html>