<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/giohang.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>

<body>
    <div class="header">
        <div class="container">
            <div class="row ">
                <div class="col-4 logo">
                    <a href="${ pageContext.request.contextPath }/home/">
                        <img width="40px" src="/css/img/avatar-post.png" alt="">
                    </a>
                </div>
                <div class="col-4 center">
                    <div class="nav-search">
                        <input type="text" placeholder="Bạn cần tìm gì?">
                        <a class="btn-search" href=""><i class="fa fa-search" aria-hidden="true"></i></a>
                    </div>
                </div>
                <div class="col-4 nav-right">
                    <div class="row">
                        <div class="col-4 text-in-a"><a href="">SĐT: 332211</a></div>
                        <div class="col-4 text-in-a"><a href="">Tìm cửa hàng</a></div>
                        <div class="col-4 text-in-a"><a href="">Giỏ hàng</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
    <c:if test="${ not empty sessionScope.muathanhcong }">
				<div class="message-login-error">
					${ sessionScope.muathanhcong }
				</div>

				<c:remove var="muathanhcong" scope="session" />
			</c:if>
        <div class="container-custom">
            <div class="nav">
                <div class="nav-left">
                    <p style="color: rgb(182, 0, 0); font-size: 30px;">Giỏ hàng</p>
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th style="color: black;" scope="col">Ảnh</th>
                        <th style="color: black;" scope="col">Tên sản phẩm</th>
                        <th style="color: black;" scope="col">Đơn giá</th>
                        <th style="color: black;" scope="col">Số lượng</th>
                        <th style="color: black;" scope="col">Thành tiền</th>
                        <th style="color: black;" scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ listcartdetail }" var="listcartdetail">
                        <tr>
                            <td><img height="30" src="/storage/${ listcartdetail.product.image }" alt=""></td>
                            <td>${ listcartdetail.product.name }</td>
                            <td>${ listcartdetail.product.price }</td>
                            <td>${ listcartdetail.quantity }</td>
                            <td>${ listcartdetail.product.price*listcartdetail.quantity }</td>
                            <td>
                                <a class="icon"
                                    href="${ pageContext.request.contextPath }/admin/order/edit/${ listOrder.id }">
                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <h3 class="d-flex justify-content-end text-danger">Tổng tiền: ${ tongtien } VNĐ</h3>
            <div class="d-flex justify-content-end">
                <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">
                    Thanh toán
                </button>
            </div>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                	<form action="${ pageContext.request.contextPath }/admin/order/create" method="POST">
                	 <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Nhập địa chỉ</h5>
	                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    </div>
	                    <div class="modal-body">
	                        <input name="address" type="text" class="form-control" placeholder="VD: Số 30 Nguyễn Hy Quang, Đống Đa">
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Đóng</button>
	                        <button type="submit" class="btn btn-outline-success">Tạo đơn hàng</button>
	                    </div>
                	</form>
                   
                </div>
            </div>
        </div>
    </div>
    <footer>Dưỡng Đào</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./js/home.js"></script>
</body>

</html>