<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hello,
	<b><%=request.getParameter("name") %></b>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>Name
		</tr>
		</th>value
		</th>
		</tr>
		<tr>
			<td>request method</td>
			<td><%=request.getMethod() %></td>
		</tr>
		<tr>
			<td>request URI</td>
			<td><%=request.getRequestURI() %></td>
		</tr>
		<tr>
			<td>request protocol</td>
			<td><%=request.getProtocol() %></td>
		</tr>
		<tr>
			<td>Browser</td>
			<td><%=request.getHeader("user-agent") %></td>
		</tr>
	</table>
	<%
if(session.getAttribute("sessionvar")==null)
{
	session.setAttribute("sessionvar",new Integer(0));
}
%>
	<table>
		<tr>
			<th align="left">would you like to see use of remaining implicit
				objects?
		</tr>
		</th>
		<tr>
			<form name="form1" action="pageContext.jsp" method="post">
			<td><input type="radio" name="other" value="yes">Yes</td>
			<td><input type="radio" name="other" value="no">No</td></tr>
		<tr><td><input type="submit" value="submit"></td></tr>
		</form>
	</table>
</body>
</html>