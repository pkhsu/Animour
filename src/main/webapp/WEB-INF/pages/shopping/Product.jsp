<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">

<head>
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
<title>Product Detail</title>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@3.5.2/animate.min.css">

<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
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
						<h2>商品詳情</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Page Content Start 重複的內容開始 -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-5 about2-intro-image">
					<img class="card-img-top" src="${product.images}" width="100px" alt="${product.name}" style="box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)">
				</div>
				<div class="col-md-7">
					<p class="h3"><span class="text-danger">${product.name}</span></p>
					<div id="default-tab" class="mt-10">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active" href="#productDetail"
								aria-controls="productDetail" role="tab" data-toggle="tab">商品介紹</a></li>
							<li class="nav-item"><a class="nav-link" href="#productSepc"
								aria-controls="productSepc" role="tab" data-toggle="tab">商品規格</a></li>
							<li class="nav-item"><a class="nav-link" href="#precattention"
								aria-controls="precattention" role="tab" data-toggle="tab">商品特色</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="productDetail">
								<p class="h5" class="text-success" style="padding-bottom:15px"><span class="text-success">商品名稱：${product.name}</span></p>
<%-- 								<p class="card-text" style="padding: 0px">編號：${product.id}</p> --%>
								<p class="h5" style="padding-bottom:15px">上架日期：<span class="text-info">${product.shelvesDate}</span></p>
								<p class="h5" style="padding-bottom:15px">保存期限：<span class="text-info">${product.expire}</span></p>
								<p class="h5" style="padding-bottom:15px">種類：<span class="text-info">${product.classify.name}</span></p>
								<p class="h5" style="padding-bottom:15px">庫存：<span class="text-info">${product.stock}</span></p>
								<p class="h5" style="padding-bottom:15px">網路價：<span class="text-danger h4"><strong>${product.price}</strong></span></p>
							</div>
							<div role="tabpanel" class="tab-pane" id="productSepc">
								<p class="h6"><span class="text-info">${product.description}</span></p>
							</div>
							<div role="tabpanel" class="tab-pane" id="precattention">
								<div role="tabpanel" class="tab-pane" id="precattention">
									<p class="h6"><span class="text-info">${product.notice}</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
					<div class="container">
					  <div class="row justify-content-md-center">
					    <div class="col col-lg-2"></div>
					    <div class="col-md-auto">
					      <a href="<spring:url value='/product/index' />" class='btn btn-primary'> <span
							class='glyphicon-info-sigh glyphicon'>返回</span>
						  </a>
						  <a href="/cart/buy/${product.id}" class='btn btn-success btn-large'> <span
									class='glyphicon-shopping-cart glyphicon'>加入購物車</span>
						  </a>
						  <c:if test="${sessionScope.cart != null && sessionScope.cart.size() gt 0}">
						  <a id="pulse" href="/cart/index" class='btn btn-warning btn-large'> <span
									class='glyphicon-shopping-cart glyphicon'>查看購物車</span>
						  </a>
						  </c:if>
					    </div>
					  </div>
					</div>
			</div>
		</div>
	</section>

	<!-- 重複的內容結束 -->

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
	<script>
		$(document).ready(function() {
			$("#pulse").mouseover(over).mouseout(out);
			
			function over(){
				$(this).removeClass("btn btn-success btn-large").addClass("btn btn-success btn-large animated pulse");
			}
			function out(){
				$(this).removeClass("btn btn-success btn-large animated pulse").addClass("btn btn-success btn-large");
			}
			
			$('.card-img-top').hover(function(){
				$(this).fadeTo(500, 0.5);
			},function(){
				$(this).fadeTo(500, 1);
			})
			
		})
	</script>
</body>

</html>
