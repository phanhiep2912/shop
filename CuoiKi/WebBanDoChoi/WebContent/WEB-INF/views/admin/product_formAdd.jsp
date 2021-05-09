
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm sản phẩm</title>
</head>
<body>

	<div class="page-container">

		<div class="left-content">

			<div class="mother-grid-inner">

				<jsp:include page="header.jsp"></jsp:include>

				<div class="inner-block">
					<div class="inbox">
						<h2>Thông tin sản phẩm</h2>
						<div>
							<p style="text-align: center; color: green">
								<u>${failFile}</u>
							</p>

							<p style="text-align: center; color: green">
								<u>${failAdd}</u>
							</p>
							<p style="text-align: center; color: green">
								<u>${msgEmpty}</u>
							</p>

							<p style="text-align: center; color: green">
								<u>${successAdd}</u>
							</p>



						</div>
						<div class="col-md-12 compose-right">
							<div class="inbox-details-default">
								<div class="inbox-details-heading">Thêm sản phẩm</div>
								<div class="inbox-details-body">
									<div class="alert alert-info"
										style="text-align: center; color: black">
										<u>Hãy điền đầy đủ thông tin bên dưới</u>
									</div>
									<form:form method="post" modelAttribute="product"
										class="com-mail"
										action="${pageContext.request.contextPath}/admin/product/add.htm"
										enctype="multipart/form-data">
										<br>

										
										<label>Tên sản phẩm:</label>
										<form:input path="name" />
										<label>Loại hàng:</label>
										<br>
										<form:select path="category.id" items="${listCategory}"
											itemLabel="name" itemValue="id" />
										<br>
										<label>Giá :</label>
										<form:input path="price" />
										<label>Định lượng:</label>
										<form:input path="quantity" />
										<label>Giảm giá:</label>
										<form:input path="discount" />
										<label>Hình ảnh:</label>
										<div class="form-group">
											<div class="btn btn-default btn-file">
												<i class="fa fa-paperclip"> </i> Image <input type="file"
													name="attachment">
											</div>
										</div>
										<label>Mô tả:</label>
										<form:textarea path="des" rows="3" />
										<br>
										<input type="submit" value="Save">
									</form:form>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</div>

				<jsp:include page="footer.jsp"></jsp:include>

			</div>

		</div>

		<jsp:include page="navigation.jsp"></jsp:include>

	</div>

</body>
</html>
