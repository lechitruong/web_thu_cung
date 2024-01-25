<%@page import="com.demo.models.CatalogModel"%>
<%@page import="com.demo.entities.Catalogs"%>
<%@page import="com.demo.models.PetModel"%>
<%@page import="com.demo.entities.Pets"%>
<%@page import="com.demo.models.CategoryModel"%>
<%@page import="com.demo.entities.CategoryPets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
CatalogModel catalogModel = new CatalogModel();
PetModel petModel = new PetModel();
CategoryModel categoryModel = new CategoryModel();
%>
<section class="main">
	<div class="headline">
		<a href="${pageContext.request.contextPath}/giongcho">
			<h1>DANH SÁCH CHÓ</h1>
		</a>
	</div>
	<section class="menu_main">
		<a href="${pageContext.request.contextPath}/giongcho">
			<h1>DANH MỤC CHÓ</h1>
		</a>
		<ul>
			<%
			for (Catalogs ca : catalogModel.findAllByCategory(1)) {
			%>
			<%-- <li><a class="filterByCatalog"
				href="${pageContext.request.contextPath }/giongcho?action=filterByCatalog"><%=ca.getName()%>
				<input class="valueID" type="hidden" value="<%= ca.getId() %>">
				</a>
				</li> --%>
				<li><input type="button" class="filterByCatalog" value="<%= ca.getName() %>" id="<%= ca.getId() %>"></li> 
			<%
			}
			%>
		</ul>
	<script>
		$(document).ready(function() {
			$('.filterByCatalog').click(function() {
				var idcatalog = $(this).attr('id');
				console.log(idcatalog);
				var idcategory = 1;
				var s = '';
				$.ajax({
					type: 'GET',
					url: '${pageContext.request.contextPath}/giongcho',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					data: {
						action: 'filterByCatalog',
						idcatalog : idcatalog,
						idcategory : 1
						
					},
					success: function(pet) {
						for(var i = 0;i < pet.length;i++) {
							if(pet[i].catalogId == 1) {
								catalogName = 'Chó Nhà';
							} else if(pet[i].catalogId == 2) {
								catalogName = 'Chó Bảo Vệ';
							} else if(pet[i].catalogId == 3) {
								catalogName = 'Chó Cảnh Báo';
							} else if(pet[i].catalogId == 4) {
								catalogName = 'Chó Săn Mồi';
							} else if(pet[i].catalogId == 5) {
								catalogName = 'Chó Đáng Yêu';
							} else if(pet[i].catalogId == 6) {
								catalogName = 'Chó Thông Minh';
							} else if(pet[i].catalogId == 7) {
								catalogName = 'Chó Năng Động';
							} else if(pet[i].catalogId == 8) {
								catalogName = 'Chó Kéo Xe';
							} else if(pet[i].catalogId == 9) {
								catalogName = 'Chó Nhỏ';
							} else if(pet[i].catalogId == 10) {
								catalogName = 'Chó Thân Thiện';
							}
							
							s+= '<div class="info">';
							s+= '<div class="text">';
							s+= '<h5>'+ pet[i].petName +'</h5>';
							s+= '<ul>';
							s+= '<li>';
							s+= '<img src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png" alt="check" /> Phân loại: '+ catalogName + '';
							s+= '</li>';
							s+= '<li>';
							s+= '<img src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png" alt="check" /> Tuổi thọ: ' + tinhTuoiTho(pet[i].createDate) +'  </li>';
							s+= '</li>';
							s+= '<li>';
							s+= '<img src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png" alt="check" /> Giá bán: '+ pet[i].money +'';
							s+= '<li>';
							s+= '</ul>';
							s+= '<div class="chon">';
							s+= '<a class="muacun" href="${pageContext.request.contextPath}/giohang?action=addToCart&id='+ pet[i].id +'">Mua cún</a>';
							s+= '<a class="chitiet" href="${pageContext.request.contextPath}/chitiet?action=petDetails&id='+ pet[i].id +'">Chi tiết</a>';
							s+= '</div>';	
							s+= '</div>';
							s+= '<div class="image">';
							s+= '<img src="${pageContext.request.contextPath}/assets/user/image/anhcho/'+ pet[i].image +'" alt="" />';
							s+= '</div>';	
							s+= '</div>';						
						}
						
						$('.content').html(s);
					}
				});
			});
		});

		function tinhTuoiTho(ngaySinh) {
			  var ngayHienTai = new Date();
			  var ngaySinhDate = new Date(ngaySinh);
			  var chenhLech = ngayHienTai - ngaySinhDate;
			  var tuoi = new Date(chenhLech);
			  var nam = tuoi.getUTCFullYear() - 1970;
			  var thang = tuoi.getUTCMonth();
			  var ngay = tuoi.getUTCDate() - 1;

			  var ketQua = thang + " tháng ";

			  return ketQua;
			}
	</script>
	</section>
	<div class="content">
		<%
		for (Pets pet : petModel.findAllByCategory(1)) {
		%>
		<div class="info">
			<div class="text">
				<h5><%=pet.getPetName()%></h5>
				<ul>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Phân loại: <%=catalogModel.findCatalogById(pet.getCatalogId()).getName()%></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Tuổi thọ: <%=petModel.ageByPet(pet.getCreateDate().toString())%></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Giá bán: <%=pet.getMoney()%></li>
				</ul>
				<div class="chon">
					<a class="muacun"
						href="${pageContext.request.contextPath}/giohang?action=addToCart&id=<%= pet.getId() %>">Mua
						cún</a> <a class="chitiet"
						href="${pageContext.request.contextPath}/chitiet?action=petDetails&id=<%= pet.getId() %>">Chi
						tiết</a>
				</div>
			</div>
			<div class="image">
				<img
					src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet.getImage() %>"
					alt="" />
			</div>
		</div>
		<%
		}
		%>
	</div>

</section>