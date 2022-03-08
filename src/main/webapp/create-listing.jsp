<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Listing</title>
<style>
body{
background-color: red;}
#nav{
float: right
}
</style>
</head>
<body>
<form id = "nav" action = "createListingServlet" method= "post">
<input type="submit" value="Logout" name="action">
<input type="submit" value="Home" name="action">
<input type ="hidden" name ="id" value="${id}">
</form>
<form action = "createListingServlet" method= "post">
<input type ="hidden" name ="id" value="${id}">
Make: <input type = "text" name = "make" value = "${requestScope.make}">
<br>
Model: <input type = "text" name = "model" value = "${requestScope.model}">
<br>
Year: <input type = "text" name = "year" value = "${requestScope.year}">
<br>
MPG/Range: <input type = "text" name = "mpg" value = "${requestScope.mpg}">
<br>
Engine: <input type = "text" name = "engine" value = "${requestScope.engine}">
<br>
Color: <input type = "text" name = "color" value = "${requestScope.color}">
<br>
Price: <input type = "text" name = "price" value = "${requestScope.price}">
<br>
Safety Rating: <input type = "text" name = "safteyRating" value = "${requestScope.safteyRating}">
<br>
Type: <input type = "text" name = "type" value = "${requestScope.type}">
<br>
Transmission: <select name="transmission" id="transmission">

<c:set var="transmission" value="${requestScope.transmission}"/>
<c:if test="${(transmission != ''|| transmission != null)}">
<c:if test="${(transmission == 'Automatic')}">
<option selected value="Automatic" >Automatic</option>
<option value="Manual">Manual</option>
</c:if>
<c:if test="${(transmission == 'Manual')}">
<option value="Automatic">Automatic</option>
  <option selected value="Manual">Manual</option>
</c:if>
</c:if>
<c:if test="${(transmission == ''|| transmission == null)}">
<option value="" >Select Transmission</option>
  <option value="Automatic">Automatic</option>
  <option value="Manual">Manual</option>
</c:if>
</select>
<br>
Fuel Type: <select name="fuelType" id="fuelType">

<c:set var="fuelType" value="${requestScope.fuelType}"/>
<c:if test="${(fuelType != '' || fuelType != null)}">
<c:if test="${(fuelType == 'Gas')}">
<option selected value="Gas">Gas</option>
  <option value="Diesel">Diesel</option>
  <option value="Electric">Electric</option>
</c:if>
<c:if test="${(fuelType == 'Diesel')}">
<option value="Gas">Gas</option>
  <option selected value="Diesel">Diesel</option>
  <option value="Electric">Electric</option>
</c:if>
<c:if test="${(fuelType == 'Electric')}">
<option value="Gas">Gas</option>
  <option value="Diesel">Diesel</option>
  <option selected value="Electric">Electric</option>
</c:if>
</c:if>
<c:if test="${(fuelType == '' || fuelType == null)}">
<option value="" >Select Fuel Type</option>
  <option value="Gas">Gas</option>
  <option value="Diesel">Diesel</option>
  <option value="Electric">Electric</option>
</c:if>
</select>
<br>
Drivetrain: <select name="drivetrain" id="drivetrain">

<c:set var="drivetrain" value="${requestScope.drivetrain}"/>
<c:if test="${(drivetrain != '' || drivetrain != null)}">
<c:if test="${(drivetrain == 'AWD')}">
<option selected value="AWD">AWD</option>
  <option value="FWD">FWD</option>
  <option value="RWD">RWD</option>
  <option value="4WD">4WD</option>
</c:if>
<c:if test="${(drivetrain == 'FWD')}">
<option value="AWD">AWD</option>
  <option selected value="FWD">FWD</option>
  <option value="RWD">RWD</option>
  <option value="4WD">4WD</option>
</c:if>
<c:if test="${(drivetrain == 'RWD')}">
<option value="AWD">AWD</option>
  <option value="FWD">FWD</option>
  <option selected value="RWD">RWD</option>
  <option value="4WD">4WD</option>
</c:if>
<c:if test="${(drivetrain == '4WD')}">
<option selected value="4WD">4WD</option>
<option value="AWD">AWD</option>
  <option value="FWD">FWD</option>
  <option value="RWD">RWD</option>
</c:if>
</c:if>
<c:if test="${(drivetrain == '' || drivetrain == null)}">
<option value="" >Select Drivetrain</option>
  <option value="AWD">AWD</option>
  <option value="FWD">FWD</option>
  <option value="RWD">RWD</option>
  <option value="4WD">4WD</option>
</c:if>
</select>
<br>
<input type = "submit" value= "Create Listing" name = "action">
</form>
<c:set var="message" value="${requestScope.message}"/>
<c:if test="${(message != null)}">
<script>
  alert("${message}");
</script>
</c:if>
</body>
</html>