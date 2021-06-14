<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại sản phẩm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">ADMIN:</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse nav" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="${ pageContext.request.contextPath }/admin/user/"> User</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/product/">Sản phẩm</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/productype/">Loại sản phẩm</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/order/">Order</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/logout/">Đăng xuất</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
    <div class="container">
        <h2>Thêm loại sản phẩm</h2>
        <form class="col-7"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/productype/store">

			<div class="form-group mt-4">
				<label for="name">Loại sản phẩm</label>
			    <input type="text" class="form-control" id="name" name="name" autocomplete="off">
			    <small id="username_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group mt-4">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form>
    </div>
</body>
</html>