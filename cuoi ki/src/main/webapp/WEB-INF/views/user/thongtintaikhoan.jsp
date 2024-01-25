<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Page Title</title>
</head>
<body>
<!-- section main -->
<style>
/* Giao diện chung cho input và label */
.custom-file {
	display: inline-block;
	position: relative;
}

/* Ẩn phần "no file chosen" và tên file */
.custom-file-input {
	position: absolute;
	left: 0;
	top: 0;
	opacity: 0;
	width: 100%;
	height: 100%;
	cursor: pointer;
	z-index: 2;
}

/* Giao diện của label */
.custom-file-label {
	position: relative;
	display: inline-block;
	background-color: #007bff;
	color: #fff;
	padding: 6px 12px;
	border-radius: 4px;
	cursor: pointer;
	z-index: 1;
}

/* Khi label được hover, thay đổi màu nền */
.custom-file:hover .custom-file-label {
	background-color: #0056b3;
}
</style>
<section class="main">
	<section class="content">
		<div class="container-fluid">
			<!-- Small boxes (Stat box) -->
			<div class="row ">

				<div class="col-md-12">
					<div class="card card-primary">
						<p style="text-align: center; color: blue; font-size: 30px">Cập
							nhật thông tin cá nhân của bạn</p>
						<!-- /.card-header -->
						<!-- form start -->
						<form method="post"
							action="${pageContext.request.contextPath}/thongtintaikhoan?action=update"
							enctype="multipart/form-data" accept-charset="UTF-8">
							<div class="card-body">

								<div class="row">
									<div class="form-group col-8">
										<label for="exampleInputFile">Ảnh đại diện</label>

										<div class="input-group">
											<div class="custom-file">
												<input type="file" class="custom-file-input" name="image"
													id="exampleInputFile"
													onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
												<label for="exampleInputFile" class="custom-file-label">Chọn
													tệp tin</label>
											</div>

										</div>

									</div>

								<div class="col-4">
									
										<img
											src="${pageContext.request.contextPath}/assets/user/image/${sessionScope.user.image == null ? 'Unknown_person.jpg' : sessionScope.user.image}"
											id="blah" alt="" height="200" width="200">
								
									
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputName1">Họ Và Tên</label> <input
									type="text" style="width: 100%; padding: 5px; margin: 0px;"
									class="form-control" id="exampleInputName1" name="fullName"
									placeholder="Họ và Tên"
									value="${sessionScope.user.fullName == null? null :sessionScope.user.fullName }">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Địa Chỉ Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									name="email" placeholder="Nhập email"
									value="${sessionScope.user.email == null? null :sessionScope.user.email }">
							</div>
							<div class="form-group">
								<label for="exampleInputPhoneNumber1">Số Điện Thoại</label> <input
									type="text" style="width: 100%; padding: 5px; margin: 0px;"
									class="form-control" id="exampleInputPhoneNumber1"
									name="phoneNumber" placeholder="Nhập Số điện thoại"
									value="${sessionScope.user.phoneNumber == null? null :sessionScope.user.phoneNumber }">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Địa chỉ</label> <input
									type="text" style="width: 100%; padding: 5px; margin: 0px;"
									class="form-control" id="exampleInput1" name="address"
									placeholder="Nhập địa chỉ"
									value="${sessionScope.user.address == null? null :sessionScope.user.address }">
							</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="coupon-all">
								<div class="coupon"></div>
								<div class="coupon2"
									style="margin-bottom: 30px; margin-left: 20px;">
									<input type="submit" class="coupon-checkout"
										style="border: none; margin-right: 20px;"
										value="Lưu thông tin">
								</div>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- /.card-body -->
		<!-- /.row (main row) -->
		</div>


	</section>


</section>
</body>
</html>
