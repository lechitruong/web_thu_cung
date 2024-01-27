<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.demo.entities.Pets"%>
<%@page import="com.demo.models.PetModel"%>
<%@page import="com.demo.models.CatalogModel"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- product -->
<div class="product__detail">
	<%
	HttpSession session2 = request.getSession();
	CatalogModel catalogmodel = new CatalogModel();
	Pets pet = new Pets();
	if (session2.getAttribute("pet") != null) {
		pet = (Pets) session2.getAttribute("pet");
	}
	%>
	<div class="product__title">
		<h1>Thông tin sản phẩm</h1>
	</div>
	<div class="product-container">
		<div class="grid-2">
			<img id="mainAvatar"
				src="${pageContext.request.contextPath }/assets/user/image/anhcho/<%= pet.getImage() %>"
				alt="AKITA INU" />
			<div class="home-product-item__sale-off">
				<span class="home-product-item__sale-off--percent">43%</span> <span
					class="home-product-item__sale-off--label">GIẢM</span>
			</div>
		</div>
		<div class="grid-2 product-information">
			<h2 class="product-name"><%=pet.getPetName() %></h2> 
			<div class="product__money">
				<p class="product__money--old"><%=pet.getMoney()%></p>
				<p class="product__money--new"><%=pet.getMoney()%></p>
			</div>
			<div class="product__describe">
				<p><%=pet.getDetail()%></p>
			</div>
			<div class="product__promotion">
				<h4 class="product__promotion--title">Khuyến mãi hot nhất</h4>
				<li>Miễn phí phần thức ăn lớn trong hôm nay</li>
				<li>Giftcard lên tới 100K</li>
				<li>Phiếu mua hàng trị giá 50K</li>
			</div>
			<div class="product__category">
				<label for="">Danh mục: </label> <span><%= catalogmodel.findCatalogById(pet.getCatalogId()).getName() %></span>
			</div>
			<form class="cart" method="post">
				<div class="quanlity">
					<input type="button" value="-" class="button minus"
						onclick="decreaseQuantity()"> <input type="text"
						class="input-text" step="1" min="1" max="9999" name="quanlity"
						value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric">
					<input type="button" value="+" class="button plus"
						onclick="increaseQuantity()">
				</div>
				<button type="submit" name="addCart" class="addCartButton">
					<i class="fa-solid fa-cart-plus"></i> 
					<a href="${pageContext.request.contextPath }/giohang?action=addToCart&id=<%=pet.getId() %>">
					MUA HÀNG NGAY
				</button>
			</form>
		</div>
	</div>
</div>
