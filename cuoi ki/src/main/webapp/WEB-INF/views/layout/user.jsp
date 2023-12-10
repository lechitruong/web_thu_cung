<%--
  Created by IntelliJ IDEA.
  User: lephu
  Date: 12/6/2023
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Pet Shop|Cửa Hàng Mua Bán Thú Cưng</title>
    <meta name="keywords" content="Chó cảnh, pet, cách nuôi chó, mua thú cưng">
    <meta name="description" content="Mua bán chó cảnh">
    <meta http-equiv="refresh" content="3600">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="${pageContext.request.contextPath}/assets/user/css/index-style.css" rel="stylesheet" />
    <!-- responsive -->
    <link rel="stylesheet" media="mediatype and|not|only (expressions)" href="print.css">
    <!-- icon web -->
    <link href="${pageContext.request.contextPath}/assets/user/${pageContext.request.contextPath}/assets/user/image/icon/icon-logo.PNG" rel="shortcut icon" />
    <!-- icon -->
    <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" /> -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/bootstrap.min.css">


    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&family=Open+Sans:ital@1&family=Poppins:wght@100;300&family=Roboto:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

    <!-- Latest compiled JavaScript -->

    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <!-- <link rel="stylesheet" href="css/all.min.css"> -->
    <!-- Link Font Awesome -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/all.min.css">
</head>

<body>
<div class="overlay"></div>
<!--  header -->
<header>
    <p>Welcome ${sessionScope.username }</p>
    <div class="tieude">
        <div class="col30">
            <img src="${pageContext.request.contextPath}/assets/user/image/icon/logo-shop.png" alt="Petshop" />
        </div>
        <div class="col40">
            <div class="search">
                <input type="search" placeholder="Bạn tìm gì..." />
                <input type="image" value="timkiem" src="${pageContext.request.contextPath}/assets/user/image/icon/search-icon.png" />
            </div>
        </div>
        <div class="col10 header-icon">
            <a id="hotro" href="#">
                <img class="header-icon-img" src="${pageContext.request.contextPath}/assets/user/image/icon/hotro-icon.png" alt="hỗ trợ">
                <span class="header-icon-label">Hỗ trợ</span>
            </a>
        </div>
        <div class="col10 header-icon header-icon__cart">
            <a href="./shoppingcart.html">
                <img class="header-icon-img" src="${pageContext.request.contextPath}/assets/user/image/icon/giohang-icon.png" alt="Giỏ hàng">
                <span class="header__cart-notice">3</span>
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
                            <li class="header__cart-product-sp">
                                <img src="./${pageContext.request.contextPath}/assets/user/${pageContext.request.contextPath}/assets/user/image/giongcho/alaska.jpg" alt="" class="header__cart-product-img">
                                <div class="header__cart-product-list">
                                    <div class="header__cart-product-inf">
                                        <span class="header__cart-product-title">ALASKA</span>
                                        <div class="header__cart-product-item" onclick="deleteProduct(this)">
                                            <i class="fa-solid fa-trash-can"></i>
                                        </div>
                                    </div>
                                    <div class="header__cart-product-unitPrice">
                                        <span class="header__cart-product-price">300.000đ </span>
                                        <span class="header__cart-product-mul">X</span>
                                        <span class="header__cart-product-quanlity">1</span>
                                    </div>
                                </div>
                            </li>
                            <li class="header__cart-product-sp">
                                <img src="./${pageContext.request.contextPath}/assets/user/image/giongcho/alaska.jpg" alt="" class="header__cart-product-img">
                                <div class="header__cart-product-list">
                                    <div class="header__cart-product-inf">
                                        <span class="header__cart-product-title">ALASKA</span>
                                        <div class="header__cart-product-item" onclick="deleteProduct(this)">
                                            <i class="fa-solid fa-trash-can"></i>
                                        </div>
                                    </div>
                                    <div class="header__cart-product-unitPrice">
                                        <span class="header__cart-product-price">300.000đ </span>
                                        <span class="header__cart-product-mul">X</span>
                                        <span class="header__cart-product-quanlity">1</span>
                                    </div>
                                </div>
                            </li>
                            <li class="header__cart-product-sp">
                                <img src="./${pageContext.request.contextPath}/assets/user/image/giongcho/alaska.jpg" alt="" class="header__cart-product-img">
                                <div class="header__cart-product-list">
                                    <div class="header__cart-product-inf">
                                        <span class="header__cart-product-title">ALASKA</span>
                                        <div class="header__cart-product-item" onclick="deleteProduct(this)">
                                            <i class="fa-solid fa-trash-can"></i>
                                        </div>
                                    </div>
                                    <div class="header__cart-product-unitPrice">
                                        <span class="header__cart-product-price">300.000đ </span>
                                        <span class="header__cart-product-mul">X</span>
                                        <span class="header__cart-product-quanlity">1</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="header__cart-btn">
                            <button class="btn btn-black">
                                <a href="./shoppingcart.html">Xem giỏ hàng
                                </a>
                            </button>
                            <button class="btn btn-red">
                                <a href="./checkout.html">Thanh toán
                                </a>
                            </button>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col10 header-icon">
            <a href="thongtintaikhoan.html">
                <img class="header-icon-img" src="${pageContext.request.contextPath}/assets/user/image/icon/dangnhap-icon.png" alt="tài khoản">
                <span class="header-icon-label">Tài Khoản</span>
                <div class="dropdown-content">
                    <a href="login.html">Đăng nhập</a>
                    <a href="register.html">Đăng ký</a>
                </div>
                <div class="dropdown-logout">
                    <a href="login.html">Logout</a>
                </div>
            </a>
        </div>
    </div>
</header>
<!--  nav -->
<nav id="nav_menu">
    <ul class="menu">
        <li>
            <a href="index.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/home-icon.png" alt="trang chủ">
                <span>TRANG CHỦ</span>
            </a>
        </li>
        <li>
            <a href="giongcho.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/giongcho-icon.png" alt="giống chó">
                <span>GIỐNG CHÓ</span>

            </a>
        </li>
        <li>
            <a href="./loaikhac.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/cuncon-icon.png" alt="cún con">
                <span>LOÀI KHÁC</span>
            </a>
        </li>
        <li>
            <a href="cachnuoi.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/cachnuoi-icon.png" alt="cách nuôi">
                <span>CÁCH NUÔI</span>
            </a>
        </li>
        <li>
            <a href="dichvu.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/dichvu-icon.png" alt="dịch vụ">
                <span>DỊCH VỤ</span>
            </a>
        </li>
        <li>
            <a href="gioithieu.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/gioithieu-icon.png" alt="giới thiệu">
                <span>GIỚI THIỆU</span>
            </a>
        </li>
        <li>
            <a href="lienhe.html">
                <img src="${pageContext.request.contextPath}/assets/user/image/icon/lienhe-icon.png" alt="liên hệ">
                <span>LIÊN HỆ</span>
            </a>
        </li>
    </ul>
