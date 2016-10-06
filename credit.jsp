<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img align="middle" src="/attendee/Images/credit.jpg" width="50%" height="300px">
<form method="post" action="<%=request.getContextPath() %>/AttendeeController" >
<h1>MODE OF PAYMENT</h1>
<a href="<%=request.getContextPath() %>/AttendeeController?action=debit">Debit Card</a> |
<a href="<%=request.getContextPath() %>/AttendeeController?action=credit">Credit Card</a> |
<a href="<%=request.getContextPath() %>/AttendeeController?action=net">Net Banking</a>
<h2><u>Credit Card</u></h2>
<table>
<tr>
<td>
<select>
	<option value="0">Select Bank</option>
  <option value="SBI">SBI</option>
  <option value="Andhra Pradesh">Andhra Pradesh</option>
  <option value="IOB">IOB</option>
  <option value="HDFC">HDFC</option>
  <option value="ICICI">ICICI</option>
  <option value="SBH">SBH</option>
</select>
</td>
</tr>



</table>


<input title="click to proceed" type="submit" name="action" value="GO">

</form>
</body>
</html>