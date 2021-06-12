<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/login.css">
</head>

<body>
	<form method="POST" action="${ pageContext.request.contextPath }/login">
		<div class="login-box">
			<c:if test="${ not empty sessionScope.errorMessLogin }">
				<div class="message-login-error">
					${ sessionScope.errorMessLogin }
				</div>

				<c:remove var="errorMessLogin" scope="session" />
			</c:if>
			<h1>Đăng nhập </h1>
			<div class="textbox">
				<i class="fa fa-user" aria-hidden="true"></i>
				<input type="email" placeholder="Tài khoản" id="user" name="email" value="duongv77@gmail.com">
				<span class="messenger-error"></span>
			</div>
			<div class="textbox">
				<i class="fa fa-lock" aria-hidden="true"></i>
				<input type="password" placeholder="Mật khẩu" id="password" name="password" value="123">
				<span class="messenger-error"></span>
			</div>
			<a href="#">
				<input class="btn" type="submit" name="login" value="Đăng nhập">
			</a>
		</div>
	</form>

	<script src="./js/login.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
	</script>
	
</body>

</html>