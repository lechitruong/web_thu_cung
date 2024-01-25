<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	     <section class="main">
                <h1>Thông Tin Chi Tiết Đơn Hàng</h1>
                <div class="sec">
                    <h2>Mã Đơn Hàng: DH123456</h2>
                    <p><strong>Ngày Đặt Hàng:</strong> 12/11/2023</p>
                    <p><strong>Trạng Thái Đơn Hàng:</strong> Đang Vận Chuyển</p>
                </div>

                <h2>Sản Phẩm Đã Đặt</h2>
                <div class="Shopping-cart-area pt-40 pb-40">
                        <div class="row">
                            <div class="col-4">
                                <form action="#">
                                    <div class="table-content">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        
                                                        <th class="li-product-thumbnail">Ảnh</th>
                                                        <th class="cart-product-name">Sản phẩm</th>
                                                        <th class="li-product-price">Giá</th>
                                                        <th class="li-product-quantity">Số lượng</th>
                                                        <th class="li-product-subtotal">Tổng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                       
                                                        <td class="li-product-thumbnail"><a href="#"><img style="width: 300px;" src="./image/icon/a1.jpg" alt="Li's Product Image"></a></td>
                                                        <td class="li-product-name"><a href="#">Gold đần</a></td>
                                                        <td class="li-product-price"><span class="amount">60000đ</span></td>
                                                        <td class="quantity">
                                                                
                                                                <input type="text" class="input-text quantityInput" step="1" min="1" max="9999" name="quanlity" value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric">
                                                                
                                                        </td>
                                                        <td class="product-subtotal"><span class="total-amount">60000đ</span></td>
                                                    </tr>
                                                    <tr>
                                                        
                                                        <td class="li-product-thumbnail"><img style="width: 150px; " src="./image/icon/a6.jpg!w700wp" alt="Li's Product Image"></td>
                                                        <td class="li-product-name"><a href="#">Chó Mun</a></td>
                                                        <td class="li-product-price"><span class="amount">70000đ</span></td>
                                                        <td class="quantity">
                                                           
                                                            <input type="text" class="input-text quantityInput" step="1" min="1" max="9999" name="quanlity" value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric">
                                                           
                                                        </td>
                                                        <td class="product-subtotal"><span class="total-amount">70000đ</span></td>
                                                    </tr>
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
                                                        <button class="coupon-checkout">
                                                            <a >Thanh toán</a>
                                                        </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                </div>
          
           
                <div class="sec-fot">
                    <h1>Thông Tin Người Đặt Hàng</h2>
                    <p><strong>Họ và Tên:</strong> Trần Thanh Trí</p>
                    <p><strong>Địa Chỉ:</strong> 123 Đường An Bình, Quận Thủ Đức, Thành Phố HCM</p>
                    <p><strong>Email:</strong> thanhtri@example.com</p>
                   </div>
                   
            </section>