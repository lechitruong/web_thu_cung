<%@page import="java.util.ArrayList"%>
<%@page import="com.demo.entities.Pets"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Pet Shop|Cửa Hàng Mua Bán Thú Cưng</title>
<meta name="keywords"
	content="Chó cảnh, pet, cách nuôi chó, mua thú cưng">
<meta name="description" content="Mua bán chó cảnh">
<meta http-equiv="refresh" content="3600">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="${pageContext.request.contextPath}/assets/user/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/responsive.css">
<!-- responsive -->
<link rel="stylesheet" media="mediatype and|not|only (expressions)"
	href="print.css">
<!-- icon web -->
<link
	href="${pageContext.request.contextPath}/assets/user/image/icon/icon-logo.PNG"
	rel="shortcut icon" />
<!-- icon -->
<!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/${pageContext.request.contextPath}/assets/user/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" /> -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/user/css/bootstrap.min.css">


<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/${pageContext.request.contextPath}/assets/user/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&family=Open+Sans:ital@1&family=Poppins:wght@100;300&family=Roboto:ital,wght@0,300;1,300&display=swap"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/all.min.css"> -->
<!-- Link Font Awesome -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/${pageContext.request.contextPath}/assets/user/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/user/css/all.min.css">
</head>

<body>
	<div class="overlay"></div>
	<!--  header -->
	<header id="header">
		<div class="tieude">
			<div class="col30">
				<img
					src="${pageContext.request.contextPath}/assets/user/image/icon/logo-shop.png"
					alt="Petshop" />
			</div>
			<div class="col40">
				<div class="search">
					<input type="search" placeholder="Bạn tìm gì..." /> <input
						type="image" value="timkiem"
						src="${pageContext.request.contextPath}/assets/user/image/icon/search-icon.png" />
				</div>
			</div>
			<div class="col10 header-icon">
				<a id="hotro" href="#"> <img class="header-icon-img"
					src="${pageContext.request.contextPath}/assets/user/image/icon/hotro-icon.png"
					alt="hỗ trợ"> <span class="header-icon-label">Hỗ trợ</span>
				</a>
			</div>
			<div class="col10 header-icon header-icon__cart">
				<a href="${pageContext.request.contextPath}/giohang"> <img
					class="header-icon-img"
					src="${pageContext.request.contextPath}/assets/user/image/icon/giohang-icon.png"
					alt="Giỏ hàng"> <%
 HttpSession session2 = request.getSession();
 List<Pets> pets = new ArrayList<Pets>();
 if (session2.getAttribute("pets") != null) {
 	pets = (List<Pets>) session2.getAttribute("pets");
 }

 int i = -1;
 %> <span class="header__cart-notice"><%=pets == null ? 0 : pets.size()%></span>
					<span class="header-icon-label">Giỏ hàng</span>
					<div class="header__cart">
						<!-- No sp: header__cart-list-sp-no -->
						<div class="header__cart-list-sp" id="productList">
							<!-- <img src="./assets/img/team.jpg" alt="" class="header__cart-img">
                            <span class="header__cart-title-sp">Team Đắk Lắk</span> -->
							<div class="header__cart-title">
								<h4 class="header__cart-title-text">Sản phẩm đã thêm</h4>
							</div>
							<ul class="header__cart-list-sp-product">

								<%
								for (Pets pet : pets) {
								%>
								<li class="header__cart-product-sp"><img
									src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%=pet.getImage() %>"
									alt="" class="header__cart-product-img">
									<div class="header__cart-product-list">
										<div class="header__cart-product-inf">
											<span class="header__cart-product-title"><%=pet.getPetName()%></span>
											<div class="header__cart-product-item"
												onclick="deleteProduct(this)">
												<a
													href="${pageContext.request.contextPath}/giohang?action=remove&id=<%= ++i %>"">
													<i class="fa-solid fa-trash-can"></i>
												</a>
											</div>
										</div>
										<div class="header__cart-product-unitPrice">
											<span class="header__cart-product-price"><%=pet.getMoney()%>đ
											</span> <span class="header__cart-product-mul">X</span> <span
												class="header__cart-product-quanlity">1</span>
										</div>
									</div></li>
								<%
								}
								%>
							</ul>
							<div class="header__cart-btn">
								<button class="btn btn-black">
									<a href="${pageContext.request.contextPath}/giohang">Xem
										giỏ hàng </a>
								</button>
								<button class="btn btn-red">
									<a href="${pageContext.request.contextPath}/checkout">Thanh
										toán </a>
								</button>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col10 header-icon">
				<a href="${pageContext.request.contextPath}/thongtintaikhoan"> <img
					class="header-icon-img"
					src="${pageContext.request.contextPath}/assets/user/image/icon/dangnhap-icon.png"
					alt="tài khoản"> <c:if test="${sessionScope.user == null }">
						<span class="header-icon-label">Tài Khoản</span>
						<div class="dropdown-content">
							<a href="${pageContext.request.contextPath}/login?action=login">Đăng
								nhập</a> <a
								href="${pageContext.request.contextPath}/login?action=register">Đăng
								ký</a>
						</div>
					</c:if> <c:if test="${sessionScope.user != null }">
						<span class="header-icon-label">${sessionScope.user.fullName }</span>
						<div class="dropdown-content">
							<a href="${pageContext.request.contextPath}/thongtintaikhoan">Tài
								khoản của tôi</a> <a
								href="${pageContext.request.contextPath}/tinhtrangdonhang">Thông
								tin đơn hàng</a> <a
								href="${pageContext.request.contextPath}/login?action=logout">Đăng
								xuất</a>
						</div>
					</c:if>
				</a>
			</div>
		</div>
	</header>
	<!--  nav -->
	<nav id="nav_menu">
		<ul class="menu">
			<li><a href="${pageContext.request.contextPath}/home"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/home-icon.png"
					alt="trang chủ"> <span>TRANG CHỦ</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/giongcho"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/giongcho-icon.png"
					alt="giống chó"> <span>GIỐNG CHÓ</span>

			</a></li>
			<li><a href="${pageContext.request.contextPath}/loaikhac"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/cuncon-icon.png"
					alt="cún con"> <span>LOÀI KHÁC</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/cachnuoi"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/cachnuoi-icon.png"
					alt="cách nuôi"> <span>CÁCH NUÔI</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/dichvu"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/dichvu-icon.png"
					alt="dịch vụ"> <span>DỊCH VỤ</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/gioithieu">
					<img
					src="${pageContext.request.contextPath}/assets/user/image/icon/gioithieu-icon.png"
					alt="giới thiệu"> <span>GIỚI THIỆU</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/lienhe"> <img
					src="${pageContext.request.contextPath}/assets/user/image/icon/lienhe-icon.png"
					alt="liên hệ"> <span>LIÊN HỆ</span>
			</a></li>
		</ul>
	</nav>
	<!-- section main -->
	<jsp:include page="${p }"></jsp:include>
	<!-- nut go to back -->
	<div class="back-to-top" id="backtop">
		<a href=""> <img
			src="${pageContext.request.contextPath}/assets/user/image/icon/icon-backtotop.png"
			alt="back to top" />
		</a>
	</div>
	<!-- thong tin lien he -->
	<div class="contact-bubbles">
		<div class="bubbles-mesenge">

			<a target="_blank"
				href="https://www.facebook.com/Petshop-112119790614434"><img
				src="${pageContext.request.contextPath}/assets/user/image/icon/facebook-icon.png"
				alt="icon" /></a>

		</div>
		<div class="bubbles-mail">

			<a href="mailto:petshop.cuahangmuabanthucung@gmail.com"><img
				src="${pageContext.request.contextPath}/assets/user/image/icon/mail-icon.png"
				alt="icon" /></a>

		</div>
		<div class="bubbles-phone">

			<a target="_blank" href="${pageContext.request.contextPath}/lienhe"><img
				src="${pageContext.request.contextPath}/assets/user/image/icon/phone-con-thongtin.png"
				alt="icon" /></a>

		</div>

	</div>
	<!-- form ho tro -->
	<div class="form-support">
		<div>
			<h1>HỖ TRỢ</h1>
		</div>
		<div>
			<img
				src="${pageContext.request.contextPath}/assets/user/image/icon/user-name.png" /><input
				type="text" placeholder="Nhập họ và tên..." />
		</div>
		<div>
			<img
				src="${pageContext.request.contextPath}/assets/user/image/icon/number-phone.png" /><input
				type="text" placeholder="Nhập số điện thoại..." />
		</div>

		<div>
			<img
				src="${pageContext.request.contextPath}/assets/user/image/icon/mail-name.png" /><input
				type="text" placeholder="Nhập email của bạn..." />
		</div>
		<div class="question">
			<textarea placeholder="Nhập nội dung" rows="5">
