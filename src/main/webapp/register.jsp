<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
<style>
body{
background-color: red;
}
</style>
</head>
<body>
<form action = "registerServlet" method= "post">
First name: <input type = "text" name = "firstName" value = "${requestScope.firstName}">
<br>
Last Name: <input type = "text" name = "lastName" value = "${requestScope.lastName}">
<br>
Address: <input type = "text" name = "address" value = "${requestScope.address}">
<br>
Phone Number: <input type = "text" name = "phoneNumber" value = "${requestScope.phoneNumber}">
<br>
Email: <input type = "text" name = "email" value = "${requestScope.email}">
<br>
Password: <input type = "text" name = "password" value = "${requestScope.password}">
<br>
Confirm Password: <input type = "text" name = "password2" value = "${requestScope.password2}">
<br>
<input type = "submit" value= "Register">
</form>

<c:set var="message" value="${requestScope.message}"/>
<c:if test="${(message != null)}">
<script>
  alert("${message}");
</script>
</c:if>
</body>
</html>