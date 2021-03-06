
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.img {
	width: 204px;
	height: 177px
}

.sli {
	width: 940px;
	height: 355px
}

.imgg {
	width: 150px;
	height: 134px
}
</style>

<meta charset="utf-8">






<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame. Remove this if you use the .htaccess -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Home</title>
<!-- A Sunil Joshi design (http://themeforest.net/user/suniljoshi/portfolio) - Proudly developed by 960development (http://960development.com) -->

<link rel="stylesheet" type="text/css" media="all"
	href="<c:url value='/resources/client/ver2/style.css'/>" />
<link rel="stylesheet" type="text/css" media="all"
	href="<c:url value='/resources/client/ver2/jquery.selectBox.css'/>" />

<!-- Generate Favicon Using 1.http://tools.dynamicdrive.com/favicon/ OR 2.http://www.favicon.cc/ -->
<link rel="shortcut icon" href="#" />








<base href="${pageContext.servletContext.contextPath}/">
<title>Home</title>
<link href="<c:url value='/resources/client/css/bootstrap.css'/>"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value='/resources/client/js/jquery.min.js'/>"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<c:url value='/resources/client/css/style.css'/>"
	rel="stylesheet" type="text/css" media="all" />

<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">

	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript"
	src="<c:url value='/resources/client/js/move-top.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/client/js/easing.js'/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--slider-script-->
<script
	src="<c:url value='/resources/client/js/responsiveslides.min.js'/>"></script>
<script>
	$(function() {
		$("#slider1").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--//slider-script-->
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in">
					<div class="logo">
						<a href="trang-chu.htm"><img
							src="resources/client/images/logo.jpg" alt=" "></a>
					</div>
					<div class="header-in">
						<ul class="icon1 sub-icon1">
							<li><a href="client/orderList.htm">????N H??NG </a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/login.htm">
									T??I KHO???N</a></li>
							<li><a href="client/cart.htm"> GI??? H??NG</a></li>
							<li><a href="client/checkout.htm">THANH TO??N</a></li>

							<!--//gi??? h??ng nh???-->
							<li>
								<div class="cart">
									<a href="client/cart.htm" class="cart-in"> </a> <span> <c:out
											value="${sessionScope.myCartNum}" /></span>
								</div>
								<ul class="sub-icon1 list">
									<h3>???????C TH??M G???N ????Y (${sessionScope.myCartNum})</h3>
									<div class="shopping_cart">
										<c:forEach var="map" items="${sessionScope.myCartItems}">
											<div class="cart_box">
												<div class="message">
													<!-- 	<div class="alert-close"></div>    -->
													<div class="list_img">
														<img
															src="${pageContext.request.contextPath}/resources/client/images/${map.value.product.photo}"
															class="img-responsive" alt="">
													</div>
													<div class="list_desc">
														<h4>
															<a href="#"><c:out value="${map.value.product.name}" /></a>
														</h4>
														<c:out value="${map.value.quantity}" />
														x $
														<c:out value="${map.value.product.price}" />
														= <span class="actual"> $<c:out
																value="${map.value.quantity * map.value.product.price}" /></span>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="total">
										<div class="total_left">Total:</div>
										<div class="total_right">
											$
											<c:out value="${sessionScope.myCartTotal}" />
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="login_buttons">
										<div class="check_button">
											<a href="client/checkout.htm">Check out</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</ul>
							</li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<div class="h_menu4">
					<a class="toggleMenu" href="#">Menu</a>
					<ul class="nav">
						<li class="active"><a
							href="${pageContext.servletContext.contextPath}/trang-chu.htm"><i>
							</i>Trang ch???</a></li>
						<c:forEach var="c" items="${listCategory}">
							<li><a href="client/products/${c.id}.htm">${c.name}</a></li>
						</c:forEach>
						<li><a href="contact.htm">Contact </a></li>
					</ul>
					<script type="text/javascript"
						src="<c:url value='/resources/client/js/nav.js'/>"></script>
				</div>
			</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
				<div class="header-bottom-on">
					<p class="wel">
						Welcome visitor, you can <a href="login.htm"><u
							style="color: red">login</u></a> or <a href="client/register.htm"><u
							style="color: red">create an account</u></a>.

					</p>
					<div class="header-can">
						<ul class="social-in">
							<li><a href="#"><i> </i></a></li>
							<li><a href="https://www.facebook.com/"><i
									class="facebook"> </i></a></li>
							<li><a href="#"><i class="twitter"> </i></a></li>
							<li><a href="#"><i class="skype"> </i></a></li>
						</ul>
						<div class="down-top">
							<select class="in-drop">
								<option value="Dollars" class="in-of">Dollars</option>
								<option value="Euro" class="in-of">Euro</option>
								<option value="Yen" class="in-of">Yen</option>
							</select>
						</div>
						<div class="search">
							<form action="#" method="post">
								<input name="search" type="text" value="Search"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '';}" /> <input
									type="submit" value=""/>
							</form>
						</div>

						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- START of SLIDER -->
	<div id="slider">
		<div class="slides" id="slides">

			<div class="slide">
				<a href="client/single/47.htm"><img class="sli"
					src="${pageContext.request.contextPath}/resources/client/images/3.jpg"
					alt="Heart of the Ocean" /></a>
				<div class="caption">
					<a href="client/single/47.htm" class="purchase-btn">&nbsp;</a>
					<p>
						?? t?? ?????? ch??i - Hi????n ??ang ba??n v????i gia?? <span
							class="price">$100</span>
					</p>
				</div>
				<!-- end of .caption -->
			</div>
			<!-- end of .slide -->

			<div class="slide">
				<a href="client/single/48.htm"><img class="sli"
					src="resources/client/images/3a.jpg" alt="Tissot Powermatic" /></a>
				<div class="caption">
					<a href="client/single/48.htm" class="purchase-btn">&nbsp;</a>
					<p>
						Rubik - Hi????n ??ang ba??n v????i gia?? <span
							class="price">$700</span>
					</p>
				</div>
				<!-- end of .caption -->
			</div>
			<!-- end of .slide -->

			<div class="slide">
				<a href="client/single/50.htm"><img class="sli"
					src="resources/client/images/6c.jpg" alt="Moissanite" /></a>
				<div class="caption">
					<a href="client/single/6c.htm" class="purchase-btn">&nbsp;</a>
					<p>
						M?? hi??nh ??????ng v????t - Hi????n ??ang ba??n v????i gia??<span class="price">$400</span>
					</p>
				</div>
				<!-- end of .caption -->
			</div>
			<!-- end of .slide -->


		</div>
		<!-- end of .slides -->

		<div id="slider-pager"></div>
	</div>
	<!-- END of SLIDER -->
	<!---->
	<div class="container">
		<div class="content">

			<!-- START of FEATURED PRODUCTS -->
			<!--  -->

			<!-- END of FEATURED PRODUCTS -->



			<!--
			<div class="content-middle">
				<h3 class="future">BRANDS</h3>
				<div class="content-middle-in">
					<ul id="flexiselDemo1">
						<li><img src="${pageContext.request.contextPath}/resources/client/images/1.png" /></li>
						<li><img src="${pageContext.request.contextPath}/resources/client/images/2.jpg" /></li>
						<li><img src="${pageContext.request.contextPath}/resources/client/images/3.jpg" /></li>
						<li><img src="${pageContext.request.contextPath}/resources/client/images/4.jpg" /></li>

					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems : 4,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 3
									}
								}
							});

						});
					</script>

					<script
						src="<c:url value='/resources/client/js/jquery.flexisel.js'/>"></script>

				</div>
			</div>
			-->
			<!---->
			<div class="container">
				<div class="products">
					<h3 class=" products-in">List</h3>
					<br>
					<div class=" top-products">
						<c:forEach var="p" items="${listProduct}" varStatus="status">
							<div class="col-md-3 md-col">
								<div class="col-md">

									<a href="client/single/${p.id}.htm" class="compare-in"><img
										class="img" src="resources/client/images/${p.photo}" alt="" />

									</a>
									<div class="top-content">
										<h5>
											<a href="client/single/${p.id}.htm">${p.name}</a>
										</h5>
										<div class="white">
											<a href="client/cart/add/${p.id}.htm"
												class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Th??m
												v??o gi??? h??ng </a>
											<p class="dollar">
												<span class="in-dollar">$</span><span>${p.price}</span>
											</p>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
							<c:if test="${status.index==3}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>

							<c:if test="${status.index==7}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>


						</c:forEach>
					</div>
				</div>
			</div>

			<ul class="start">
				<li><a href="#"><i></i></a></li>

				<c:forEach var="i" begin="0" end="${totalItem}">
					<a class="btn btn-default"
						href="${pageContext.request.contextPath}/${i+1}.htm"><c:out
							value="${i+1}" /></a>
				</c:forEach>
				<li><a href="#"><i class="next"> </i></a></li>
			</ul>
		</div>
	</div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="col-md-4 footer-in">
					<h4>
						<i> </i>Uy t??nh
					</h4>
					<p>C???a h??ng c???a ch??ng t??i ho???t ?????ng ???????c h??n 10 n??m.Lu??n ?????t uy
						t??n,ni???m tin kh??ch h??ng l??n h??ng ?????u .</p>
				</div>
				<div class="col-md-4 footer-in">
					<h4>
						<i class="cross"> </i>Cam k???t
					</h4>
					<p>Ch??ng t??i cam k???t t???t c??? s???n ph???m trong c???a h??ng ?????u l?? s???n
						ph???m ch???t l?????ng,r???,?????p v?? ch???t l?????ng.</p>
				</div>
				<div class="col-md-4 footer-in">
					<h4>
						<i class="down"> </i>B???o h??nh
					</h4>
					<p>Qu?? kh??ch vui l??ng li??n h??? tr???c ti???p v???i Trung t??m B???o h??nh
						c???a Nh?? cung c???p/Nh?? Ph??n ph???i theo th??ng tin trong phi???u b???o
						h??nh. .</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!---->
		<div class="footer-middle">
			<div class="container">
				<div class="footer-middle-in">
					<h6>About us</h6>
					<p>We are the most prestigious company in the world. There is a
						full range of items.</p>
				</div>
				<div class="footer-middle-in">
					<h6>Information</h6>
					<ul>
						<li><a href="contact.htm">About Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>Customer Service</h6>
					<ul>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>My Account</h6>
					<ul>
						<li><a href="account.html">My Account</a></li>
						<li><a href="client/orderList.htm">Order History</a></li>
						<li><a href="client/cart.htm">Shopping Cart</a></li>
						<li><a href="#">Newsletter</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>Extras</h6>
					<ul>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Gift Vouchers</a></li>
						<li><a href="#">Affiliates</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<p class="footer-class">
			Copyright ?? 2020 Modern by HiepLoLo <a href="https://www.facebook.com/quan.tong.758"
				target="_blank"></a>
		</p>
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				 */

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>

	</div>









	<!-- jQuery -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery-1.6.2.min.js'/>"></script>

	<!-- jQuery Easing -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.easing.1.3.js'/>"></script>

	<!-- jQuery Selectbox Script to custom style form select boxes -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.selectBox.js'/>"></script>

	<!-- jQuery Cycle Plugin for home page slider-->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.cycle.all.js'/>"></script>

	<!-- jQuery Tabs and Accordion Script -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/tabs-accordian.js'/>"></script>

	<!-- jQuery Coud Zoom Plugin for Product Page Image Zoom Effect-->
	<script type="text/JavaScript"
		src="<c:url value='/resources/client/ver2/js/cloud-zoom.1.0.2.js'/>"></script>

	<!-- jQuery Animate Color Plugin for Hover Color Animation for Links-->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.animate-colors-min.js'/>"></script>

	<!-- jQuery Form and Validation Plugin for Contact form validation and ajax submition -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.form.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/jquery.validate.js'/>"></script>

	<!-- script file to add your own JavaScript -->
	<script type="text/javascript"
		src="<c:url value='/resources/client/ver2/js/script.js'/>"></script>




</body>
</html>