Nhập nội dung
        </textarea>
			<div>
				<input type="button" value="Gửi đi" />
			</div>
		</div>
		<div id="knot">
			<img
				src="${pageContext.request.contextPath}/assets/user/image/icon/botton-out.png">
		</div>
	</div>


	<!--footer-->
	<footer>
		<div class="footer">
			<div class="col30 footer-logo">
				<img
					src="${pageContext.request.contextPath}/assets/user/image/icon/logo-shop.png"
					alt="logoshop" />
			</div>
			<div class="col40 freeship">
				<div>
					<img
						src="${pageContext.request.contextPath}/assets/user/image/icon/icon-shipping.png"
						alt="shipping" />
				</div>
				<div>Giao hàng miễn phí tại TP.HCM, Hà Nội, Đà Nẵng Áp dụng
					cho đơn hàng từ 500.000đ trở lên</div>
			</div>

		</div>
		<div class="footer">
			<div class="col20 footer-info">
				<h6>Về chúng tôi</h6>
				<ul>
					<li><a href="#">Giới thiệu</a></li>
					<li><a href="#">Chi nhánh</a></li>
					<li><a href="#">Liên hệ</a></li>
					<li><a target="_blank" href="http://online.gov.vn/"><img
							src="${pageContext.request.contextPath}/assets/user/image/icon/icon-bocongthuong.png"
							alt="bộ công thương"></a></li>
					<li><a target="_blank"
						href="https://www.dmca.com/Protection/Status.aspx?ID=1bf3f65e-4ac8-457e-8400-9d299263f727"><img
							src="${pageContext.request.contextPath}/assets/user/image/icon/_dmca_premi_badge_7.png"
							alt="chứng nhận"></a></li>
				</ul>
			</div>
			<div class="col40 footer-support">
				<h6>Hỗ trợ khách hàng</h6>
				<ul>
					<li><a href="#">Hướng dẫn mua hàng</a></li>
					<li><a href="#">Điều khoản và điều kiện</a></li>
					<li><a href="#">Chính sách bảo mật</a></li>
					<li><a href="#">Chính sách thanh toán</a></li>
					<li><a href="#">Chính sách giao hàng</a></li>
					<li><a href="#">Chính sách đổi trả</a></li>
					<li><a href="#">Hướng dẫn gửi trả hàng</a></li>
					<li><a href="#">Chính sách bảo hành</a></li>
					<li><a href="#">Mua trả góp</a></li>
					<li><a href="#">Chất lượng dịch vụ</a></li>
				</ul>
			</div>
			<div class="col40 footer-contact">
				<h6>Thông tin liên hệ</h6>
				<ul>
					<li>Địa chỉ: Chung cư An Bình, An Bình, Dĩ An, Bình Dương <a
						target="_blank"
						href="https://www.google.com/maps/search/dai+hoc+mo+tphcmnguyen+kiem/@10.776026,106.6873724,16.58z?hl=vi-VN">Chỉ
							đường</a></li>
					<li>Địa chỉ: Đại Học Nông Lâm, Khu Phố 6, Linh Trung, Thủ
						Đức, Thành phố Hồ Chí Minh <a target="_blank"
						href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90H+M%E1%BB%9F+
                        TP.+H%E1%BB%93+Ch%C3%AD+Minh/@10.7762811,106.6860528,16.58z/data=!4m5!3m4!1s0x31752f3ae35e3725:0x20c5174a
                        47f97be3!8m2!3d10.776266!4d106.6904628?hl=vi-VN">Chỉ
							đường</a>
					</li>
					<li>Địa chỉ: Tân Phú Tân Hội Đức Trọng Lâm Đồng. <a
						target="_blank"
						href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+THPT
                        +L%C6%B0%C6%A1ng+Th%E1%BA%BF+Vinh/@9.9069258,106.5655095,17z/data=!4m5!3m4!1s0x319ff5bf4d219b61:0xc1d836c355101725!8m2!3d9.9069469!4d106.5642804?hl=vi
                        -VN">Chỉ
							đường</a></li>
					<li>Email: <a href="mailto:petshop.cuahangthucung@gmail.com">thucungshop.cuahangthucung@gmail.com</a>
					</li>
					<li>Holine: <span class="mauholine">0797612838</span>
					</li>
					<li>Website: <a href="http://127.0.0.1:5500/index.html">https://pethouse.com.vn</a>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/user/javascript/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/user/javascript/all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/user/javascript/style_javascript.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/user/javascript/javascript/checkout.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js"
		integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/user/css/material-design-iconic-font.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/user/css/font-awesome.min.css">
	<!-- Font Awesome Stars-->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/user/css/fontawesome-stars.css">
</body>

</html>