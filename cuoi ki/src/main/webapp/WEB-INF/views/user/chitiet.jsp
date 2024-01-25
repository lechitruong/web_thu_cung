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
<!-- danh gia -->
<div class="product__feedback">
	<div class="product__title">
		<h1>Đánh giá sản phẩm</h1>
	</div>
	<div class="review-section">
		<div class="rating">
			<input type="checkbox" id="star1" class="star"
				onclick="handleStarClick(1)"> <label for="star1"
				class="star-label">&#9734;</label> <input type="checkbox" id="star2"
				class="star" onclick="handleStarClick(2)"> <label
				for="star2" class="star-label">&#9734;</label> <input
				type="checkbox" id="star3" class="star" onclick="handleStarClick(3)">
			<label for="star3" class="star-label">&#9734;</label> <input
				type="checkbox" id="star4" class="star" onclick="handleStarClick(4)">
			<label for="star4" class="star-label">&#9734;</label> <input
				type="checkbox" id="star5" class="star" onclick="handleStarClick(5)">
			<label for="star5" class="star-label">&#9734;</label>
		</div>
		<p class="review " id="reviewText">"Đánh giá và nhận xét từ người
			dùng"</p>
		<form class="reviewForm" onsubmit="addComment(); return false;">
			<input type="hidden" id="selectedStar" value="0"> <label
				for="userReview">Đánh giá của bạn:</label>
			<textarea id="userReview" name="userReview" rows="4"
				placeholder="Viết đánh giá của bạn ở đây..."></textarea>
			<button type="submit">Gửi đánh giá</button>
		</form>
		<div class="comment-list" id="comment-list">
			<!-- Existing comments will be dynamically added here -->
			<div class="comment">
				<div class="comment-info">
					<h3>Lê Đình Văn</h3>
					<div class="rating">
						<span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span>
					</div>
					<p class="comment-text">Hành trình bạn cún từ AZPET Hôm nay đã
						1 tháng hơn bạn về mới có dịp gửi feedback. – Về bạn cún: Xinh xắn
						khoẻ mạnh từ lúc về nên trộm vía bạn lớn nhanh; Ăn khoẻ và rất dễ
						ăn. Mới 1 tháng mà từ bé nhỏ xíu vây giờ đã gần 10kg rồi. Nên sau
						1 tháng cũng dành đánh giá tốt cho việc kiểm tra và chọn giống
						ngay từ đầu. Chu đáo và cẩn thận để mình chọn bạn ưng ý nhất.
						Golden thì các bạn tình cảm; thông minh nên mình chọn ngay từ đầu;
						chăm chút 1 xíu sạch sẽ là như cục bông di động. Về phía Azpet:
						Tôi rất cảm kích vì lần đầu mua nên không biết lựa chọn nào tốt.
						Nhưng mọi thứ chỉn chu nên quyết định chọn mua ở Azpet. Mọi thứ
						cần thận, tỉ mỉ và chu đáo đến tận bây giờ. Là khách hàng có nhu
						cầu và cần tham khảo nên mình quay lại để giúp các bạn có niềm tin
						từ khách hàng thực tế. Cảm ơn Azpet và các bạn hỗ trợ Thế và Hằng
						nhé.</p>
					<button onclick="alert('Chức năng trả lời sẽ được thêm ở đây.');">Trả
						lời</button>
				</div>
			</div>
			<div class="comment">
				<div class="comment-info">
					<h3>Lê Chí Trường</h3>
					<div class="rating">
						<span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span>
						<span>&#9733;</span>
					</div>
					<p class="comment-text">Hành trình bạn cún từ AZPET Hôm nay đã
						1 tháng hơn bạn về mới có dịp gửi feedback. – Về bạn cún: Xinh xắn
						khoẻ mạnh từ lúc về nên trộm vía bạn lớn nhanh; Ăn khoẻ và rất dễ
						ăn. Mới 1 tháng mà từ bé nhỏ xíu vây giờ đã gần 10kg rồi. Nên sau
						1 tháng cũng dành đánh giá tốt cho việc kiểm tra và chọn giống
						ngay từ đầu. Chu đáo và cẩn thận để mình chọn bạn ưng ý nhất.
						Golden thì các bạn tình cảm; thông minh nên mình chọn ngay từ đầu;
						chăm chút 1 xíu sạch sẽ là như cục bông di động. Về phía Azpet:
						Tôi rất cảm kích vì lần đầu mua nên không biết lựa chọn nào tốt.
						Nhưng mọi thứ chỉn chu nên quyết định chọn mua ở Azpet. Mọi thứ
						cần thận, tỉ mỉ và chu đáo đến tận bây giờ. Là khách hàng có nhu
						cầu và cần tham khảo nên mình quay lại để giúp các bạn có niềm tin
						từ khách hàng thực tế. Cảm ơn Azpet và các bạn hỗ trợ Thế và Hằng
						nhé.</p>
					<button onclick="alert('Chức năng trả lời sẽ được thêm ở đây.');">Trả
						lời</button>
				</div>
			</div>
			<div class="comment">
				<div class="comment-info">
					<h3>Trần Thanh Trí</h3>
					<div class="rating">
						<span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span>
					</div>
					<p class="comment-text">Hành trình bạn cún từ AZPET Hôm nay đã
						1 tháng hơn bạn về mới có dịp gửi feedback. – Về bạn cún: Xinh xắn
						khoẻ mạnh từ lúc về nên trộm vía bạn lớn nhanh; Ăn khoẻ và rất dễ
						ăn. Mới 1 tháng mà từ bé nhỏ xíu vây giờ đã gần 10kg rồi. Nên sau
						1 tháng cũng dành đánh giá tốt cho việc kiểm tra và chọn giống
						ngay từ đầu. Chu đáo và cẩn thận để mình chọn bạn ưng ý nhất.
						Golden thì các bạn tình cảm; thông minh nên mình chọn ngay từ đầu;
						chăm chút 1 xíu sạch sẽ là như cục bông di động. Về phía Azpet:
						Tôi rất cảm kích vì lần đầu mua nên không biết lựa chọn nào tốt.
						Nhưng mọi thứ chỉn chu nên quyết định chọn mua ở Azpet. Mọi thứ
						cần thận, tỉ mỉ và chu đáo đến tận bây giờ. Là khách hàng có nhu
						cầu và cần tham khảo nên mình quay lại để giúp các bạn có niềm tin
						từ khách hàng thực tế. Cảm ơn Azpet và các bạn hỗ trợ Thế và Hằng
						nhé.</p>
					<button onclick="alert('Chức năng trả lời sẽ được thêm ở đây.');">Trả
						lời</button>
				</div>
			</div>
		</div>
	</div>
</div>