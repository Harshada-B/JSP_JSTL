<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:out value="${'Welcome to jstl'}" />
<c:set var="number" scope="session" value="${1000}" />
<c:out value="${number }" />
<c:if test="${number<=20000 }">
<p>number is<c:out value="${number}" /></p>
</c:if>

<c:choose>
<c:when test="${number <= 10000 }">
Number is less than 10000
</c:when>

<c:when test="${number <= 10000 }">
Number is greater than 10000
</c:when>
<c:otherwise>
Invalid data
</c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="10">
<br>
Integers <c:out value="${i}" />
</c:forEach>

<c:remove var="number" />
<p>
After Remove number is:
<c:out value="${number}" />
</p>

<c:set var="name" value="hello welcome to JSTL" />
<p>
the name is:
<c:out value="${name}" />
</p>

<c:if test="${fn:containsIgnoreCase(name,'Welcome')}">
<p>welcome is found</p>
</c:if>

<c:set var="date" value="<%=new java.util.Date()%>" />
<c:out value="${date}" />
<br>
<fmt:formatDate value="${date}" />
<br>
<fmt:formatDate type="both" dateStyle="medium" value="${date}" />
</body>
</html>