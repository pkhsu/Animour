<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html lang="zh-tw">
<!--Icon Tags start -->
<link rel="apple-touch-icon" sizes="57x57"
	href="/images/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/images/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/images/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/images/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/images/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/images/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/images/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/images/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/icon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/images/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/images/icon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/icon/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">

<!--Icon Tags end -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animal Shelter</title>
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<!-- Main Style -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<!-- Slicknav Css -->
<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

<!-- Responsive Style -->
<link rel="stylesheet" type="text/css" href="/css/responsive.css">
<!--Fonts-->
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">

<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
<script defer
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script src="/js/jquery-min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<style>
.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>
</head>
<body>
	<!-- Header area wrapper starts -->
	<header id="header-wrap">
		<jsp:include page="../navbar.jsp"></jsp:include>
	</header>
	<!-- Header-wrap Section End -->

	<!-- Page Header -->
	<div class="page-header-section">
		<div class="container">
			<div class="row">
				<div class="page-header-area">
					<div class="page-header-content">
						<h2>購物車清單</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Page Header End -->

	<section class="classic-blog-section section">
	  <c:if test="${sessionScope.cart != null}">
		<div class="container">
			<div class="row">
				<div class="form-group col-md-12">
				<form action="/cart/update" method="POST">
					<table class="table table-striped" style="box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)">
						<thead>
							<tr class="bg-info text-white">
								<td class="h6">品名</td>
								<td class="h6">價格</td>
								<td class="h6">數量
<!-- 									<input value="update" type="submit"> -->
								</td>
								<td class="h6">小計</td>
								<td class="h6">操作</td>
							</tr>
						</thead>
						<c:set var="total" value="0"></c:set>
						<c:forEach var="cartItem" items="${sessionScope.cart}" varStatus="i">
							<c:set var="total" value="${total + cartItem.product.price * cartItem.quantity}"></c:set>
							<tr class="h6">
								<td>${cartItem.product.name}</td>
								<td>${cartItem.product.price}</td>
								<td>
									<input type="number" value="${cartItem.quantity}" min="1" 
										max="${cartItem.product.stock}" name="quantity">
										<input type="submit" value="確定更改">
								</td>
								<td>${cartItem.product.price * cartItem.quantity}</td>
								<c:if test="${sessionScope.cart != null && sessionScope.cart.size() gt 0}">
								  <td><a href="/cart/delete/${i.index}"><span class="text-danger">刪除</span></a></td>
								</c:if>
							</tr>
						</c:forEach>
						<tr class="h6">
							<td class="thick-line" colspan="4"><span>總價</span></td>
							<td class="thick-line">${total}元</td>
						</tr>
					</table>
				</form>
				</div>
			</div>
			<div class="container">
			  <div class="row justify-content-md-center">
			    <div class="col-md-auto">
			        <a href="/product/index" class='btn btn-success'> <span
							class='glyphicon-info-sigh glyphicon'></span>繼續購物</a>&nbsp;&nbsp;&nbsp;
					<a href="/cart/removeShoppingCart" class='btn btn-primary'> <span
									class='glyphicon-info-sigh glyphicon'></span>清空購物車</a>&nbsp;&nbsp;&nbsp;			
					<sec:authorize access="isAnonymous()">
					<a href="/cart/confirmBuy2" class='btn btn-warning btn-large'> <span
									class='glyphicon-shopping-cart glyphicon'></span>確定購買</a>
					</sec:authorize>
					<sec:authorize access="hasRole('Member')">
					<a href="/cart/confirmBuy" class='btn btn-warning btn-large'> <span
									class='glyphicon-shopping-cart glyphicon'></span>確定購買</a>
					</sec:authorize>
			    </div>
			  </div>
			</div>
		</div>
	  </c:if>
	</section>

	
		<!-- Footer Section -->
		<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
		</footer>
		<!-- Footer Section End-->
	
		<!-- Go To Top Link -->
		<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
		</a>
	
		<!-- JavaScript & jQuery Plugins -->
		<script src="/js/jquery-min.js"></script>
		<script src="/js/popper.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.mixitup.js"></script>
		<script src="/js/smoothscroll.js"></script>
		<script src="/js/wow.js"></script>
		<script src="/js/owl.carousel.js"></script>
		<script src="/js/waypoints.min.js"></script>
		<script src="/js/jquery.counterup.min.js"></script>
		<script src="/js/jquery.slicknav.js"></script>
		<script src="/js/jquery.appear.js"></script>
		<script src="/js/form-validator.min.js"></script>
		<script src="/js/contact-form-script.min.js"></script>
		<script src="/js/main.js"></script>
	</body>
	<script>
		$(document).ready(function() {
			var o1 = {"background":"cornsilk", "color":"red", "padding":"10px"};
			var o2 = {"background":"white", "color":"green", "padding":"10px"};
			$("tr").css(o2).mouseover(over).mouseout(out);
			
			function over(){
				$(this).css(o1);
			}
			function out(){
				$(this).css(o2);
			}
		})
	</script>
</html>