<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	   <!-- shopping cart -->
  <div class="headline">
    <h1>Giỏ hàng</h1>
</div>
  <div class="Shopping-cart-area pt-40 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-12">
             
                    <div class="table-content table-responsive">
                    <button style="border: none; outline: none;">
                    <a href="${pageContext.request.contextPath}/main" style="background-color: black; color: blue; text-decoration:none; padding: 5px; margin-top: 10px;  ">Trở lại</a>                    
                    </button>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="li-product-remove">Xóa</th>
                                        <th class="li-product-thumbnail">Ảnh</th>
                                        <th class="cart-product-name">Sản phẩm</th>
                                        <th class="li-product-price">Giá</th>
                                        <th class="li-product-quantity">Số lượng</th>
                                        <th class="li-product-subtotal">Tổng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <% 
                                	int i = -1;
                                %>
                                   <c:forEach var="pet" items="${sessionScope.pets}">
                                   
                                   		
                                   		<tr>
                                        <td class="li-product-remove"><a onclick="return confirm('Xoa khoi gio hang?');" href="${pageContext.request.contextPath}/giohang?action=remove&id=<%= ++i %>""><i class="fa fa-times"></i></a></td>
                                        <td class="li-product-thumbnail"><a href="#"><img style="width: 190px;" src="${pageContext.request.contextPath}/assets/user/image/anhcho/${pet.image}" alt="Li's Product Image"></a></td>
                                        <td class="li-product-name"><span >${pet.petName} </span></td>
                                        <td class="li-product-price"><span class="amount">${pet.money}</span></td>
                                        <td class="quantity">
                                                <input type="text" class="input-text_cart quantityInput" step="1" min="1" max="9999" name="quanlity" value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric">        
                                        </td>
                                        <td class="product-subtotal"><span class="total-amount">${pet.money}</span></td>
                                    </tr>

                                    
                                   </c:forEach> 
                                   
                                </tbody>
                            </table>
                    </div>
                    <div class="row">
                        <div class="col-md-5 ml-auto">
                            <div class="cart-page-total">
                                <h2> Tổng số giỏ hàng</h2>
                                <ul>
                                    <li>Tổng phụ <span id="subtotal">0đ</span></li>
                                    <li>Gía <span id="totalPrice">0đ</span></li>
                                </ul>
                               
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="coupon-all">
                                <div class="coupon"></div>
                                <div class="coupon2">                              
                                        <button class="coupon-checkout" style="margin-right: 180px;">
                                            <a href="${pageContext.request.contextPath }/checkout">Thanh toán</a>
                                        </button>
                                </div>
                            </div>
                        </div>
                    </div>
           
            </div>
        </div>
    </div>
</div>

<script src="./javascript/style_javascript.js"></script>
<script>
    function adjustQuantity(element, action) {
        var quantityInput = element.parentNode.querySelector('.quantityInput');
        var currentQuantity = parseInt(quantityInput.value, 10);

        if (action === 'decrease' && currentQuantity > 1) {
            quantityInput.value = currentQuantity - 1;
        } else if (action === 'increase') {
            quantityInput.value = currentQuantity + 1;
        }
        total_cart();
    }

    function removeProduct(element) {
        var row = element.parentNode.parentNode;
        row.parentNode.removeChild(row);
        total_cart();
    }
    function total_cart() {
        var rows = document.querySelectorAll('tbody tr');
        var subtotal = 0;

        rows.forEach(function (row) {
            // Lấy cả phần nguyên và thập phân của giá trị
            var price = parseFloat(row.querySelector('.li-product-price span').innerText.replace('triệu đồng', '').replace(',', ''));
            
            var quantity = parseFloat(row.querySelector('.quantityInput').value);
            var rowTotal = price * quantity;

            row.querySelector('.total-amount').innerText = rowTotal +" triệu đồng";
            subtotal += rowTotal;
        });

        // Hiển thị tổng cuối cùng
        document.getElementById('subtotal').innerText = subtotal + " triệu đồng";
        document.getElementById('totalPrice').innerText = subtotal+ " triệu đồng";
    }


        function formatCurrency(value) {
        return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
    }
        // Initial call to update totals
        total_cart();
</script>