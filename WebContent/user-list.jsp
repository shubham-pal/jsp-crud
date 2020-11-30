<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<style>
	.table{
	    box-shadow: 0 3px 7px lightgrey;
	}
	
	.table th{
	    border:1px solid white;
	}
	
	.table td{
	    border: 1px solid lightgrey;
	}
	
	.table-head{
	    background-color: blue;
	    color: white;
	    text-align: center;
	    box-shadow: 0 3px 5px rgb(23, 23, 24);
	}
	
	.table-icons{
	    font-size: 20px;
	}
	
	.table tr:hover{
	    background-color: rgb(217, 233, 217);
	    color: black;
	}
	</style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="<%=request.getContextPath()%>" class="navbar-brand"><strong>User Management</strong></a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link active"><strong>Users</strong></a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success"><i class="fa fa-plus mr-2"></i>Add
					New User</a>
			</div>
			<br>
			<table class="table table-border">
				<thead class="table-head">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.country}" /></td>
							<td class="text-center"><a href="edit?id=<c:out value='${user.id}' />" onclick="return confirmEdit();"><i title="Edit" class="table-icons fa fa-edit text-primary text-center"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a onclick="return confirmDelete();"
								href="delete?id=<c:out value='${user.id}' />"><i title="Delete" class="table-icons fa fa-trash text-center text-danger"></i></a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
	<script>
	function confirmDelete()
	{
	    if (confirm("Do You Really Want To Delete This User ? "))
	    {
	        return true;
	    }
	    else{
	        return false;
	    }
	}

	function confirmEdit()
	{
	    if (confirm("The Changes Will Be Permanent ? Are You Sure ? "))
	    {
	        return true;
	    }
	    else{
	        return false;
	    }
	}
	</script>
</body>
</html>