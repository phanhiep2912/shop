
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Navigation</title>
</head>
<body>

	<div class="sidebar-menu">
		<div class="logo">
			<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
			</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
			</a>
		</div>
		<div class="menu">
			<ul id="menu">
				<li><a href="${pageContext.request.contextPath}/admin/quan-ly.htm"><i
						class="fa fa-home"></i><span>Trang chủ</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/category/list.htm"><i
						class="fa fa-tags"></i><span>Loại hàng</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/product/list.htm"><i
						class="fa fa-copy"></i><span>Sản phẩm</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/order/list.htm"><i
						class="fa fa-copy"></i><span>Đơn đặt hàng</span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/user.htm"><i
						class="fa fa-copy"></i><span>Tài khoản</span></a></li>
				<!-- 
				<li><a
					href="${pageContext.request.contextPath}/admin/chart.htm"><i
						class="fa fa-bar-chart"></i><span>Report</span></a></li>  -->
						<!--  
				<li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span
						class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a href="inbox.htm">Inbox</a></li>
						<li id="menu-academico-boletim"><a href="inbox-details.html">Compose
								email</a></li>
					</ul></li>
					-->
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>

	<!--slide bar menu end here-->
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}
					toggle = !toggle;
				});
	</script>

</body>
</html>
