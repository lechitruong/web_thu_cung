<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->

    <div class="content-wrapper">
      <div class="container-fluid">
        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa sản phẩm</div>
                <hr>
                <form method="post" action="${pageContext.request.contextPath}/admin/pet/edit">
                
                 <div class="form-group">
                    <label for="input-1">Mã sản phẩm</label>
                    <input type="text" class="form-control" readonly="readonly" id="input-1" placeholder="Mã sản phẩm" name="pet-sku" value="${pet.id}">
                  </div>
                  
                  <div class="form-group">
                    <label for="input-1">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Tên sản phẩm" name="pet-name" value="${pet.name}">
                  </div>
                  
        
                  <div class="form-group">
	                  <label for="input-2">Chuyên mục</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="pet-cate" aria-invalid="false">
	                    <c:forEach items="${catelist}" var="cate">
	                        <option value="${cate.id }" selected="selected">${cate.name }</option>
	                    </c:forEach>
	                    </select>
	                  </div>
	                </div>
	                 <div class="form-group">
                    <label for="input-1">Ngày</label> 
                    <input type="date" class="form-control" id="input-1" placeholder="Ngày đăng" name="pet-day" value="${pet.created}">
                  </div>
	                <div class="form-group">
                    <label for="input-1">Giá</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Giá" name="pet-price" value="${pet.price}">
                  </div>
                  
                    <div class="form-group">
	                  <label for="input-2">Trạng thái</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="pet-status" required aria-invalid="false">
	                        <option value="1">Còn hàng</option>
	                        <option value="0" >Hết hàng</option>
	                    </select>
	                  </div>
	                </div>
                    <div class="form-group">
                        <label for="input-2">Loại thú cưng</label>
                        <div>
                            <select class="form-control valid" id="input-7" name="pet-type" required aria-invalid="false">
                                <option value="1">Lớn</option>
                                <option value="0">Nhỏ</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input-3">Giới tính</label>
                        <div>
                            <select class="form-control valid" id="input-8" name="pet-gender" required aria-invalid="false">
                                <option value="1">Đực</option>
                                <option value="0">Cái</option>
                            </select>
                        </div>
                    </div>
	                 <div class="form-group">
		                <label for="input-2">Giảm giá</label>
		                <div class="input-group">
		                <input type="text" class="form-control" placeholder="Giảm ... %" name="pet-discount" value="${pet.discount}">
		                <div class="input-group-append">
		                <button class="btn btn-light" type="button">%</button>
		                </div>
		                </div>
	              </div>
                 <div class="form-group">
                  <label for="input-2" class="col-form-label">Mô tả</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="pet-desc">${pet.description}</textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input-2" class="col-form-label">Nội dung</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="pet-content">${pet.content}</textarea>
                  </div>
                </div>
                
                 <div class="form-group">
                    <label for="input-1">Ảnh đại diện</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Tên hình" name="pet-image" value="${pet.image_link}">
                  </div>
              
              
          
               <div class="form-footer">
                     <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/pet/list">Hủy</a></button>
                         
                     <button type="submit" class="btn btn-success">Cập nhật</button>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="overlay toggle-menu"></div>
      </div>
    </div>