</nav>
<!-- section main -->
<section class="main">

    <section class="section-content">

        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/assets/user/image/anhhotro/bootstrap-img.PNG" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/assets/user/image/anhhotro/bootstrap1-img.PNG" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/assets/user/image/anhhotro/boostrap2.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
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
            <div class="info-dog item-pet">
                <div class="overlay__product" >
                    <button  class="overlay__product--button test_overlay overlay__product--watch" src="${pageContext.request.contextPath}/assets/user/image/giongcho/akita-inu.jpg">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()"  onclick="addToCart()">
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <a href="./chitiet.html">
                    <img class="img" src="${pageContext.request.contextPath}/assets/user/image/giongcho/akita-inu.jpg" alt="AKITA INU" data-price="400000" />
                </a>
                <div>
                    <div class="col40">
                        <span>ID: 001</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">CHÓ AKITA INU</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1100,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>

                <script>
                    $(document).ready(function(){
                        $('.test_overlay').click(function(){
                            var src = $(this).attr('src');

                            $('#mainAvatar').attr('src', src);
                        });
                    });
                </script>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product" >
                    <button class="overlay__product--button test_overlay overlay__product--watch" src="${pageContext.request.contextPath}/assets/user/image/giongcho/alaska.jpg">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img class="img" src="${pageContext.request.contextPath}/assets/user/image/giongcho/alaska.jpg" alt="ALASKA" />
                <div>
                    <div class="col40">
                        <span>ID: 002</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">CHÓ ALASKA</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1200,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch" src="${pageContext.request.contextPath}/assets/user/image/giongcho/becgie-bi.jpg">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/becgie-bi.jpg" alt="BECGIE BỈ (MALINOIS)" />
                <div>
                    <div class="col40">
                        <span>ID: 003</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BECGIE BỈ (MALINOIS)</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1300,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/becgie-duc.jpg" alt="BECGIE ĐỨC" />
                <div>
                    <div class="col40">
                        <span>ID: 004</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BECGIE ĐỨC</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1400,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/BORDER-COLLIE.jpg" alt="BORDER COLLIE" />
                <div>
                    <div class="col40">
                        <span>ID: 005</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BORDER COLLIE</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1500,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bull-phap.jpg" alt="BULL PHÁP" />
                <div>
                    <div class="col40">
                        <span>ID: 006</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BULL PHÁP</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1600,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bulldog.jpg" alt="BULLDOG" />
                <div>
                    <div class="col40">
                        <span>ID: 007</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BULLDOG</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1700,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bully-american.jpg" alt="BULLY AMERICAN" />
                <div>
                    <div class="col40">
                        <span>ID: 008</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BULLY AMERICAN</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1800,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/chihuahua.jpg" alt="CHIHUAHUA" />
                <div>
                    <div class="col40">
                        <span>ID: 009</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">CHIHUAHUA</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1900,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/cho-dom.jpg" alt="CHÓ ĐỐM" />
                <div>
                    <div class="col40">
                        <span>ID: 010</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">CHÓ ĐỐM</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">2000,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
        </div>
        <button class="nextBtn">
            <i class="fa-solid fa-chevron-right"></i>
        </button>
    </section>
    <div>
        <h4>Siêu khuyến mãi</h4>
    </div>
    <section class="list-dog hot-pets" data-section="2">
        <button class="prevBtn" >
            <i class="fa-solid fa-chevron-left"></i>
        </button>
        <div class="list-pet">
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/corgy.jpg" alt="CORGI" />
                <div>
                    <div class="col40">
                        <span>ID: 011</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">CORGI</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2100,000đ</span>
                        <span class="info-dog--money-new">1575,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/dobermann.jpg" alt="DOBERMANN" />
                <div>
                    <div class="col40">
                        <span>ID: 012</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">DOBERMANN</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2200,000đ</span>
                        <span class="info-dog--money-new">1650,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/golden-retriever.jpg" alt="GOLDEN RETRIEVER" />
                <div>
                    <div class="col40">
                        <span>ID: 013</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">GOLDEN RETRIEVER</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2300,000đ</span>
                        <span class="info-dog--money-new">1725,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/great-dane.jpg" alt="GREAT DANE" />
                <div>
                    <div class="col40">
                        <span>ID: 014</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">GREAT DANE</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2400,000đ</span>
                        <span class="info-dog--money-new">1800,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/mong-coc.jpg" alt="H’MÔNG CỘC" />
                <div>
                    <div class="col40">
                        <span>ID: 015</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">H’MÔNG CỘC</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2500,000đ</span>
                        <span class="info-dog--money-new">1875,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/ngao-tay-tạng.jpg" alt="NGAO TÂY TẠNG" />
                <div>
                    <div class="col40">
                        <span>ID: 016</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">NGAO TÂY TẠNG</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2600,000đ</span>
                        <span class="info-dog--money-new">1850,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/dobermann.jpg" alt="Dobermann" />
                <div>
                    <div class="col40">
                        <span>ID: 017</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Dobermann</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2700,000đ</span>
                        <span class="info-dog--money-new">2025,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/great-dane.jpg" alt="Great Dane" />
                <div>
                    <div class="col40">
                        <span>ID: 018</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Great Dane</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2800,000đ</span>
                        <span class="info-dog--money-new">2100,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Middleasian greyhound-Tazi.jpg" alt="Greyhound" />
                <div>
                    <div class="col40">
                        <span>ID: 019</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Greyhound</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">2900,000đ</span>
                        <span class="info-dog--money-new">2175,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog item-pet">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <div class="info-dog__discount">
                    <span class="info-dog__discount--label">GIẢM</span>
                    <span class="info-dog__discount--percent">25%</span>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Golden Retriever.jpeg" alt="Golden Retriever" />
                <div>
                    <div class="col40">
                        <span>ID: 020</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Golden Retriever</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-old">3000,000đ</span>
                        <span class="info-dog--money-new">2250,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
        </div>
        <button class="nextBtn">
            <i class="fa-solid fa-chevron-right"></i>
        </button>
    </section>
    <div style="display: flex; position: relative;">
        <h4>Thú cưng khác</h4>
        <div class="dropdown" style="position: absolute; right: 0; bottom: -4px;">
            <button style="width: 180px; height: 90%;" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Mức giá
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Tăng dần</a></li>
                <li><a class="dropdown-item" href="#">Giảm dần</a></li>
            </ul>
        </div>
    </div>
    <div class="pagination-list">
        <section class="list-dog" id="pet-container">
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Siberian Husky.jpg" alt="Chó Husky Sibir" />
                <div>
                    <div class="col40">
                        <span>ID: 021</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BECGIE ĐỨC</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,300,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Shetland.jpg" alt="Chó chăn cừu Shetland" />
                <div>
                    <div class="col40">
                        <span>ID: 022</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Shetland</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1.350,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Islenskur Fjárhundur.jpg" alt="Chó chăn cừu Iceland" />
                <div>
                    <div class="col40">
                        <span>ID: 023</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Iceland</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">500,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Shiba.jpg" alt="Shiba Inu" />
                <div>
                    <div class="col40">
                        <span>ID: 024</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Shiba Inu</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">200,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Chihuahua.jpg" alt="Chó Chihuahua" />
                <div>
                    <div class="col40">
                        <span>ID: 025</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Chihuahua</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">100,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/chó nhật 1.jpg" alt="Chó Nhật" />
                <div>
                    <div class="col40">
                        <span>ID: 026</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Nhật</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">400,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Bắc Kinh.jpg" alt="Chó Bắc Kinh" />
                <div>
                    <div class="col40">
                        <span>ID: 027</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Bắc Kinh</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">500,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Pug.jpg" alt="Chó Pug" />
                <div>
                    <div class="col40">
                        <span>ID: 028</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Pug</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">600,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó lạp xưởng.jpg" alt="Chó Dachshund" />
                <div>
                    <div class="col40">
                        <span>ID: 029</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Dachshund</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">700,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Pungsan.JPG" alt="Chó Pungsan" />
                <div>
                    <div class="col40">
                        <span>ID: 030</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Pungsan</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">800,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/chó phú quốc1.jpg" alt="Chó Phú Quốc" />
                <div>
                    <div class="col40">
                        <span>ID: 031</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Phú Quốc</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">900,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bernard1.jpg" alt="Chó St. Bernard" />
                <div>
                    <div class="col40">
                        <span>ID: 032</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó St. Bernard</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,000,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Afghan.jpg" alt="Chó săn Afghan" />
                <div>
                    <div class="col40">
                        <span>ID: 033</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Afghan</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,100,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Akita.jpg" alt="Chó Akita" />
                <div>
                    <div class="col40">
                        <span>ID: 034</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Akita</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,200,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Alaskan Klee Kai.jpg" alt="Alaskan Klee Kai" />
                <div>
                    <div class="col40">
                        <span>ID: 035</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Alaskan Klee Kai</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,300,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Akita Mỹ.jpg" alt="Akita Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 036</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Akita Mỹ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,400,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bullanh1.jpg" alt="Chó bull Anh" />
                <div>
                    <div class="col40">
                        <span>ID: 037</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó bull Anh</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,500,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó bull Mỹ.JPG" alt="Chó bull Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 038</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó bull Mỹ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,600,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó bull Pháp.jpg" alt="Chó bull Pháp" />
                <div>
                    <div class="col40">
                        <span>ID: 039</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó bull Pháp</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,700,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Boston.jpg" alt="C" />
                <div>
                    <div class="col40">
                        <span>ID: 040</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó bull Pháp</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,800,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Pit Bull Mỹ.jpg" alt="Chó sục Pit Bull Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 041</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Pit Bull Mỹ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,900,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/American Cocker Spaniel.jpg" alt="American Cocker Spaniel" />
                <div>
                    <div class="col40">
                        <span>ID: 042</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">American Cocker Spaniel</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">2,00,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn cáo Mỹ.jpg" alt="Chó săn cáo Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 043</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn cáo Mỹ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">150,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó thổ dân da đỏ.jpg" alt="Chó thổ dân da đỏ" />
                <div>
                    <div class="col40">
                        <span>ID: 044</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó thổ dân da đỏ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">250,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Canaan.jpg" alt="Chó Canaan" />
                <div>
                    <div class="col40">
                        <span>ID: 045</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Canaan</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">350,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Basenji.jpg" alt="Basenji" />
                <div>
                    <div class="col40">
                        <span>ID: 046</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Basenji</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">450,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bacgie2.jpg" alt="Bac thai" />
                <div>
                    <div class="col40">
                        <span>ID: 047</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BECGIE</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">550,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó ta.JPG" alt="Chó cỏ" />
                <div>
                    <div class="col40">
                        <span>ID: 048</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó cỏ</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">650,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bacgie2.jpg" alt="bac thai" />
                <div>
                    <div class="col40">
                        <span>ID: 049</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">BECGIE THÁI</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">750,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Trùng Khánh.jpg" alt="Chó Trùng Khánh" />
                <div>
                    <div class="col40">
                        <span>ID: 050</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Trùng Khánh</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">850,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Anatoli.jpg" alt="Chó Kangal" />
                <div>
                    <div class="col40">
                        <span>ID: 051</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Kangal</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">950,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó núi Bali.jpg" alt="Chó Kintamani" />
                <div>
                    <div class="col40">
                        <span>ID: 052</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Kintamani</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,050,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Jindo.jpg" alt="Chó Jindo" />
                <div>
                    <div class="col40">
                        <span>ID: 053</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Jindo</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,150,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sáu ngón.jpg" alt="Chó sáu ngón" />
                <div>
                    <div class="col40">
                        <span>ID: 054</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sáu ngón</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,250,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó biết hát New Guinea.jpg" alt="Chó biết hát New Guine" />
                <div>
                    <div class="col40">
                        <span>ID: 055</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó biết hát New Guine</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,350,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Đài Loan.jpg" alt="Chó núi Đài Loan" />
                <div>
                    <div class="col40">
                        <span>ID: 056</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó núi Đài Loan</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1.450,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Telomian.jpg" alt="Telomian" />
                <div>
                    <div class="col40">
                        <span>ID: 057</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Telomian</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1.550,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cáo lông mượt.jpg" alt="Chó sục cáo lông mượt" />
                <div>
                    <div class="col40">
                        <span>ID: 058</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cáo lông mượt</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,650,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Tervuren.jpg" alt="Chó chăn cừu Tervuren" />
                <div>
                    <div class="col40">
                        <span>ID: 059</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Tervuren</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,750,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Malinois.jpg" alt="Chó chăn cừu Malinois" />
                <div>
                    <div class="col40">
                        <span>ID: 060</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Malinois</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1,850,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/changiasuc.jpg" alt="Chó chăn gia súc Úc" />
                <div>
                    <div class="col40">
                        <span>ID: 061</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn gia súc Úc</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">1.750,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Kelpie Úc.png" alt="Chó chăn cừu Kelpie Úc" />
                <div>
                    <div class="col40">
                        <span>ID: 062</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Kelpie Úc</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">210,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Beauceron.jpg" alt="Chó Beauceron" />
                <div>
                    <div class="col40">
                        <span>ID: 063</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Beauceron</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">120,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Lab.jpg" alt="Chó Lab" />
                <div>
                    <div class="col40">
                        <span>ID: 064</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Lab</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">303,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Anatoli2.jpg" alt="Chó chăn cừu Anatoli2" />
                <div>
                    <div class="col40">
                        <span>ID: 065</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Anatoli2</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">230,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Anatoli.jpg" alt="Chó chăn cừu Anatoli" />
                <div>
                    <div class="col40">
                        <span>ID: 066</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Anatoli</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">934,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Azawakh.jpg" alt="Chó Azawakh" />
                <div>
                    <div class="col40">
                        <span>ID: 067</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Azawakh</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">982,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Sloughi.jpg" alt="Chó Sloughi" />
                <div>
                    <div class="col40">
                        <span>ID: 068</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Sloughi</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">636,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Saluki.jpg" alt="Chó Saluki" />
                <div>
                    <div class="col40">
                        <span>ID: 069</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Saluki</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">999,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó xoáy Rhodesian.jpg" alt="Chó xoáy Rhodesian" />
                <div>
                    <div class="col40">
                        <span>ID: 070</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó xoáy Rhodesian</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">622,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Pharaoh.jpg" alt="Chó săn Pharaoh" />
                <div>
                    <div class="col40">
                        <span>ID: 071</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Pharaoh</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">723,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Podenco Canario.jpg" alt="Podenco Canario" />
                <div>
                    <div class="col40">
                        <span>ID: 072</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Podenco Canario</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">737,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó lông xoáy Thái Lan.jpg" alt="Chó lông xoáy Thái Lan" />
                <div>
                    <div class="col40">
                        <span>ID: 073</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó lông xoáy Thái Lan</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">732,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Phốc sóc.jpg" alt="Chó Phốc sóc" />
                <div>
                    <div class="col40">
                        <span>ID: 074</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Phốc sóc</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">138,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Puli1.jpg" alt="Chó Puli 1" />
                <div>
                    <div class="col40">
                        <span>ID: 075</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Puli 1</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">238,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Rottweiler1.jpg" alt="Chó Rottweiler 1" />
                <div>
                    <div class="col40">
                        <span>ID: 076</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Rottweiler 1</h5>
                <div>
                    <div class="col40 money">
                        <span class="info-dog--money-new">483,000đ</span>
                    </div>
                    <div class="col60">
                   <span>SL: 1
                   </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Collie lông dài.jpg" alt="Collie lông dài" />
                <div>
                    <div class="col40">
                        <span>ID: 077</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Collie lông dài</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,363,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Schipperke.jpg" alt="Chó Schipperke" />
                <div>
                    <div class="col40">
                        <span>ID: 078</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Schipperke</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">4,300,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Scotland.jpg" alt="Chó sục Scotland" />
                <div>
                    <div class="col40">
                        <span>ID: 079</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Scotland</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">9,383,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Miniature Schnauzer.jpg" alt="Miniature Schnauzer" />
                <div>
                    <div class="col40">
                        <span>ID: 080</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Miniature Schnauzer</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">6,382,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Sa Bì.jpg" alt="Chó Sa Bì" />
                <div>
                    <div class="col40">
                        <span>ID: 081</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Sa Bì</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,344,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Shih Tzu.jpg" alt="Shih Tzu" />
                <div>
                    <div class="col40">
                        <span>ID: 082</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Shih Tzu</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">732,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Shikoku Inu.jpg" alt="Shikoku Inu" />
                <div>
                    <div class="col40">
                        <span>ID: 083</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Shikoku Inu</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">8,334,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Skye.jpg" alt="Chó sục Skye" />
                <div>
                    <div class="col40">
                        <span>ID: 084</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Skye</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">8,272,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Collie lông mượt.jpg" alt="Collie lông mượt" />
                <div>
                    <div class="col40">
                        <span>ID: 085</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Collie lông mượt</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">282,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Bun Staffordshire.jpg" alt="Chó sục Bun Staffordshire" />
                <div>
                    <div class="col40">
                        <span>ID: 086</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Bun Staffordshire</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">555,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Phần Lan.jpg" alt="Chó săn Phần Lan" />
                <div>
                    <div class="col40">
                        <span>ID: 087</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Phần Lan</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">245,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Sussex Spaniel.jpg" alt="Sussex Spaniel" />
                <div>
                    <div class="col40">
                        <span>ID: 088</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Sussex Spaniel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">777,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó cảnh Tây Tạng.jpg" alt="Chó cảnh Tây Tạng" />
                <div>
                    <div class="col40">
                        <span>ID: 089</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó cảnh Tây Tạng</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">865,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cáo cảnh.jpg" alt="Chó sục cáo cảnh" />
                <div>
                    <div class="col40">
                        <span>ID: 090</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cáo cảnh</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">146,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Con Ma xám.jpg" alt="Con Ma xám" />
                <div>
                    <div class="col40">
                        <span>ID: 091</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Con Ma xám</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">4,743,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Corgi xứ Wales cổ.jpg" alt="Chó Corgi xứ Wales cổ" />
                <div>
                    <div class="col40">
                        <span>ID: 092</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Corgi xứ Wales cổ</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,777,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Mũi tên đường đua.jpg" alt="Mũi tên đường đua" />
                <div>
                    <div class="col40">
                        <span>ID: 093</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Mũi tên đường đua</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">732,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó không lông.jpg" alt="Chó không lông" />
                <div>
                    <div class="col40">
                        <span>ID: 094</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó không lông</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">268,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Yorkshire.jpg" alt="Chó sục Yorkshire" />
                <div>
                    <div class="col40">
                        <span>ID: 095</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Yorkshire</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">123,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cáo lông xoăn.jpg" alt="Chó sục cáo lông xoăn" />
                <div>
                    <div class="col40">
                        <span>ID: 096</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cáo lông xoăn</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">199,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó khỉ Affenpinscher.jpg" alt="Chó khỉ Affenpinscher" />
                <div>
                    <div class="col40">
                        <span>ID: 097</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó khỉ Affenpinscher</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">986,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Aidi.jpg" alt="Chó Aidi" />
                <div>
                    <div class="col40">
                        <span>ID: 098</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Aidi</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">468,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Airedale.jpg" alt="Chó sục Airedale" />
                <div>
                    <div class="col40">
                        <span>ID: 099</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Airedale</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">985,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Alaskan Husky.jpg" alt="Chó Alaskan Husky" />
                <div>
                    <div class="col40">
                        <span>ID: 100</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Alaskan Husky</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">345,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Alpine Dachsbracke.jpg" alt="Alpine Dachsbracke" />
                <div>
                    <div class="col40">
                        <span>ID: 101</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Alpine Dachsbracke</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,644,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Altdeutscher Hütehund.jpg" alt="Altdeutscher Hütehund" />
                <div>
                    <div class="col40">
                        <span>ID: 102</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Altdeutscher Hütehund</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,765,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục lông ngắn Mỹ.jpg" alt="Chó sục lông ngắn Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 103</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục lông ngắn Mỹ</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">5,432,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cảnh Mỹ.jpg" alt="Chó sục cảnh Mỹ" />
                <div>
                    <div class="col40">
                        <span>ID: 104</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cảnh Mỹ</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">124,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/American Water Spaniel.jpg" alt="American Water Spaniel" />
                <div>
                    <div class="col40">
                        <span>ID: 105</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">American Water Spaniel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">543,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Anglo-Français de Petite Vénerie1.jpg" alt="Anglo-Français de Petite Vénerie 1" />
                <div>
                    <div class="col40">
                        <span>ID: 106</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Anglo-Français de Petite Vénerie 1</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">711,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Appenzeller Sennenhund.jpg" alt="Appenzeller Sennenhund" />
                <div>
                    <div class="col40">
                        <span>ID: 107</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Appenzeller Sennenhund</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,843,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Ariégeois.jpg" alt="Ariégeois" />
                <div>
                    <div class="col40">
                        <span>ID: 108</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Ariégeois</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">164,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Silky Úc.jpg" alt="Chó sục Silky Úc" />
                <div>
                    <div class="col40">
                        <span>ID: 109</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Silky Úc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">853,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Barbet.jpg" alt="Chó Barbet" />
                <div>
                    <div class="col40">
                        <span>ID: 110</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Barbet</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">2,643,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bardino.jpg" alt="Chó Bardino" />
                <div>
                    <div class="col40">
                        <span>ID: 111</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Bardino</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">5,643,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Basset Artésien Normand.jpg" alt="Basset Artésien Normand" />
                <div>
                    <div class="col40">
                        <span>ID: 112</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Basset Artésien Normand</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">432,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Basset Bleu de Gascogne.jpg" alt="Basset Bleu de Gascogne" />
                <div>
                    <div class="col40">
                        <span>ID: 113</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Basset Bleu de Gascogne</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">673,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Basset Fauve de Bretagne.jpg" alt="Basset Fauve de Bretagne" />
                <div>
                    <div class="col40">
                        <span>ID: 114</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Basset Fauve de Bretagne</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">325,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bayerischer Gebirgsschweißhund.jpg" alt="Bayerischer Gebirgsschweißhund" />
                <div>
                    <div class="col40">
                        <span>ID: 115</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Gebirgsschweißhund</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">742,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Griffon.jpg" alt="Chó chăn cừu Griffon" />
                <div>
                    <div class="col40">
                        <span>ID: 116</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Griffon</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">786,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó vẩy Bergamasco.jpg" alt="Chó vẩy Bergamasco" />
                <div>
                    <div class="col40">
                        <span>ID: 117</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó vẩy Bergamasco</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">471,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Pyrénées.jpg" alt="Chó chăn cừu Pyrénées" />
                <div>
                    <div class="col40">
                        <span>ID: 118</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Pyrénées</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,624,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bichon Havanais.jpg" alt="Bichon Havanais" />
                <div>
                    <div class="col40">
                        <span>ID: 119</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Bichon Havanais</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">352,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Blue Picardy Spaniel.jpg" alt="Blue Picardy Spaniel" />
                <div>
                    <div class="col40">
                        <span>ID: 120</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Blue Picardy Spaniel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">793,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Boerboel.jpg" alt="Chó Boerboel" />
                <div>
                    <div class="col40">
                        <span>ID: 121</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Boerboel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">275,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó đốm Bohemian.jpg" alt="Chó đốm Bohemian" />
                <div>
                    <div class="col40">
                        <span>ID: 122</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó đốm Bohemian</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">281,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Bolognese.jpg" alt="Chó Bolognese" />
                <div>
                    <div class="col40">
                        <span>ID: 123</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Bolognese</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">111,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bolonka franzuska.jpg" alt="Bolonka franzuska" />
                <div>
                    <div class="col40">
                        <span>ID: 124</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Bolonka franzuska</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">436,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bolonka Zwetna.jpg" alt="Bolonka Zwetna" />
                <div>
                    <div class="col40">
                        <span>ID: 125</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Bolonka Zwetna</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,853,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục biên giới.jpg" alt="Chó sục biên giới" />
                <div>
                    <div class="col40">
                        <span>ID: 126</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục biên giới</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">873,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bosanski Ostrodlaki Gonic Barak.jpg" alt="Bosanski Ostrodlaki" />
                <div>
                    <div class="col40">
                        <span>ID: 127</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Bosanski Ostrodlaki</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">216,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Boykin Spaniel.jpg" alt="Boykin Spaniel" />
                <div>
                    <div class="col40">
                        <span>ID: 128</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Boykin Spaniel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">172,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chỉ điểm Pháp giống Pyrenees.jpg" alt="Chó chỉ điểm Pháp" />
                <div>
                    <div class="col40">
                        <span>ID: 129</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chỉ điểm Pháp</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">926,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Bracco Ý.jpg" alt="Bracco Ý" />
                <div>
                    <div class="col40">
                        <span>ID: 130</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Bracco Ý</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">284,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Brandlbracke.jpg" alt="Brandlbracke" />
                <div>
                    <div class="col40">
                        <span>ID: 131</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Brandlbracke</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">162,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Braque d' Auvergne.jpg" alt="Braque d' Auvergne" />
                <div>
                    <div class="col40">
                        <span>ID: 132</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Braque d' Auvergne</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">948,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Braque Saint-Germain.jpg" alt="Braque Saint-Germain" />
                <div>
                    <div class="col40">
                        <span>ID: 133</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Braque Saint-Germain</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">522,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Briquet Griffon Vendeen.jpg" alt="Briquet Griffon Vendeen" />
                <div>
                    <div class="col40">
                        <span>ID: 134</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Briquet Griffon Vendeen</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">611,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Broholmer.jpg" alt="Broholmer" />
                <div>
                    <div class="col40">
                        <span>ID: 135</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Broholmer</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">833,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó ngao Majorca.jpg" alt="Chó ngao Majorca" />
                <div>
                    <div class="col40">
                        <span>ID: 136</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó ngao Majorca</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,777,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Majorca.jpg" alt="Chó chăn cừu Majorca" />
                <div>
                    <div class="col40">
                        <span>ID: 137</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Majorca</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,847,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Cairn.jpg" alt="Chó sục Cairn" />
                <div>
                    <div class="col40">
                        <span>ID: 138</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Cairn</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">256,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Can de Palleiro.jpg" alt="Can de Palleiro" />
                <div>
                    <div class="col40">
                        <span>ID: 139</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Can de Palleiro</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">277,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Canada Eskimo.jpg" alt="Chó Canada Eskimo" />
                <div>
                    <div class="col40">
                        <span>ID: 140</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Canada Eskimo</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,888,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Cane pecoraio siciliano.jpg" alt="Cane pecoraio siciliano" />
                <div>
                    <div class="col40">
                        <span>ID: 141</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Cane pecoraio siciliano</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,373,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó lội nước Bồ Đào Nha.jpg" alt="Chó lội nước Bồ Đào Nha" />
                <div>
                    <div class="col40">
                        <span>ID: 142</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó lội nước Bồ Đào Nha</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,923,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Cao de Serra de Aires.jpg" alt="Cao de Serra de Aires" />
                <div>
                    <div class="col40">
                        <span>ID: 143</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Cao de Serra de Aires</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,286,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Caravan.jpg" alt="Chó săn Caravan" />
                <div>
                    <div class="col40">
                        <span>ID: 144</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Caravan</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,732,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Carolina.jpg" alt="Chó Carolina" />
                <div>
                    <div class="col40">
                        <span>ID: 145</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Carolina</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,927,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Bun Catahoula.jpg" alt="Chó Bun Catahoula" />
                <div>
                    <div class="col40">
                        <span>ID: 146</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Bun Catahoula</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,935,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Trung Á.jpg" alt="Chó chăn cừu Trung Á" />
                <div>
                    <div class="col40">
                        <span>ID: 147</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Trung Á</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">844,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Český fousek.jpg" alt="Český fousek" />
                <div>
                    <div class="col40">
                        <span>ID: 148</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Český fousek</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">833,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Cierny Sery.jpg" alt="Cierny Sery" />
                <div>
                    <div class="col40">
                        <span>ID: 149</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Cierny Sery</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">355,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó lai sói Tiệp Khắc.jpg" alt="Chó lai sói Tiệp Khắc" />
                <div>
                    <div class="col40">
                        <span>ID: 150</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó lai sói Tiệp Khắc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">543,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chart Polski.jpg" alt="Chart Polski" />
                <div>
                    <div class="col40">
                        <span>ID: 151</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chart Polski</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">436,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó núi Pyrénées.jpg" alt="Chó núi Pyrénées" />
                <div>
                    <div class="col40">
                        <span>ID: 152</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó núi Pyrénées</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">943,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Groenendael.jpg" alt="Chó chăn cừu Groenendael" />
                <div>
                    <div class="col40">
                        <span>ID: 153</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Groenendael</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">2,644,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó núi Estrela.jpg" alt="Chó núi Estrela" />
                <div>
                    <div class="col40">
                        <span>ID: 154</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó núi Estrela</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">7,874,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Bồ Đào Nha.jpg" alt="Chó chăn cừu Bồ Đào Nha" />
                <div>
                    <div class="col40">
                        <span>ID: 155</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Bồ Đào Nha</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">394,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Dandie Dinmont.jpg" alt="Chó sục Dandie Dinmont" />
                <div>
                    <div class="col40">
                        <span>ID: 156</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Dandie Dinmont</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">1,444,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chinook.jpg" alt="Chinook" />
                <div>
                    <div class="col40">
                        <span>ID: 157</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chinook</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">456,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Bohemian.jpg" alt="Chó chăn cừu Bohemian" />
                <div>
                    <div class="col40">
                        <span>ID: 158</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Bohemian</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">222,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chortaj.jpg" alt="Chortaj" />
                <div>
                    <div class="col40">
                        <span>ID: 159</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chortaj</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">432,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Carpathian Romania.jpg" alt="Chó chăn cừu Carpathian Romania" />
                <div>
                    <div class="col40">
                        <span>ID: 160</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Carpathian Romania</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">976,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Romanian de Bucovina.jpg" alt="Chó chăn cừu Romanian de Bucovina" />
                <div>
                    <div class="col40">
                        <span>ID: 161</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Romanian de Bucovina</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">533,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu Mioritic Romania.jpg" alt="Chó chăn cừu Mioritic Romania" />
                <div>
                    <div class="col40">
                        <span>ID: 162</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Mioritic Romania</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">432,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Cirneco dell'Etna.jpg" alt="Cirneco dell'Etna" />
                <div>
                    <div class="col40">
                        <span>ID: 163</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Cirneco dell'Etna</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">346,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Coton de Tulear.jpg" alt="Coton de Tulear" />
                <div>
                    <div class="col40">
                        <span>ID: 164</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Coton de Tulear</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">211,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Crete.jpg" alt="Chó săn Crete" />
                <div>
                    <div class="col40">
                        <span>ID: 165</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Crete</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">135,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Cursinu.jpg" alt="Cursinu" />
                <div>
                    <div class="col40">
                        <span>ID: 166</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Cursinu</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">642,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Curly Coated Retriever.jpg" alt="Curly Coated Retriever" />
                <div>
                    <div class="col40">
                        <span>ID: 167</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Curly Coated Retriever</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">843,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Dandie Dinmont.jpg" alt="Chó sục Dandie Dinmont" />
                <div>
                    <div class="col40">
                        <span>ID: 168</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Dandie Dinmont</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">953,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó nông trại Đan Mạch-Thụy Điển.jpg" alt="Chó nông trại Đan Mạch-Thụy Điển" />
                <div>
                    <div class="col40">
                        <span>ID: 169</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó nông trại Đan Mạch-Thụy Điển</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">246,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn hươu.jpg" alt="Chó săn hươu" />
                <div>
                    <div class="col40">
                        <span>ID: 170</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn hươu</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">643,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutsch Drahthaar.jpg" alt="Deutsch Drahthaar" />
                <div>
                    <div class="col40">
                        <span>ID: 171</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutsch Drahthaar</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">268,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cừu lông dài.jpg" alt="Chó chăn cừu lông dài" />
                <div>
                    <div class="col40">
                        <span>ID: 172</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu lông dài</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">633,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutsch Stichelhaar.jpg" alt="Deutsch Stichelhaar" />
                <div>
                    <div class="col40">
                        <span>ID: 173</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutsch Stichelhaar</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">268,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutscher Pinscher.jpg" alt="Deutscher Pinscher" />
                <div>
                    <div class="col40">
                        <span>ID: 174</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutscher Pinscher</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">279,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó Spitz Đức.jpg" alt="Chó Spitz Đức" />
                <div>
                    <div class="col40">
                        <span>ID: 175</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó Spitz Đức</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">974,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutscher Wachtel.jpg" alt="Deutscher Wachtel" />
                <div>
                    <div class="col40">
                        <span>ID: 176</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutscher Wachtel</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">843,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutsch Kurzhaar.jpg" alt="Deutsch Kurzhaar" />
                <div>
                    <div class="col40">
                        <span>ID: 177</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutsch Kurzhaar</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">268,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Deutsch Drahthaar.jpg" alt="Deutsch Drahthaar" />
                <div>
                    <div class="col40">
                        <span>ID: 178</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Deutsch Drahthaar</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">931,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Dogo Canario.jpg" alt="Dogo Canario" />
                <div>
                    <div class="col40">
                        <span>ID: 179</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Dogo Canario</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">942,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Drentse Patrijshond.jpg" alt="Drentse Patrijshond" />
                <div>
                    <div class="col40">
                        <span>ID: 180</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Drentse Patrijshond</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">254,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Drever.jpg" alt="Drever" />
                <div>
                    <div class="col40">
                        <span>ID: 181</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Drever</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">257,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Na Uy.jpg" alt="Chó săn Na Uy" />
                <div>
                    <div class="col40">
                        <span>ID: 182</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Na Uy</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">443,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn gấu mèo Anh Quốc.jpg" alt="Chó săn gấu mèo Anh Quốc" />
                <div>
                    <div class="col40">
                        <span>ID: 183</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn gấu mèo Anh Quốc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">389,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Springer Spaniel Anh Quốc.jpg" alt="Springer Spaniel Anh Quốc" />
                <div>
                    <div class="col40">
                        <span>ID: 184</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Springer Spaniel Anh Quốc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">278,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chỉ điểm Anh Quốc.jpg" alt="Chó chỉ điểm Anh Quốc" />
                <div>
                    <div class="col40">
                        <span>ID: 185</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chỉ điểm Anh Quốc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">321,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cảnh Anh Quốc.jpg" alt="Chó sục cảnh Anh Quốc" />
                <div>
                    <div class="col40">
                        <span>ID: 186</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cảnh Anh Quốc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">972,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Entlebucher Sennenhund.jpg" alt="Entlebucher Sennenhund" />
                <div>
                    <div class="col40">
                        <span>ID: 187</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Entlebucher Sennenhund</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">862,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Epagneul Français.jpg" alt="Epagneul Français" />
                <div>
                    <div class="col40">
                        <span>ID: 188</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Epagneul Français</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">975,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Epagneul Picard.jpg" alt="Epagneul Picard" />
                <div>
                    <div class="col40">
                        <span>ID: 189</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Epagneul Picard</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">816,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Epagneul de Pont-Audemer.jpg" alt="Epagneul de Pont-Audemer" />
                <div>
                    <div class="col40">
                        <span>ID: 190</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Epagneul de Pont-Audemer</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">912,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Erdélyi Kopó.jpg" alt="Erdélyi Kopó" />
                <div>
                    <div class="col40">
                        <span>ID: 191</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Erdélyi Kopó</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">721,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Eurasier.jpg" alt="Eurasier" />
                <div>
                    <div class="col40">
                        <span>ID: 192</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Eurasier</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">872,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Flat Coated Retriever.jpg" alt="Flat Coated Retriever" />
                <div>
                    <div class="col40">
                        <span>ID: 193</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Flat Coated Retriever</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">192,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục cáo.jpg" alt="Chó sục cáo" />
                <div>
                    <div class="col40">
                        <span>ID: 194</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục cáo</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">783,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Gammel Dansk Hønsehund.jpg" alt="Gammel Dansk Hønsehund" />
                <div>
                    <div class="col40">
                        <span>ID: 195</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Gammel Dansk Hønsehund</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">297,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó sục Glen xứ Imaal.jpg" alt="Chó sục Glen xứ Imaal" />
                <div>
                    <div class="col40">
                        <span>ID: 196</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó sục Glen xứ Imaal</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">854,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Gończy Polski.jpg" alt="Gończy Polski" />
                <div>
                    <div class="col40">
                        <span>ID: 197</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Gończy Polski</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">971,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó chăn cùu Catalan.jpg" alt="Chó chăn cùu Catalan" />
                <div>
                    <div class="col40">
                        <span>ID: 198</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cùu Catalan</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">332,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Anh Pháp lớn tam thể.jpg" alt="Chó chăn cừu Kelpie Úc" />
                <div>
                    <div class="col40">
                        <span>ID: 199</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó chăn cừu Kelpie Úc</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">275,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
            <div class="info-dog">
                <div class="overlay__product">
                    <button class="overlay__product--button test_overlay overlay__product--watch">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    <button class="overlay__product--button overlay__product--add" onclick="addToCart()" >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/Chó săn Anh Pháp lớn cam trắng.jpg" alt="Chó săn Anh Pháp" />
                <div>
                    <div class="col40">
                        <span>ID: 200</span>
                    </div>
                    <div class="col60">
                        <i class="fas fa-star star1"></i>
                        <i class="fas fa-star star2"></i>
                        <i class="fas fa-star star3"></i>
                        <i class="fas fa-star star4"></i>
                        <i class="fas fa-star star5"></i>
                    </div>
                </div>
                <h5 class="product_name"style="color:purple; font-family: 'Open Sans', sans-serif; font-size: 18;">Chó săn Anh Pháp</h5>
                <div>
                    <div class="col40 money">

                        <span class="info-dog--money-new">935,000đ</span>
                    </div>
                    <div class="col60">
                       <span>SL: 1
                       </span>
                    </div>
                </div>
            </div>
        </section>
        <div id="pagination-buttons">
            <ul class="pagination"></ul>
        </div>
    </div>
    <div class="product">
        <label id="product__close" class="product--close">
            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 384 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z"/></svg>
        </label>
        <div class="product__title">
            <h1>
                Thông tin sản phẩm
            </h1>
        </div>
        <div class="product-container">
            <div class="grid-2">
                <img id="mainAvatar" src="${pageContext.request.contextPath}/assets/user/image/giongcho/akita-inu.jpg" alt="AKITA INU" />
                <div class="home-product-item__sale-off">
                    <span class="home-product-item__sale-off--percent">25%</span>
                    <span class="home-product-item__sale-off--label">GIẢM</span>
                </div>
            </div>
            <div class="grid-2 product-information">
                <h2 class="product-name">CORGI</h2>
                <div class="product__money">
                    <p class="product__money--old">2.100.000đ</p>
                    <p class="product__money--new">1.575.000đ</p>
                </div>
                <div class="product__describe">
                    <p>Chúng được coi là giống chó chính thức và là Quốc khuyển của Nhật Bản vì những đặc tính ưu điểm của mình.</p>
                </div>
                <div class="product__promotion">
                    <h4 class="product__promotion--title">Khuyến mãi hot nhất</h4>
                    <li>Miễn phí phần thức ăn lớn trong hôm nay</li>
                    <li>Giftcard lên tới 100K</li>
                    <li>Phiếu mua hàng trị giá 50K</li>
                </div>
                <form class="cart" method="post">
                    <div class="quanlity">
                        <input type="button" value="-" class="button minus" onclick="decreaseQuantity()">
                        <input type="text" class="input-text" step="1" min="1" max="9999" name="quanlity" value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric">
                        <input type="button" value="+" class="button plus" onclick="increaseQuantity()">
                    </div>
                    <button type="submit" name="addCart" class="addCartButton">
                        <a href="./shoppingcart.html" style="text-decoration: none;">
                            <i class="fa-solid fa-cart-plus"></i>
                            MUA HÀNG NGAY
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
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/bulldog.jpg " alt=" " />
            </div>
            <div class="info ">
                <a href="#">
                    Chó Bully American – Mua Bán Chó Bully Con Thuần Chủng, Giá Tốt tại Petshop [...]
                </a>
            </div>
        </div>
        <div class="one-news ">
            <div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/tinmuaban.jpg" alt="hinh ảnh" />
            </div>
            <div class="info ">
                <a href="#">
                    Chó Corgi Pembroke Wales & Cardigan giá bao nhiêu tiền? Mua bán chó Corgi con thuần chủng uy tín tại Petshop [...]
                </a>
            </div>
        </div>
        <div class="one-news ">
            <div>
                <img src="${pageContext.request.contextPath}/assets/user/image/giongcho/tintuc-hinhanh.jpg " alt="hinh ảnh" />
            </div>
            <div class="info ">
                <a href="#">
                    Hướng dẫn làm giấy Vka cho chó theo đúng quy định [...]
                </a>
            </div>
        </div>
    </article>
