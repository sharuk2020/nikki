<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banking....</title>
</head>
<body>
<form method="post" action="<%=request.getContextPath() %>/AttendeeController" >
	<table>
		<tr>
			<td>CardNO:</td>
			<td><input type="text" name="cardno"></td>
		</tr>
		<tr>
			<td>Expiry Date</td>
			<td><input type="text" name="expdate"></td>
		</tr>
		<tr>
			<td>CVV</td>
			<td><input type="text" name="cvv"></td>
		</tr>
		<tr>
			<td>PIN</td>
			<td><input type="password" name="pin"></td>
		</tr>






	</table>
<input title="click to proceed" type="submit" name="action" value="DoPayment">	
</form>
</body>
</html>