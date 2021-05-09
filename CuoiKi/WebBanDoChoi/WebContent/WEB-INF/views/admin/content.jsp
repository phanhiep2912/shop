<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>content</title>
</head>
<body>

	<div class="inner-block">
		<!--market updates updates-->
		<div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3>${proTotal}</h3>
						<h4>Sản phẩm đang được bán</h4>
						<p></p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-8 market-update-left">
						<h3>${userTotal}</h3>
						<h4>Số người đã đăng ký tài khoản</h4>
						<p></p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-8 market-update-left">
						<h3>${orTotal}</h3>
						<h4>Đơn hàng đang đợi xác nhận</h4>

					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--market updates end here-->
		<!--mainpage chit-chating-->
		<div class="chit-chat-layer1">
			<div class="col-md-6 chit-chat-layer1-left">
				<div class="work-progres">
					<div class="chit-chat-heading">Top các sản phẩm bán chạy nhất</div>
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>Tên</th>
									<th>Loại</th>

									<th>Giá</th>
									<th>Số lượng đặt mua</th>
								</tr>
							</thead>
							<tbody>


								<c:forEach var="item" items="${top4}" varStatus="status">

									<tr>
										<td>${status.index+1}</td>
										<td>${item[0]}</td>
										<td><span class="label label-info">${item[1]}</span></td>
										<td>$${item[2]}</td>
										<td style="text-align:center;"><span class="badge badge-info">${item[3]}</span></td>

									</tr>

								</c:forEach>


							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 chit-chat-layer1-rit">
				<div class="geo-chart">
					<section id="charts1" class="charts">

					</section>
				</div>
			</div>
			
			<div class="clearfix"></div>
		</div>
		<!--main page chit chating end here-->
		<!--main page chart start here-->
		<div class="main-page-charts">
			<div class="main-page-chart-layer1">

				<div class="col-md-6 chart-layer1-right">
					<div class="user-marorm">
						<div class="malorum-top"></div>
						<div class="malorm-bottom">
							<span class="malorum-pro"> </span>
							<h2>Hiệp Lô Lô</h2>
							<p>Công ty cung cấp đồ chơi 1 thành viên</p>
							<ul class="malorum-icons">
								<li><a href="#"><i class="fa fa-facebook"> </i>
										<div class="tooltip">
											<span>Facebook</span>
										</div> </a></li>
								<li><a href="#"><i class="fa fa-twitter"> </i>
										<div class="tooltip">
											<span>Twitter</span>
										</div> </a></li>
								<li><a href="#"><i class="fa fa-google-plus"> </i>
										<div class="tooltip">
											<span>Google</span>
										</div> </a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>

</body>
</html>
