<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa acount người dùng</title>
<link rel="stylesheet" href="/css/homeuser.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>
<body>
	<div class="container">
        <form:form
			modelAttribute="user"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/user/update/${ user.id }">

			<div class="form-group mt-3">
				<label for="username">Name</label>
				<form:input path="username" cssClass="form-control" />
			    <form:errors path="username" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="email">Email</label>
				<form:input path="email" cssClass="form-control" />
				<form:errors path="email" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3" style="display: none;">
				<label for="password">Password</label>
				<form:password path="password" cssClass="form-control" />
				<form:errors path="password" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="admin">Admin</label>
				<form:select path="admin" cssClass="form-control">
					<form:option value="1">Admin</form:option>
					<form:option value="0">Member</form:option>
				</form:select>
				<form:errors path="admin" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="photo">Image</label>
			    <input type="file" class="form-control" id="photo" name="photo">
			</div>
			<div class="form-group mt-3">
				<label for="activated">Trạng thái</label>
				<select name="activated" id="activated" class="form-control" required>
					<option selected disabled>Choose</option>
					<option value="1" ${ user.activated == 1 ? "selected" : "" }>Đang hoạt động</option>
					<option value="0" ${ user.activated == 0 ? "selected" : "" }>Vô hiệu hóa</option>
				</select>
			</div>
			<div class="form-group mt-3">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form:form>
    </div>
</body>
</html>