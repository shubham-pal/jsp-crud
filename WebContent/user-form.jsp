<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="./styles/user-form.css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="<%=request.getContextPath()%>" class="navbar-brand"> <strong>User Management</strong> </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link active"><strong>Users</strong></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form onsubmit="return confirmSubmit();" action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form onsubmit="return confirmSubmit();" action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text" id="name"
						value="<c:out value='${user.name}' />" class="form-control mb-1"
						name="name" required="required">
						<p class="m-0" id="name-error"></p>
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text" id="email"
						value="<c:out value='${user.email}' />" class="form-control mb-1"
						name="email">
						<p class="m-0" id="email-error"></p>
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text" id="country"
						value="<c:out value='${user.country}' />" class="form-control mb-1"
						name="country">
						<p class="m-0" id="country-error"></p>
				</fieldset>

				<input type="submit" class="btn btn-success" value="Save">
				</form>
			</div>
		</div>
	</div>
	<script src="./js/user-form.js"></script>
</body>
</html>