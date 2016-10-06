<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendee Registration Form</title>
<script type="text/javascript">
function validate()
{
	
var first=document.myform.firstname.value;
var last=document.myform.lastname.value;
var x = document.myform.email.value;
var contact = document.myform.contactno.value;

var atpos = x.indexOf("@");
var dotpos = x.lastIndexOf(".");
/* var r=/[a-zA-z0-9]+$/; */
if(first=="" || first==null ){
	alert("enter  first name ");
	return false;
}
else if(!isNaN(first)){
	alert("enter alphanumeric");
	return false;
}

else if(last=="" || last==null){
	alert("enter last name");
	return false;
}else if(!isNaN(last)){
	alert("enter  last name alphanumeric");
	return false;
}


else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
    alert("Not a valid e-mail address");
    return false;
}

	 
	 else if(isNaN(contact) || contact=="" || contact==null){
	alert("enter numeric");
	return false;
}
	 else if(contact.length != 10){
		 alert("not valid phone number");
		 return false;
	 }
	 return true;

}








</script>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a,.dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	z-index: 9;
}

li a:hover,.dropdown:hover .dropbtn {
	background-color: #4CAF50;
	z-index: 9;
}

li.dropdown {
	display: inline-block;
	z-index: 9;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 9;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
	z-index: 9;
}

.dropdown-content a:hover {
	background-color: #f1f1f1 z-index:9;
}

.dropdown:hover .dropdown-content {
	display: block;
	z-index: 9;
}

.logout {
	float: right;
}


body {
	background-color: skyblue
}

h1 {
	background-color: white
}</style>
</head>
<body>
<img src="/attendee/Images/banner.jpg" width="100%" height="200px">
	<%
		Cookie[] c = request.getCookies();
		String cid = null, eid = null;
		if (c != null) {
			for (Cookie ck : c) {
				if (ck != null) {
					/* out.print("   "+ck.getName()+"   "); */
					if (ck.getName().equals("cid"))
						cid = ck.getValue();
					else if (ck.getName().equals("eid"))
						eid = ck.getValue();

				}
			}
		}
	%>

	<form name="myform" method="post" action="<%=request.getContextPath() %>/AttendeeController"
		onsubmit="return validate()">
		<center>
			<h1>Registration Form</h1>
		</center>
		<table>
			<thead>

			</thead>
			<tr>
				<th>First Name:</th>
				<td><input type="text" name="firstname"></td>
			</tr>
			<tr>
				<th>Last Name:</th>
				<td><input type="text" name="lastname"></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>Contact no:</th>
				<td><input type="text" name="contactno" id="contactno"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="cid" value="<%=cid%>"></td>
				<td><input type="hidden" name="eid" value="<%=eid%>"></td>
			</tr>

		</table>
		
		<p align="justify"></p>
		<input align="middle" title="submit" type="submit" name="action"
			value="Submit"
			style='color: Black; font-size: 30px; text-decoration: blink; font-family: "Times New Roman", Serif'>

	</form>

</body>
</html>