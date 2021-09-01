<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!int count;

	public void jspInit() {
		ServletConfig servletConfig = getServletConfig();
		count = Integer.parseInt(servletConfig.getInitParameter("count"));
		System.out.println("-------Inside jspInit()-----------");
	}%>
	<h2>use of page,session,out,config and application implicit
		objects</h2>
	count value without using config implicit object:
	<b><%=count%></b>
	<br>
	<%
	this.log("log message");
	((HttpServlet) page).log("another message");
	ServletContext servletContext = config.getServletContext();
	out.println("value of sessionvar is=" + "&nbsp;&nbsp;<b>" + session.getAttribute("sessionvar") + "</b><br>");
	out.println("server name and version using config implicit object:&nbsp;&nbsp;<b>" + servletContext.getServerInfo()
			+ "</b><br>");
	out.println("value of context parameter param1 get using application implicit object :&nbsp;&nbsp;<b>"
			+ application.getInitParameter("param1") + "</b><br>");
	out.println("count value retrived using config implicit object :&nbsp;&nbsp;<b>" + config.getInitParameter("count")
			+ "</b><br>");
	%>
</body>
</html>