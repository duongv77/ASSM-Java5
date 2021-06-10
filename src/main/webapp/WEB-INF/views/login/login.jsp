<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-box">
        <h1>Đăng nhập </h1>
        <div class="textbox">
            <i class="fa fa-user" aria-hidden="true"></i>
            <input type="text" placeholder="Tài khoản" id="user" value="duongdao">
            <span class="messenger-error"></span>
        </div>
        <div class="textbox">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" placeholder="Mật khẩu" id="password" value="123">
            <span class="messenger-error"></span>
        </div>
        <a href="#">
            <input class="btn" type="button" name="login" value="Đăng nhập">
        </a>
    </div>
    <script src="./js/login.js"></script>
</body>
</html>