<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa</title>
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
        <form:form
			modelAttribute="product"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/product/update/${ product.id }">

			<div class="form-group mt-3">
				<label for="name">Name</label>
				<form:input path="name" cssClass="form-control" />
			    <form:errors path="name" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="price">Giá</label>
				<form:input type="number" path="price" cssClass="form-control" />
				<form:errors path="price" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="available">Trạng thái</label>
				<form:select path="available" cssClass="form-control">
					<form:option value="1">Hoạt động</form:option>
					<form:option value="0">Không hoạt động</form:option>
				</form:select>
				<form:errors path="available" element="span" cssClass="text-danger" />
			</div>
			<!-- <div class="form-group mt-3">
				<label for="available">Loại sản phẩm</label>
				<form:select path="available" cssClass="form-control">
					<form:option value="1">Điện thoại</form:option>
					<form:option value="2">Máy tính</form:option>
					<form:option value="3">Âm thanh</form:option>
					<form:option value="4">Đồng hồ</form:option>
					<form:option value="5">Máy ảnh</form:option>
				</form:select>
				<form:errors path="available" element="span" cssClass="text-danger" />
			</div> -->
			<div class="form-group mt-3">
				<label for="image">Ảnh</label>
			    <input type="file" class="form-control" id="image" name="image">
			</div>
			<div class="form-group mt-3">
				<label for="productype">Loại sản phẩm</label>
				<select name="productype" id="productype" class="form-control" required>
					<option selected disabled>Choose</option>
					<option value="1" ${ product.productype.id == 1 ? "selected" : "" }>Điện thoại</option>
					<option value="2" ${ product.productype.id == 2 ? "selected" : "" }>Máy tính</option>
					<option value="3" ${ product.productype.id == 3 ? "selected" : "" }>Âm thanh</option>
					<option value="4" ${ product.productype.id == 4 ? "selected" : "" }>Đồng hồ</option>
					<option value="5" ${ product.productype.id == 5 ? "selected" : "" }>Máy ảnh</option>
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