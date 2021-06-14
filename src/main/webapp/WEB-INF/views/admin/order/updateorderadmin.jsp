<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
        <div class="row">
            <h3>Sửa địa chỉ</h3>
            <form:form modelAttribute="order" method="POST"
                action="${ pageContext.request.contextPath }/admin/order/update/${ order.id }">

                <div class="form-group mt-3 col-7">
                    <label for="address">Địa chỉ</label>
                    <form:input path="address" cssClass="form-control" />
                    <form:errors path="address" element="span" cssClass="text-danger" />
                </div>
                <button type="submit" class="btn btn-outline-success mt-2"> Lưu địa chỉ</button>
            </form:form>
        </div>
        <hr>
        <div class="row">
            <h3>Sửa sản phẩm</h3>
			<div>
				<a href="${ pageContext.request.contextPath }/admin/orderdetail/add" class="btn btn-outline-success mt-2">Thêm sản phẩm</a>
			</div>
            <form:form modelAttribute="orderdetail" method="POST"
                action="${ pageContext.request.contextPath }/admin/order/update/${ productype.id }">
                <div class="form-group mt-3 col-7">
                    <label for="address">Sản phẩm</label>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID sản phẩm</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Ảnh</th>
                                <th scope="col">Loại sản phẩm</th>
                                <th colspan="2">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ orderdetail }" var="orderdetail">
                                <tr>
                                    <th>${ orderdetail.product.id }</th>
                                    <td>${ orderdetail.product.name }</td>
                                    <td>${ orderdetail.price }</td>
                                    <td>${ orderdetail.product.image }</td>
                                    <td>${ orderdetail.product.productype.name }</td>
                                    <td>
                                        <a class="icon"
                                            href="${ pageContext.request.contextPath }/admin/orderdetail/delete/${ orderdetail.id }">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <a class="icon"
                                            href="${ pageContext.request.contextPath }/admin/orderdetail/edit/${ orderdetail.id }">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                        </a>
                                    </td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form:form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
</body>

</html>