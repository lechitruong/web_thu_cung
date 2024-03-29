<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
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
</head>
<div class="checkout-area pt-60 pb-30">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="${pageContext.request.contextPath }/checkout?action=dathang" method="post" class="row" id="orderForm">
					<div class="checkbox-form col-lg-6">
						<h3>CHI TIẾT THANH TOÁN</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>Tên <span class="required">*</span></label> <input
										placeholder="Tên" name="name" id="name" type="text">
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
									<label>Địa chỉ <span class="required">*</span></label> <input
										placeholder="Địa chỉ" name="address" id="address" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label style="margin-bottom: 13px;">Địa Chỉ Email <span
										class="required">*</span></label>
										<input class="form-control" name="email" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" id="email" type="email" placeholder="Nhập email" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Số ĐT <span class="required">*</span></label> 
									<input class="form-control" value="${sessionScope.accountdetails != null ? sessionScope.accountdetails.phonenumber : "" }" name="phonenumber" id="phonenumber" pattern="(\(\+[0-9]{2}\)|0)([0-9]{9,10})" type="tel" placeholder="Nhập số điện thoại của bạn" required>
								</div>
							</div>
						</div>
						<div class="different-address">
							<div class="order-notes">
								<div class="checkout-form-list">
									<label>Ghi chú khác</label>
									<textarea id="checkout-mess" cols="30" rows="10" name="note"
										placeholder="Điền các thông tin cần ghi chú vào đây"></textarea>
								</div>
							</div>
						</div>
					</div>

			<div class="order-form col-lg-6 ">
				<h3>Đơn đặt hàng của bạn</h3>
				<c:forEach var="pet" items="${sessionScope.pets}">
					<div class="product-row">
						<img height="50px" width="50px"
							src="${pageContext.request.contextPath}/assets/user/image/anhcho/${pet.image}"
							alt="" name="petimage"> 
							<span name="petname">${pet.petName }</span>
						<div>
							<input type="text" class="quantity" name="quantity" id="quantity-gold" value="1"
								readonly>
						</div>
						<span class="total total-sp" name="money" id="total-gold">${pet.money }</span>
					</div>
				</c:forEach>

				<div>
					<p class="total">
						Tổng số tiền đơn hàng: <span id="total-order">0đ</span> <input name="totalmoney" id="total-order1" type="hidden" >
					</p>
				</div>

				<div class="payment-options">
					<button onclick="payOnDelivery()">Thanh toán khi nhận hàng</button>
					<button onclick="payOnline()">Thanh toán online</button>
				</div>

				<div class="payment-details" id="payment-details"></div>

				<button type="submit" class="checkout-button">Đặt
					hàng</button>
			</div>
			</form>
			</div>
		</div>
	</div>
</div>

<script>
                    // Wait for the DOM to be ready
                    document.addEventListener('DOMContentLoaded', function () {
                        // Get all elements with class "total"
                        var totalElements = document.querySelectorAll('.total-sp');

                        // Initialize total money
                        var totalMoney = 0;

                        // Loop through each total element
                        totalElements.forEach(function (totalElement) {
                            // Parse the money value from the text content of the element
                            var money = parseFloat(totalElement.textContent);

                            // Check if the parsed value is a valid number
                            if (!isNaN(money)) {
                                // Add the money to the total
                                totalMoney += money;
                            }
                        });

                        // Display the total money in the console or wherever you need it
                        document.getElementById('total-order').innerText = totalMoney + " triệu đồng";
                        document.getElementById('total-order1').value = totalMoney;
                    });
                        var productPrices = {
                            gold: 100000,
                            husky: 100000
                        };

                        var quantities = {
                            gold: 1,
                            husky: 1
                        };

                        function updateTotal(product) {
                            var quantity = quantities[product];
                            var total = quantity * productPrices[product];
                            document.getElementById('total-' + product).textContent = total.toLocaleString('vi-VN') + 'đ';
                            updateTotalOrder();
                        }

                        function increaseQuantity(product) {
                            quantities[product]++;
                            document.getElementById('quantity-' + product).value = quantities[product];
                            updateTotal(product);
                        }

                        function decreaseQuantity(product) {
                            if (quantities[product] > 1) {
                                quantities[product]--;
                                document.getElementById('quantity-' + product).value = quantities[product];
                                updateTotal(product);
                            }
                        }

                        function applyDiscountCode() {
    var discountCode = document.getElementById('discount-code').value;
    if (discountCode === "HIHI") {
        var totalOrderElement = document.getElementById('total-order');
        var totalOrderText = totalOrderElement.textContent.trim();
        var totalOrder = parseFloat(totalOrderText.replace(/[^\d.-]/g, '')); // Remove non-numeric characters

        // Apply the discount
        totalOrder -= 5000;

        // Ensure the correct format for displaying the total order amount
        totalOrderElement.textContent = totalOrder.toLocaleString('vi-VN') + 'đ';
        
        alert("Mã giảm giá đã được áp dụng!");
    } else {
        alert("Mã giảm giá không hợp lệ.");
    }
}

