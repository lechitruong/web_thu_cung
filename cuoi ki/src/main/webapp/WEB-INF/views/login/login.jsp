<%--
  Created by IntelliJ IDEA.
  User: lephu
  Date: 12/7/2023
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/login__register.css">
</head>
<body>
<div class="container">
    <div class="login form">
        <header>Đăng nhập</header>
        <form method="post" action="${pageContext.request.contextPath }/login?action=login">
            <input type="text" name="username" placeholder="Vui lòng nhập Email">
            <input type="password" name="password" placeholder="Vui lòng nhập Mật khẩu">
            <div style="display: flex; justify-content: space-between; ">
                <a href="./forget_password.html">Quên mật khẩu</a>
                <a href="./doimatkhau.html">Đổi mật khẩu</a>
            </div>
            <input type="submit" class="button" value="Đăng nhập">
        </form>
        <div class="signup">
        <span class="signup">Chưa có tài khoản?
         <a href="./register.html">Đăng ký</a>
        </span>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath }assets/user/javascript/style_javascript.js"></script>
</body>
</html>
