<%@page import="com.demo.models.PetModel"%>
<%@page import="com.demo.entities.Pets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
PetModel petModel = new PetModel();
%>
<section class="main">
	<section class="section-content">

		<div id="carouselExample" class="carousel slide">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/assets/user/image/anhhotro/bootstrap-img.PNG"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/assets/user/image/anhhotro/bootstrap1-img.PNG"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/assets/user/image/anhhotro/boostrap2.jpg"
						class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExample" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

	</section>
	<div>
		<h4>Thú cưng hot</h4>
	</div>

	<section class="list-dog hot-pets" data-section="1">
		<button class="prevBtn">
			<i class="fa-solid fa-chevron-left"></i>
		</button>
		<div class="list-pet">
			<% for (Pets pet : petModel.findTop10()) { %>
			<div class="info-dog item-pet">
				<div class="overlay__product">
					<button
						class="overlay__product--button test_overlay overlay__product--watch"
						src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet.getImage() %>">
						<input class="valueID" type="hidden" value="<%= pet.getId() %>">
						
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
					<button class="overlay__product--button overlay__product--add"
						>
						<a href="${pageContext.request.contextPath}/giohang?action=addToCart&id=<%= pet.getId() %>"><i class="fa-solid fa-plus"></i></a>
					</button>
				</div>
				<img class="img"
					src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet.getImage() %>"
					alt="ALASKA" />
				<div>
					<div class="col40">
						<span>ID: <%= pet.getId() %></span>
					</div>
					<div class="col60">
						<i class="fas fa-star star1"></i> <i class="fas fa-star star2"></i>
						<i class="fas fa-star star3"></i> <i class="fas fa-star star4"></i>
						<i class="fas fa-star star5"></i>
					</div>
				</div>
				<h5 class="product_name"
					style="color: purple; font-family: 'Open Sans', sans-serif; font-size: 18;"><%= pet.getPetName() %></h5>
				<div>
					<div class="col40 money">
						<span class="info-dog--money-new"><%= pet.getMoney() %></span>
					</div>
					<div class="col60">
						<span>SL: <%= pet.getAmount() %> </span>
					</div>
				</div>
			</div>
				
			<% } %>

		</div>
		<button class="nextBtn">
			<i class="fa-solid fa-chevron-right"></i>
		</button>
	</section>
	<div style="display: flex; position: relative;">
		<h4>Thú cưng khác</h4>
		<div class="dropdown"
			style="position: absolute; right: 0; bottom: -4px;">
			<button style="width: 180px; height: 90%;"
				class="btn btn-secondary dropdown-toggle" type="button"
				data-bs-toggle="dropdown" aria-expanded="false">Mức giá</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">Tăng dần</a></li>
				<li><a class="dropdown-item" href="#">Giảm dần</a></li>
			</ul>
		</div>
	</div>
	<div class="pagination-list">
	<script>
		$(document).ready(function() {
			$('.test_overlay').click(function() {
				var id = $(this).find($('.valueID')).val();
				var s = '';
				$.ajax({
					type: 'GET',
					url: '${pageContext.request.contextPath}/main',
					contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
					data: {
						id : id,
						action: 'petDetails'
					},
					success: function(pet) {
						console.log(pet.id);
						s+= '<div class="grid-2"><img id="mainAvatar" src="${pageContext.request.contextPath}/assets/user/image/anhcho/' + pet.image +'"alt="AKITA INU" /></div><div class="grid-2 product-information"><h2 class="product-name">' + pet.petName+ '</h2><div class="product__money"><p class="product__money--old">' + pet.money + '</p><p class="product__money--new">' + pet.money +'</p></div><div class="product__describe"><p>' + pet.description +'</p></div><div class="product__promotion"><h4 class="product__promotion--title">Khuyến mãi hot nhất</h4><li>Miễn phí phần thức ăn lớn trong hôm nay</li><li>Giftcard lên tới 100K</li><li>Phiếu mua hàng trị giá 50K</li></div><form class="cart" method="post"><div class="quanlity"><input type="button" value="-" class="button minus"onclick="decreaseQuantity()"> <input type="text"class="input-text" step="1" min="1" max="9999" name="quanlity"value="1" title="SL" size="4" pattern="[0-9]*"inputmode="numeric"> <input type="button" value="+"class="button plus" onclick="increaseQuantity()"></div><button type="submit" name="addCart" onclick="" class="addCartButton"><a href="${pageContext.request.contextPath }/giohang?action=addToCart&id='+ pet.id +'" style="text-decoration: none;"><i class="fa-solid fa-cart-plus"></i> MUA HÀNG NGAY</a></button></form></div>';
						$('#result').html(s);
					}
				});
			});
		});
	</script>
		<section class="list-dog" id="pet-container">
	     <% for(Pets pet:petModel.findAll()){ %>
			<div class="info-dog">
				<div class="overlay__product">
					<button
						class="overlay__product--button test_overlay overlay__product--watch">
						<input class="valueID" type="hidden" value="<%= pet.getId() %>">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
					<button class="overlay__product--button overlay__product--add"">
						<a href="${pageContext.request.contextPath }/giohang?action=addToCart&id=<%=pet.getId() %>">
						<i class="fa-solid fa-plus"></i>						
						</a>
					</button>
				</div>
				<img
					src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet.getImage() %>"
					alt="Chó Husky Sibir" />
				<div>
					<div class="col40">
						<span>ID: <%= pet.getId() %></span>
					</div>
					<div class="col60">
						<i class="fas fa-star star1"></i> <i class="fas fa-star star2"></i>
						<i class="fas fa-star star3"></i> <i class="fas fa-star star4"></i>
						<i class="fas fa-star star5"></i>
					</div>
				</div>
				<h5 class="product_name"
					style="color: purple; font-family: 'Open Sans', sans-serif; font-size: 18;"><%= pet.getPetName() %></h5>
				<div>
					<div class="col80 money">
						<span class="info-dog--money-new"><%= pet.getMoney() %></span>
					</div>
					<div class="col40" style="text-align: right;">
						<span>SL: <%= pet.getAmount() %> </span>
					</div>
				</div>
			</div>
			 <% } %>
		</section>
		<div id="pagination-buttons">
			<ul class="pagination"></ul>
		</div>
	</div>
	<div class="product">
		<label id="product__close" class="product--close"> <svg
				xmlns="http://www.w3.org/2000/svg" height="1em"
				viewBox="0 0 384 512">
				<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
				<path
					d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z" /></svg>
		</label>
		<div class="product__title">
			<h1>Thông tin sản phẩm</h1>
		</div>
		<div class="product-container" id="result">
			<div class="grid-2">
				<img id="mainAvatar"
					src="${pageContext.request.contextPath}/assets/user/image/giongcho/akita-inu.jpg"
					alt="AKITA INU" />
				<div class="home-product-item__sale-off">
					<span class="home-product-item__sale-off--percent">25%</span> <span
						class="home-product-item__sale-off--label">GIẢM</span>
				</div>
			</div>
			<div class="grid-2 product-information">
				<h2 class="product-name">CORGI</h2>
				<div class="product__money">
					<p class="product__money--old">2.100.000đ</p>
					<p class="product__money--new">1.575.000đ</p>
				</div>
				<div class="product__describe">
					<p>Chúng được coi là giống chó chính thức và là Quốc khuyển của
						Nhật Bản vì những đặc tính ưu điểm của mình.</p>
				</div>
				<div class="product__promotion">
					<h4 class="product__promotion--title">Khuyến mãi hot nhất</h4>
					<li>Miễn phí phần thức ăn lớn trong hôm nay</li>
					<li>Giftcard lên tới 100K</li>
					<li>Phiếu mua hàng trị giá 50K</li>
				</div>
				<form class="cart" method="post">
					<div class="quanlity">
						<input type="button" value="-" class="button minus"
							onclick="decreaseQuantity()"> <input type="text"
							class="input-text" step="1" min="1" max="9999" name="quanlity"
							value="1" title="SL" size="4" pattern="[0-9]*"
							inputmode="numeric"> <input type="button" value="+"
							class="button plus" onclick="increaseQuantity()">
					</div>
					<button type="submit" name="addCart" class="addCartButton">
						<a href="./shoppingcart.html" style="text-decoration: none;">
							<i class="fa-solid fa-cart-plus"></i> MUA HÀNG NGAY
						</a>
					</button>
				</form>
			</div>
		</div>
	</div>
	<div>
		<h4>Tin tức</h4>
	</div>
	<article class="news ">
		<div class="one-news ">
			<div>
				<img
					src="${pageContext.request.contextPath}/assets/user/image/giongcho/bulldog.jpg "
					alt=" " />
			</div>
			<div class="info ">
				<a href="#"> Chó Bully American – Mua Bán Chó Bully Con Thuần
					Chủng, Giá Tốt tại Petshop [...] </a>
			</div>
		</div>
		<div class="one-news ">
			<div>
				<img
					src="${pageContext.request.contextPath}/assets/user/image/giongcho/tinmuaban.jpg"
					alt="hinh ảnh" />
			</div>
			<div class="info ">
				<a href="#"> Chó Corgi Pembroke Wales & Cardigan giá bao nhiêu
					tiền? Mua bán chó Corgi con thuần chủng uy tín tại Petshop [...] </a>
			</div>
		</div>
		<div class="one-news ">
			<div>
				<img
					src="${pageContext.request.contextPath}/assets/user/image/giongcho/tintuc-hinhanh.jpg "
					alt="hinh ảnh" />
			</div>
			<div class="info ">
				<a href="#"> Hướng dẫn làm giấy Vka cho chó theo đúng quy định
					[...] </a>
			</div>
		</div>
	</article>
</section>