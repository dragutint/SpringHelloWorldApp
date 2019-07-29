<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student registration confirmation</title>
</head>
<body>

	<p>
	Hello man! You are: ${student.firstName} ${student.lastName}
	<br>
	You are from ${student.country}, but your favourite language is ${student.favouriteLanguage}!
	<br>
	Your favourite operating systems are: 
	<br>
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li> ${temp} </li>
		</c:forEach> 
	</ul>

	
	</p>
	
</body>
</html>