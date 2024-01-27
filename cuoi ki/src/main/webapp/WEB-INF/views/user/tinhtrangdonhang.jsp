<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.demo.entities.Users"%>
<%@page import="com.demo.models.OrderModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.demo.entities.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<%
		HttpSession session2 = request.getSession();
		Users user = (Users)session2.getAttribute("user");
		List<Orders> orders = new OrderModel().getAllByUserID(user.getId());
		int i = 0;
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(new java.util.Locale("vi", "VN"));

		  // Định dạng số
		 
	%>
	  <section class="container_status">
    <h2>Chi tiết đơn hàng</h2>
    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Đơn hàng</th>
                <th>Ngày mua hàng</th>
                <th>Địa chỉ nhận</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Ghi chú</th>
                <th>Tổng tiền</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <!-- Replace the following rows with your actual data from the "ships" table -->
            <!-- noi gan link de nhay qua xem cu the don hang -->
            <% for(Orders order : orders){ 
            	++i;
            %>
            <tr data-id="<%= order.getId() %>" style="cursor: pointer;" id="clickTR">
                <td><%= order.getId() %></td>
                <td>Đơn hàng <%= i %></td>
                <td><%= dateFormat.format(order.getOrderDate()) %></td>
                <td><%= order.getAddress() %></td>
                 <td><%= order.getEmail() %></td>
                  <td><%= order.getPhoneNumber() %></td>
                   <td><%= order.getNote() %></td>
                    <td><%= currencyFormatter.format(order.getTotalMoney()) %></td>
                     <td><%= order.isStatus() ? "Đang giao" : "Chờ xác nhận" %></td>
            </tr>
          <% } %>
            <!-- Add more rows as needed -->
        </tbody>
    </table>   
    <script>
    	$(document).ready(function () {
			$('tr').click(function () {
				var s = '';
				var orderID = $(this).attr('data-id');
				console.log(orderID);
				 $.ajax({
					 type: 'get',
					 url: '${pageContext.request.contextPath}/dialogmessage',
					 data: {
						 orderID : orderID
					 },
					 success: function (data) {
						 var orderdetails = data.orderdetails;
						 var pets = data.pets;
						for (var i = 0; i < orderdetails.length; i++) {
							s+= '<div class="product-row" id="result"><img height="50px" width="50px" src="${pageContext.request.contextPath}/assets/user/image/anhcho/' + pets[i].image + '"alt="" id="petimage"> <span id="petname">' + pets[i].petName +'</span><div><input type="text" class="quantity" name="quantity" id="quantity-gold" value="1" readonly></div><span class="total total-sp" id="money" id="total-gold">' + pets[i].money + '</span></div> ';
						}
						$('#result').html(s);
						
					}
				 });
				 $( "#dialog-message" ).dialog({
				      modal: true,
				      height: 400,
				      width: 1000,
				      buttons: {
				        Ok: function() {
				          $( this ).dialog( "close" );
				        }
				      }
				    });
			});
		});
    </script>
    <div id="dialog-message" title="Download complete" style="display: none;" >
 <div class="order-form" style="height: 300px; width: 900px;">
				<h3>Đơn đặt hàng của bạn</h3>
					<div id="result"> 
					<div class="product-row" >
						<img height="50px" width="50px"
							src="${pageContext.request.contextPath}/assets/user/image/anhcho/${pet.image}"
							alt="" id="petimage"> 
							<span id="petname">Con cho</span>
						<div>
							<input type="text" class="quantity" name="quantity" id="quantity-gold" value="1"
								readonly>
						</div>
						<span class="total total-sp" id="money" id="total-gold">S tien</span>
					
					</div>
					</div>
					
		

				
			</div>
</div>
</section>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.order-form {
	width: 50%;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h3 {
	text-align: center;
}

.product-row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
}

.quantity {
	width: 40px;
	text-align: center;
}

.total {
	font-weight: bold;
}

.discount-code {
	margin-top: 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.payment-options {
	margin-top: 20px;
}

.checkout-button {
	background-color: red;
	padding: 10px;
	cursor: pointer;
	color: white;
	border: none;
	border-radius: 5px;
}

@media ( max-width : 768px) {
	.order-form {
		width: 80%;
	}
}

.payment-options {
	margin-top: 20px;
	text-align: center;
}

.payment-options button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 10px;
	margin: 10px 10px;
	border: none;
	border-radius: 20px;
	cursor: pointer;
	font-size: 16px;
}

.payment-options button:hover {
	background-color: #45a049;
}

.discount-code {
	margin-top: 20px;
	text-align: center;
}

.discount-code input {
	padding: 10px;
	width: 200px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-right: 10px;
}

.discount-code button {
	background-color: #3498db;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.discount-code button:hover {
	background-color: #2980b9;
}

.checkout-button {
	background-color: #e74c3c;
	color: white;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 18px;
	transition: background-color 0.3s ease;
}

.checkout-button:hover {
	background-color: #c0392b;
}

.container {
	max-width: 900px;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
}

form {
	margin-bottom: 100px;
}

select {
	padding: 10px;
	margin: 3px;
	width: 100%;
	box-sizing: border-box;
}

#result {
	font-size: 18px;
	color: #333;
}

/* General Styles */
.checkout-form-list {
	margin-bottom: 20px;
}

.checkout-form-list label {
	display: block;
	font-weight: bold;
	margin-bottom: 8px;
}

.checkout-form-list input, .checkout-form-list select,
	.checkout-form-list textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

/* Different Address Section */
.different-address {
	margin-top: 30px;
}

#ship-box-info {
	display: none;
	/* Hide the different address section initially */
}

/* Buttons and Additional Styles */
.checkout-button {
	background-color: #e74c3c;
	color: white;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 18px;
	transition: background-color 0.3s ease;
}

.checkout-button:hover {
	background-color: #c0392b;
}

/* Responsive Styles */
@media screen and (max-width: 768px) {
	.row {
		flex-direction: column;
	}
	.checkout-form-list {
		width: 100%;
	}
}
.checkout-area {
            padding-top: 60px;
            padding-bottom: 30px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .col-lg-6 {
            width: 48%; /* Để đảm bảo không có khoảng trống giữa hai div */
            margin-bottom: 20px; /* Để tạo khoảng cách giữa các hàng */
        }

        /* Thêm các kiểu CSS cho div và các phần tử khác nếu cần thiết */
        div {
            /* Thêm kiểu CSS cho div */
            margin-bottom: 10px;
        }
</style>