<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Customer form</title>
	<style type="text/css">
		.error{ 
			color: red;
		}
	</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="customer">
		<i>Fill out the form. Asterisk (*) is required field.</i>
		<br>
		<label>First name:</label>
		<form:input path="firstName"/>
		<br>
		<label>Last name (*):</label>
		<form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error" />
		<br>
		<input type="submit" value="Submit the form">
	</form:form>
</body>
</html>