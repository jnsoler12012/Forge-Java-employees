<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>

<body>
	<header class=" p-2 mb-5">
		<h1>Employees &amp; Mangagers</h1>
		<a href="/employees" class="btn btn-primary">Employee Dashboard</a>
	</header>
	<main class="text-center">
		<form:form action="/employees" method="POST" modelAttribute="employee">
			<div class="form-group">
				<form:input path="firstName" placeholder="First Name"/>
			</div>
			<div class="form-group">
				<form:input path="lastName" placeholder="Last Name"/>
			</div>
			<input type="submit" class="btn btn-success" value="Add Employee">
		</form:form>
	</main>
</body>
</html>