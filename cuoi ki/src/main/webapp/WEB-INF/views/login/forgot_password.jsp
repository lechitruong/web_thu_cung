<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/user/css/login__register.css">
<title>Pet Shop|Nhập mật khẩu mới</title>
</head>
<body>
	<div class="overlay__pass hidden"></div>
	<div class="container">
		<%
		HttpSession session2 = request.getSession();
		String msg = (String) (session2.getAttribute("msg"));
		String msg1 = msg;
		session2.removeAttribute("msg");
		%>
		<div class="login form">
			<header>Nhập mật khẩu mới</header>
			<form
				action="${pageContext.request.contextPath}/forgotpassword?action=forgotpassword"
				method="post">
				<span style="color: red"> <%=msg1 == null ? "" : msg1%>
				</span> <input type="password" name="newpass"
					placeholder="Vui lòng nhập Mật khẩu mới"> <input
					type="password" name="newpass2"
					placeholder="Vui lòng nhập lại Mật khẩu mới"> <a
					href="./change_password.html">Đổi mật khẩu</a> <input type="submit"
					class="button change_password" value="Xác nhận">
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