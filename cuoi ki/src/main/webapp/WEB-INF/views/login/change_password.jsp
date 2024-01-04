<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/user/css/login__register.css">
<title>Pet Shop|Đổi mật khẩu</title>
</head>
<body>
	<div class="overlay__pass hidden"></div>
	<div class="container">
		<div class="login form">
			<header>Đổi mật khẩu</header>
			<%
			HttpSession session2 = request.getSession();
			String msg = (String) (session2.getAttribute("msg"));
			String msg1 = msg;
			session2.removeAttribute("msg");
			%>
			<form action="${pageContext.request.contextPath}/changepassword?action=changepassword"
				method="post">
				<span style="color: red"> <%=msg1 == null ? "" : msg1%> 
				<input type="text" name="email" placeholder="Vui lòng nhập Email">
					<input type="password" name="oldpass" placeholder="Vui lòng nhập Mật khẩu cũ"> 
					<input type="password" name="newpass" placeholder="Vui lòng nhập Mật khẩu mới"> 
					<a href="${pageContext.request.contextPath}/forgotpassword">Quên
						mật khẩu</a> 
					<input type="submit" class="button change_password" value="Đổi mật khẩu">
			</form>
			<div class="signup">
				<span class="signup">Chưa có tài khoản? <a
					href="${pageContext.request.contextPath}/login?action=register">Đăng
						ký</a>
				</span>
			</div>
		</div>
	</div>

	<div class="pass-notify hidden">
		<span class="signup">Đổi mật khẩu thành công! <input
			type="submit" class="button login_button" value="Đăng nhập">
	</div>
</body>
</html>