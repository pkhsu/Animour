<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
						<h2>寵物市集</h2>
					</div>
				</div>
 			</div>
		</div>
	</div>
<!-- 	<div class="container"> -->
<!-- 	<section class="featured-wrapper" style='padding-top:50px'> -->
<!-- 	              <div id="carousel-image-slider" class="owl-carousel"> -->
<!-- 	                <div class="item"> -->
<!-- 	                  <img src="/images/shopping/product/107.jpg" alt=""> -->
<!-- 	                </div> -->
<!-- 	                <div class="item"> -->
<!-- 	                  <img src="/images/shopping/product/108.jpg" alt=""> -->
<!-- 	                </div> -->
<!-- 	                <div class="item"> -->
<!-- 	                  <img src="/images/shopping/product/109.jpg" alt=""> -->
<!-- 	                </div> -->
<!-- 	              </div> -->
<!-- 	            </section> -->
<!-- 	 </div> -->
	<!-- Page Header End -->

	<!-- End of call to action section -->

	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
	            <!-- Featured Content -->
	            
			<div class="row">
<!-- 				Blog Sidebar Section -->
				<div class="col-md-3">
					<div class="sidebar-area">
<!-- 						Search Bar -->
						<aside class="widget search-bar wow" data-wow-delay="0.3s">
							<form name="selectByNameKeyWordForm" action="/selectByNameKeyWord" method="GET">
								<input name="name" type="text" placeholder="關鍵字搜尋" class="form-control" required="required">
								<button type="submit"><i class="fa fa-search" style="color:#9C3"></i></button>
							</form>
						</aside>

						<!--Start of Classify -->
						
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.1s">
							<h2 class="widget-title">商品分類</h2>
								<ul class="category-menu">
									<c:forEach var="classify" items="${classifies}">
										<li class="page-item">
											<a class="text-info" href='<spring:url value="/products/${classify.id}"></spring:url>'><span class="font-weight-bold">${classify.name}</span></a>
										</li>
									</c:forEach>
								</ul>
						</aside>
						<!--End of Classify -->
						
						<!--Start of Price -->
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">價格低於</h2>
							<form name="selectPriceForm" action="/selectPrice" method="GET">
								<input type="number" name="price" min="0" max="10000" step="100" value="${param.price}" required="required" placeholder="請輸入價格" class="col-md-6"><br><br>
								<input id="shake" type="submit" class="btn btn-common" value="查尋">
							</form>
						</aside>
						<!--End of Price -->
						
						
					</div>
				</div>
<!-- 				End -->
				
				<c:if test="${page == null || page.numberOfElements == 0}">
					沒有任何商品資料
				</c:if>
				<c:if test="${page != null || page.numberOfElements > 0}">
				<div class="col-md-9">
				<ul class="pagination"><li class="page-item active"><p class="page-link animated lightSpeedIn">商品資料共有 ${page.totalElements} 筆</p></li></ul>
					<div class="row" style="box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)">
						<c:forEach var="product" items="${page.content}">
							<div class="col-md-4">
								<div class="card mb-3 box-shadow">
<!-- 									<img class="card-img-top" src="/images/shopping/product/pd1.jpg" -->
									<img class="card-img-top" src="${product.images}"
										width="100px" alt="商品列表">
									<div class="card-body fadeIn" style="margin-bottom: 5px">
											<p class="text-success">商品名稱：${product.name}</p>
											<p class="text-primary">價格：${product.price}<br>庫存：${product.stock}</p>
<%-- 											<p class="text-primary">製造日期：${product.makeDate}<br>保存期限：${product.expire}</p> --%>
											<p class="text-primary">上架日期：${product.shelvesDate}<br>商品類別：${product.classify.name}</p>
									</div>
									<div class="card">
										<a href="<spring:url value='/selectOneProduct?id=${product.id}'/>"
											class="btn btn-common">商品詳情
										</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
						<div class="container" style="padding-top:20px">
						  <div class="row justify-content-md-center">
						    <div class="col-md-auto">
						      <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
								<nav aria-label="..." class="">
									<ul class="pagination">
									<c:choose>
										<c:when test="${page.number + 1 - 1 le 0}">
											<li class="page-item disabled"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 - 1}" 
												tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁 
											<span class="sr-only">Previous</span></a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 - 1}" 
												tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁 
											<span class="sr-only">Previous</span></a></li>
										</c:otherwise>
										</c:choose>
										<li class="page-item active"><a class="page-link" href="#">第 ${page.number + 1}/${page.totalPages} 頁
												<span class="sr-only">(current)</span></a></li>
										<c:choose>
											<c:when test="${page.number+1 ge page.totalPages}">
												<li class="page-item disabled"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 + 1}"
													aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i>
												<span class="sr-only">Next</span></a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 + 1}"
													aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i>
												<span class="sr-only">Next</span></a></li>
											</c:otherwise>
										</c:choose>
									</ul>
								</nav>
							  </div>
						    </div>
						  </div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
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
	<script>
		$(document).ready(function() {
			var o1 = {"background":"cornsilk", "color":"red", "padding":"10px"};
			var o2 = {"background":"white", "color":"green", "padding":"10px"};
			$("#shake").mouseover(over).mouseout(out);
			
			function over(){
				$(this).removeClass("btn btn-common").addClass("btn btn-common animated rubberBand");
			}
			function out(){
				$(this).removeClass("btn btn-common animated rubberBand").addClass("btn btn-common");
			}
			
			$('.col-md-4').hover(function(){
				$(this).fadeTo(500, 0.6);
			},function(){
				$(this).fadeTo(500, 1);
			})
		})
	</script>
</body>

</html>
