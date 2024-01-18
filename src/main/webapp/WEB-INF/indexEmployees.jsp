<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>

<body>
	<header class="p-2 mb-5">
		<h1>Employees &amp; Mangagers</h1>
		<a href="/employees/new" class="btn btn-primary">Add Employee</a>
	</header>
	<main class="text-center w-75 m-auto">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Manager</th>
					<th>Employees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ employees }" var="employee">
				<tr data-href="/employees/${ employee.id }">
					<td><a href="/employees/${ employee.id }">${ employee.firstName } ${ employee.lastName }</a></td>
					<td>${ employee.manager.firstName } ${ employee.manager.lastName }</td>
					<td><c:if test="${ employee.employees.size() > 0}">${ employee.employees.size() }</c:if></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
</body>
</html>