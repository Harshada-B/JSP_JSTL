<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:out value="${'welcome to jstl'}"></c:out>

<c:set var="name" scope="application" value="welcome to jstl demo"/><br>
<a href="display.jsp">Display</a><br><br>

<c:set var="age" value="12"/>
<c:if test="${age >= 18}">
 <c:out value="You are not kid!"/>
</c:if>
<c:if test="${age < 18}">
 <c:out value="You are kid!"/>
</c:if><br><br>

<c:set var="age1" value="${12}"/>
<c:set var="age2" value="${20}"/>
<c:choose>
 <c:when test="${age1 < age2}">
     ${"age1 is less than age2"}
 </c:when>
 <c:when test="${age1 <= age2}">
     ${"age1 is less than equal to age2"}
 </c:when>
 <c:otherwise>
     ${"age1 is more!"}
 </c:otherwise>
</c:choose>

</body>
</body>
</html>