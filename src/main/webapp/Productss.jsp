<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>hello</h1>
<c:forEach var="customer" items="${users}">
 <h1><c:out value="${customer.name}"></c:out> </h1>
  <h1><c:out value="${customer.address}"></c:out></h1>
  <h1><c:out value="${customer.no}"></c:out></h1>
 <h1> <c:out value="${customer.emali}"></c:out></h1>
  
</c:forEach>
</body>
</html>