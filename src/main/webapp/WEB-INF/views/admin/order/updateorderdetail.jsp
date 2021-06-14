<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Sửa</title>
    <link rel="stylesheet" href="/css/homeuser.css">
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
        <form:form modelAttribute="ordertal" method="POST"
            action="${ pageContext.request.contextPath }/admin/orderdetail/update/${ ordertal.id }">
			<div class="form-group mt-3 col-7">
                <label for="order">ID Đơn hàng</label>
                <form:input path="order" cssClass="form-control" />
                <form:errors path="order" element="span" cssClass="text-danger" />
            </div>
            <div class="form-group mt-3 col-7">
                <label for="product">ID Sản phẩm</label>
                <form:input path="product" cssClass="form-control" />
                <form:errors path="product" element="span" cssClass="text-danger" />
            </div>
            <div class="form-group mt-3 col-7">
                <label for="quantity">Số lượng</label>
                <form:input path="quantity" cssClass="form-control" />
                <form:errors path="quantity" element="span" cssClass="text-danger" />
            </div>
            <button type="submit" class="btn btn-outline-success mt-2"> Lưu order</button>
        </form:form>
    </div>
</body>

</html>