</section>
<!-- nut go to back -->
<div class="back-to-top" id="backtop">
    <a href="">
        <img src="${pageContext.request.contextPath}/assets/user/image/icon/icon-backtotop.png" alt="back to top" />
    </a>
</div>
<!-- thong tin lien he -->
<div class="contact-bubbles">
    <div class="bubbles-zalo">

        <a target="_blank" href="zalo.html"><img src="${pageContext.request.contextPath}/assets/user/image/icon/zalo-icon.png" alt="icon" /></a>
    </div>
    <div class="bubbles-mesenge">

        <a target="_blank" href="https://www.facebook.com/Petshop-112119790614434"><img src="${pageContext.request.contextPath}/assets/user/image/icon/facebook-icon.png" alt="icon" /></a>

    </div>
    <div class="bubbles-mail">

        <a href="mailto:petshop.cuahangmuabanthucung@gmail.com"><img src="${pageContext.request.contextPath}/assets/user/image/icon/mail-icon.png" alt="icon" /></a>

    </div>
    <div class="bubbles-phone">

        <a target="_blank" href="lienhe.html"><img src="${pageContext.request.contextPath}/assets/user/image/icon/phone-con-thongtin.png" alt="icon" /></a>

    </div>

</div>
<!-- form ho tro -->
<div class="form-support">
    <div>
        <h1>
            HỖ TRỢ
        </h1>
    </div>
    <div>
        <img src="${pageContext.request.contextPath}/assets/user/image/icon/user-name.png" /><input type="text" placeholder="Nhập họ và tên..." />
    </div>
    <div>
        <img src="${pageContext.request.contextPath}/assets/user/image/icon/number-phone.png" /><input type="text" placeholder="Nhập số điện thoại..." />
    </div>

    <div>
        <img src="${pageContext.request.contextPath}/assets/user/image/icon/mail-name.png" /><input type="text" placeholder="Nhập email của bạn..." />
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
        <img src="${pageContext.request.contextPath}/assets/user/image/icon/botton-out.png">
    </div>
