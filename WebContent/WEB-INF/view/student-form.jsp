<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student registration form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		<label>First name:</label>
		<form:input path="firstName"/>
		
		<br>
		
		<label>Last name:</label>			
		<form:input path="lastName"/>
		<br>
		
		<label>Contry:</label>
		<form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		
		<br>
		<label>Favourite programming language:</label>
		<br>
		<label>1. C#</label>
		<form:radiobutton path="favouriteLanguage" value="C#"/>
		<label>2. Java</label>
		<form:radiobutton path="favouriteLanguage" value="Java"/>
		<label>3. Python</label>
		<form:radiobutton path="favouriteLanguage" value="Python"/>
		
		<br>
		
		<label>Favourite operating system:</label>
		<br>
		<label>Linux</label>
		<form:checkbox path="operatingSystems" value="Linux"/>
		<label>MacOS</label>
		<form:checkbox path="operatingSystems" value="MacOS"/>
		<label>MS Windows</label>
		<form:checkbox path="operatingSystems" value="Windows"/>
				
		<br>
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>