<%@ page import="java.util.List" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%--%>
<%--  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");--%>
<%--  response.setHeader("Pragma" , "no-cache");--%>
<%--  response.setHeader("Expires" , "0");--%>


<%--  if (session.getAttribute("admin-username") == null){--%>
<%--	  response.sendRedirect(request.getContextPath() + "/admin/login");--%>
<%--  }--%>
<%--  %>--%>
<%--  <!-- Start header section -->--%>
<%--  <jsp:include page = "./header/header.jsp" flush = "true" />--%>
<%--    <div class="content-wrapper">--%>
<%--      <div class="container-fluid">--%>

<%--        <div class="row mt-3">--%>
<%--          <div class="col-lg-12">--%>
<%--            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/pet/add">Thêm sản phẩm</a></button>--%>
<%--          </div>--%>
<%--          <div class="col-lg-12">--%>
<%--            <div class="card">--%>
<%--              <div class="card-body">--%>
<%--                <h5 class="card-title">Danh sách sản phẩm</h5>--%>
<%--                <div class="table-responsive">--%>
<%--                  <table class="table table-striped">--%>
<%--                    <thead>--%>
<%--                      <tr>--%>
<%--                        <th scope="col">#</th>--%>
<%--                        <th scope="col">Tên sản phẩm</th>--%>
<%--                        <th scope="col">pet type</th>--%>
<%--                        <th scope="col">pet gender</th>--%>
<%--                        <th scope="col">Hình ảnh</th>--%>
<%--                        <th scope="col">ID danh mục</th>--%>
<%--                        <th scope="col">Giá</th>--%>
<%--                        <th scope="col">Status</th>--%>
<%--                        <th scope="col">Giảm giá</th>--%>
<%--                        <th scope="col">Ngày tạo</th>--%>
<%--                        <th scope="col">Hành động</th>--%>
<%--                      </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                     <c:forEach items="${petlist}" var="pet">--%>
<%--                      <tr>--%>
<%--                        <th scope="row">${pet.id }</th>--%>
<%--                        <td>${pet.petName }</td>--%>
<%--                        <td><img style="    width: 110px;height: 67px; object-fit: cover;border: 1px solid #fff;" src="${pageContext.request.contextPath}/view/client/assets/images/pets/img-test/${pet.image}" alt="${pet.name}"></td>--%>

<%--                        <c:choose>--%>
<%--                          <c:when test="${pet.petType == 1}">--%>
<%--                            <c:out value="Lớn"/>--%>
<%--                          </c:when>--%>
<%--                          <c:otherwise>--%>
<%--                            <c:out value="Nhỏ"/>--%>
<%--                          </c:otherwise>--%>
<%--                        </c:choose>--%>

<%--                        <c:choose>--%>
<%--                          <c:when test="${pet.petGender == 1}">--%>
<%--                            <c:out value="Đực"/>--%>
<%--                          </c:when>--%>
<%--                          <c:otherwise>--%>
<%--                            <c:out value="Cái"/>--%>
<%--                          </c:otherwise>--%>
<%--                        </c:choose>--%>


<%--                        <td>${pet.catalogId }</td>--%>
<%--                        <td>${pet.price }</td>--%>
<%--                        <td>--%>

<%--                        <c:choose>--%>
<%--	                        <c:when test="${pet.status == 1}">--%>
<%--	                        	<c:out value="Còn hàng"/>--%>
<%--	                       	</c:when>--%>
<%--	                       	<c:otherwise>--%>
<%--						        <c:out value="Hết hàng"/>--%>
<%--						    </c:otherwise>--%>
<%--                       	</c:choose>--%>
<%--                        </td>--%>
<%--                        <td>${pet.discount }%</td>--%>
<%--                        <td>${pet.created }</td>--%>
<%--                        <td>--%>
<%--                            <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/pet/delete?id=${pet.id}">Xóa</a></button>--%>

<%--                          <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/pet/edit?id=${pet.id}">Sửa</a></button>--%>
<%--                        </td>--%>
<%--                      </tr>--%>
<%--                      </c:forEach>--%>

<%--                    </tbody>--%>
<%--                  </table>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="overlay toggle-menu"></div>--%>
<%--      </div>--%>
<%--    </div>--%>


<%--    <jsp:include page = "./footer/footer.jsp" flush = "true" />--%>


<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma" , "no-cache");
  response.setHeader("Expires" , "0");


  if (session.getAttribute("admin-username") == null){
    response.sendRedirect(request.getContextPath() + "/admin/login");
  }
%>
<!-- Start header section -->
<div class="content-wrapper">
  <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-12">
        <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/pet/add">Thêm thú cưng</a></button>
      </div>
      <div class="col-lg-12">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Danh sách thú cưng</h5>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Tên thú cưng</th>
                  <th scope="col">kích thước</th>
                  <th scope="col">giới tính</th>
                  <th scope="col">Phân loại</th>
                  <th scope="col">Chuyên mục</th>
                  <th scope="col">Hình ảnh</th>
                  <th scope="col">ID danh mục</th>
                  <th scope="col">Giá</th>
                  <th scope="col">Status</th>
                  <th scope="col">Giảm giá</th>
                  <th scope="col">Ngày tạo</th>
                  <th scope="col">Hành động</th>
                </tr>
                </thead>
                <% List<Pet> petList = (List<Pet>) request.getAttribute("petlist");%>
                <% for(Pet pet : petList) { %>

                <tbody>
                  <tr>
                    <th scope="row"><%= pet.getId()%></th>

                    <td> <%= pet.getPetName()%> </td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetGender()%></td>
                    <td> <%=pet.getCatalogId()%></td>
                    <td> <%=pet.getCategoryId()%></td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetType()%></td>
                    <td> <%=pet.getPetType()%></td>



                  </tr>



                </tbody>
                <%}%>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="overlay toggle-menu"></div>
  </div>
</div>