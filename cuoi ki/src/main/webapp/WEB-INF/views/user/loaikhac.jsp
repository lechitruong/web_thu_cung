<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.demo.models.CatalogModel"%>
<%@page import="com.demo.entities.Catalogs"%>
<%@page import="com.demo.models.PetModel"%>
<%@page import="com.demo.entities.Pets"%>
<%@page import="com.demo.models.CategoryModel"%>
<%@page import="com.demo.entities.CategoryPets"%>
<%
CatalogModel catalogModel = new CatalogModel();
PetModel petModel = new PetModel();
CategoryModel categoryModel = new CategoryModel();
%>
<section class="main">
	<div class="headline">
		<h1>DANH SÁCH LOÀI KHÁC</h1>
	</div>
	<section class="menu_main">
		<h1>DANH MỤC MÈO</h1>
		<ul>
			<ul>
			<%
			for (Catalogs ca : catalogModel.findAllByCategory(2)) {
			%>
				<li><input type="button" class="filterByCatalog" value="<%= ca.getName() %>" id="<%= ca.getId() %>"></li> 
			<%
			}
			%>
		</ul>
		</ul>
		<h1>DANH MỤC LOÀI KHÁC</h1>
		<ul>
			<%
			for (Catalogs ca3 : catalogModel.findAllByCategory(3)) {
			%>
			<li><input type="button" class="filterByCatalog1"
				value="<%=ca3.getName()%>" id="<%=ca3.getId()%>"></li>
			<%
			}
			%>
		</ul>
		<script>
		$(document).ready(function() {
			$('.filterByCatalog').click(function() {
				var idcatalog = $(this).attr('id');
				console.log(idcatalog);
				var s = '';
				$.ajax({
					type: 'GET',
					url: '${pageContext.request.contextPath}/loaikhac',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					data: {
						action: 'filterByCat',
						idcatalog : idcatalog
					},
					success: function(pet) {
						for(var i = 0; i < pet.length ;i++) {
							if(pet[i].catalogId == 11) {
								catalogName = 'Mèo châu Á';
							} else if(pet[i].catalogId == 12) {
								catalogName = 'Mèo châu Âu';
							} else if(pet[i].catalogId == 13) {
								catalogName = 'Mèo châu Phi';
							} else if(pet[i].catalogId == 14) {
								catalogName = 'Mèo châu Mỹ';
							} else if(pet[i].catalogId == 15) {
								catalogName = 'Mèo lai';
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
		<script>	
		$(document).ready(function() {
			$('.filterByCatalog1').click(function() {
				var idcatalog = $(this).attr('id');
				var s = '';
				$.ajax({
					type: 'GET',
					url: '${pageContext.request.contextPath}/loaikhac',
					dataType: 'json',
					contentType: 'application/json; charset=utf-8',
					data: {
						action: 'filterPetKhac',
						idcatalog : idcatalog
					},
					success: function(pet) {
						for(var i = 0;i < pet.length;i++) {
							if(pet[i].catalogId == 16) {
								catalogName = 'Cá';
							} else if(pet[i].catalogId == 17) {
								catalogName = 'Chim';
							} else if(pet[i].catalogId == 18) {
								catalogName = 'Rắn';
							} else if(pet[i].catalogId == 19) {
								catalogName = 'Thỏ';
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
		for (Pets pet2 : petModel.findAllByCategory(2)) {
		%>
		<div class="info">
			<div class="text">
				<h5><%=pet2.getPetName()%></h5>
				<ul>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Phân loại: <%= catalogModel.findCatalogById(pet2.getCatalogId()).getName() %></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Tuổi thọ: <%=petModel.ageByPet(pet2.getCreateDate().toString())%></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Giá bán: <%=pet2.getMoney()%></li>
				</ul>
				<div class="chon">
					<a class="muacun"
						href="${pageContext.request.contextPath}/giohang?action=addToCart&id=<%= pet2.getId() %>">Mua
						cún</a> <a class="chitiet"
						href="${pageContext.request.contextPath}/chitiet?action=petDetails&id=<%= pet2.getId() %>">Chi
						tiết</a>
				</div>
			</div>
			<div class="image">
				<img
					src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet2.getImage() %>"
					alt="" />
			</div>
		</div>
		<%
		}
		%>
		<%
		for (Pets pet3 : petModel.findAllByCategory(3)) {
		%>
		<div class="info">
			<div class="text">
				<h5><%=pet3.getPetName()%></h5>
				<ul>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Phân loại: <%= catalogModel.findCatalogById(pet3.getCatalogId()).getName() %></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Tuổi thọ: <%=petModel.ageByPet(pet3.getCreateDate().toString())%></li>
					<li><img
						src="${pageContext.request.contextPath}/assets/user/image/icon/check-yes-icon.png"
						alt="check" /> Giá bán: <%=pet3.getMoney()%></li>
				</ul>
				<div class="chon">
					<a class="muacun"
						href="${pageContext.request.contextPath}/giohang?action=addToCart&id=<%= pet3.getId() %>">Mua
						cún</a> <a class="chitiet"
						href="${pageContext.request.contextPath}/chitiet?action=petDetails&id=<%= pet3.getId() %>">Chi
						tiết</a>
				</div>
			</div>
			<div class="image">
				<img
					src="${pageContext.request.contextPath}/assets/user/image/anhcho/<%= pet3.getImage() %>"
					alt="" />
			</div>
		</div>
		<%
		}
		%>
		</div>
</section>