var totalOrder = 0; // Declare totalOrder as a global variable

function updateTotalOrder() {
    var totalGold = quantities['gold'] * productPrices['gold'];
    var totalHusky = quantities['husky'] * productPrices['husky'];
    totalOrder = totalGold + totalHusky;

    // Display the total order with the correct format
    document.getElementById('total-order').textContent = totalOrder.toLocaleString('vi-VN') + 'đ';
}


                        function payOnDelivery() {
                            document.getElementById('payment-details').innerHTML =
                                '<p>Vui lòng cọc 100.000đ vào tài khoản:</p>' +
                                '<p>Số tài khoản: 40366084837 VP Bank</p>' +
                                '<p>Chủ tài khoản: Tran Thanh Tri</p>';
                        }

                        function payOnline() {
                            var totalOrderElement = document.getElementById('total-order');
                            var totalOrder = parseFloat(totalOrderElement.textContent.replace('.000đ', '').replace(',', ''));
                            document.getElementById('payment-details').innerHTML =
                                '<p>Vui lòng thanh toán số tiền ' + totalOrder.toLocaleString('vi-VN') + ' triệu đồng vào tài khoản:</p>' +
                                '<p>Số tài khoản: 40366084837 VP Bank</p>' +
                                '<p>Chủ tài khoản: Tran Thanh Tri</p>';
                        }

                        
                        document.querySelector('.checkout-button').addEventListener('click', function() {
                            console.log('Nút "Đặt hàng" được nhấn.');
                            var name = document.getElementById("name").value;
                            var address = document.getElementById("address").value;
                            var email = document.getElementById("email").value;
                            var phonenumber = document.getElementById("phonenumber").value;

                            // Kiểm tra xem các trường đã nhập đủ thông tin chưa
                            if (!name || !address || !email || !phonenumber) {
                                alert('Vui lòng nhập đủ thông tin để đặt hàng.');
                                return;
                            }

                            alert('Đặt hàng thành công');
                        });
                                    var citis = document.getElementById("city");
                                    var districts = document.getElementById("district");
                                    var wards = document.getElementById("ward");
                                    var Parameter = {
                                        url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
                                        method: "GET",
                                        responseType: "application/json",
                                    };
                                    var promise = axios(Parameter);
                                    promise.then(function (result) {
                                        renderCity(result.data);
                                    });

                                    function renderCity(data) {
                                        for (const x of data) {
                                            citis.options[citis.options.length] = new Option(x.Name, x.Id);
                                        }
                                        citis.onchange = function () {
                                            district.length = 1;
                                            ward.length = 1;
                                            if (this.value != "") {
                                                const result = data.filter(n => n.Id === this.value);

                                                for (const k of result[0].Districts) {
                                                    district.options[district.options.length] = new Option(k.Name, k.Id);
                                                }
                                            }
                                        };
                                        district.onchange = function () {
                                            ward.length = 1;
                                            const dataCity = data.filter((n) => n.Id === citis.value);
                                            if (this.value != "") {
                                                const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

                                                for (const w of dataWards) {
                                                    wards.options[wards.options.length] = new Option(w.Name, w.Id);
                                                }
                                            }
                                        };
                                    }
                                </script>
                                <script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>