<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<script language="javascript">
function SelectRedirect(){
// ON selection of section this function will work
//alert( document.getElementById('s1').value);

switch(document.getElementById('s1').value)
{
case "SBI":
window.location="https://retail.onlinesbi.com/";
break;

case "Andhra Pradesh":
window.location="https://www.onlineandhrabank.net.in/";
break;

case "IOB":
window.location="https://www.iobnet.co.in/ibanking/login.do";
break;
case "HDFC":
window.location="https://netbanking.hdfcbank.com/netbanking/";
break;

case "ICICI":
window.location="https://infinity.icicibank.com/corp/AuthenticationController?FORMSGROUP_ID__=AuthenticationFG&__START_TRAN_FLAG__=Y&FG_BUTTONS__=LOAD&ACTION.LOAD=Y&AuthenticationFG.LOGIN_FLAG=1&BANK_ID=ICI";
break;
case "SBH":
window.location="https://retail.onlinesbh.com/retail/sbhlogin.htm";
break;

/// Can be extended to other different selections of SubCategory //////
default:
window.location="<%=request.getContextPath() %>/AttendeeController?action=net"; // if no selection matches then redirected to home page
break;
}// end of switch 
}
////////////////// 
</script>
      
      
      
   
  </head> 
  
      
      
   



<body>
<img src="/attendee/Images/Pay-button-on-keyboard.jpg" width="100%" height="300px">
      
 
<form>
<h1>MODE OF PAYMENT</h1>
<a href="<%=request.getContextPath() %>/AttendeeController?action=debit">Debit Card</a> |
<a href="<%=request.getContextPath() %>/AttendeeController?action=credit">Credit Card</a> |
<a href="<%=request.getContextPath() %>/AttendeeController?action=net">Net Banking</a>
<h2><u>Net Banking</u></h2>
<table>
<tr>
<td>
<select id="s1" NAME="section" >
	<option value="0">Select Bank</option>
  <option  value="SBI">SBI</option>
  <option  value="Andhra Pradesh">AndhraPradesh</option>
  <option  value="IOB">IOB</option>
  <option  value="HDFC">HDFC</option>
  <option  value="ICICI">ICICI</option>
  <option  value="SBH">SBH</option>
</select>

</td>
</tr>



</table>
<input type="button" value="go" onclick="SelectRedirect();" />


</form>
</body>
</html>