<%--
  Created by IntelliJ IDEA.
  User: lephu
  Date: 12/7/2023
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/login__register.css">
    <title>Đăng ký</title>
</head>
<body>
<div class="container">
    <div class="registration form">
        <header>Đăng ký</header>
        <form action="#">
            <input type="text" placeholder="Vui lòng nhập Tên đăng nhập">
            <input type="text" placeholder="Vui lòng nhập Email">
            <input type="password" placeholder="Vui lòng nhập Mật khẩu">
            <input type="password" placeholder="Vui lòng nhập lại Mật khẩu">
            <input type="button" class="button" value="Đăng ký">
        </form>
        <div class="signup">
          <span class="signup">Bạn đã có tài khoản?
            <a href="./login.html">Đăng nhập</a>
          </span>
        </div>
    </div>
</div>
</body>
</html>