</div>


<!--footer-->
<footer>
    <div class="footer">
        <div class="col30 footer-logo">
            <img src="${pageContext.request.contextPath}/assets/user/image/icon/logo-shop.png" alt="logoshop" />
        </div>
        <div class="col40 freeship">
            <div><img src="${pageContext.request.contextPath}/assets/user/image/icon/icon-shipping.png" alt="shipping" /></div>
            <div>Giao hàng miễn phí tại TP.HCM, Hà Nội, Đà Nẵng Áp dụng cho đơn hàng từ 500.000đ trở lên</div>
        </div>

    </div>
    <div class="footer">
        <div class="col20 footer-info">
            <h6>Về chúng tôi</h6>
            <ul>
                <li><a href="#">Giới thiệu</a></li>
                <li><a href="#">Chi nhánh</a></li>
                <li><a href="#">Liên hệ</a></li>
                <li>
                    <a target="_blank" href="http://online.gov.vn/"><img src="${pageContext.request.contextPath}/assets/user/image/icon/icon-bocongthuong.png" alt="bộ công thương"></a>
                </li>
                <li>
                    <a target="_blank" href="https://www.dmca.com/Protection/Status.aspx?ID=1bf3f65e-4ac8-457e-8400-9d299263f727"><img src="${pageContext.request.contextPath}/assets/user/image/icon/_dmca_premi_badge_7.png" alt="chứng nhận"></a>
                </li>
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
                <li>Địa chỉ: Chung cư An Bình, An Bình, Dĩ An, Bình Dương <a target="_blank" href="https://www.google.com/maps/search/dai+hoc+mo+tphcmnguyen+kiem/@10.776026,106.6873724,16.58z?hl=vi-VN">Chỉ đường</a></li>
                <li>Địa chỉ: Đại Học Nông Lâm, Khu Phố 6, Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh <a target="_blank" href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90H+M%E1%BB%9F+
                        TP.+H%E1%BB%93+Ch%C3%AD+Minh/@10.7762811,106.6860528,16.58z/data=!4m5!3m4!1s0x31752f3ae35e3725:0x20c5174a
                        47f97be3!8m2!3d10.776266!4d106.6904628?hl=vi-VN">Chỉ đường</a></li>
                <li>Địa chỉ:  Tân Phú Tân Hội Đức Trọng Lâm Đồng. <a target="_blank" href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+THPT
                        +L%C6%B0%C6%A1ng+Th%E1%BA%BF+Vinh/@9.9069258,106.5655095,17z/data=!4m5!3m4!1s0x319ff5bf4d219b61:0xc1d836c355101725!8m2!3d9.9069469!4d106.5642804?hl=vi
                        -VN">Chỉ đường</a></li>
                <li>
                    Email: <a href="mailto:petshop.cuahangthucung@gmail.com">thucungshop.cuahangthucung@gmail.com</a>
                </li>
                <li>
                    Holine: <span class="mauholine">0797612838</span>
                </li>
                <li>
                    Website: <a href="http://127.0.0.1:5500/index.html">https://pethouse.com.vn</a>
                </li>
            </ul>
        </div>
    </div>
</footer>
<!-- javascript -->
<script src="${pageContext.request.contextPath}/assets/user/javascript/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/javascript/all.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/javascript/style_javascript.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/material-design-iconic-font.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/font-awesome.min.css">
<!-- Font Awesome Stars-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/css/fontawesome-stars.css">
</body>

</html>