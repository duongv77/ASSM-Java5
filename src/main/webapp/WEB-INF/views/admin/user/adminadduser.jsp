<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>

<body>
    <div class="container">
        <form class="col-7"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/user/store">

			<div class="form-group mt-4">
				<label for="name">Họ Tên</label>
			    <input type="text" class="form-control" id="username" name="username" autocomplete="off">
			    <small id="username_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="email">Email</label>
			    <input type="email" class="form-control" id="email" name="email" autocomplete="off">
			    <small id="email_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu</label>
			    <input type="password" class="form-control" id="password" name="password" autocomplete="off">
			    <small id="password_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="password_confirm">Xác nhận mật khẩu</label>
			    <input type="password" class="form-control" id="password_confirm" name="password_confirm" autocomplete="off">
			    <small id="password_confirm_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="role">Phân quyền</label>
				<select name="admin" id="admin" class="form-control" required>
					<option selected disabled>Choose</option>
					<option value="0">User</option>
					<option value="1">Admin</option>
				</select>
			    <small id="role_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="photo">Avatar</label>
			    <input type="file" class="form-control" id="photo" name="photo">
			    <small id="photo_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group mb-2">
				<label for="activated">Status</label>
				<select name="activated" id="activated" class="form-control" required>
					<option selected disabled>Choose</option>
					<option value="1">Đang hoạt động</option>
					<option value="0">Không hoạt động</option>
				</select>
			    <small id="activated_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form>
    </div>
</body>

</html>