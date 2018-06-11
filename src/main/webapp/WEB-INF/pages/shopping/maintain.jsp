<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="zh-tw">

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

<script defer
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script src="/js/jquery-min.js"></script>
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
						<h2>商品資料管理</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- End of call to action section -->

	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="pagination">
						<li class="page-item active"><p class="page-link animated bounceInRight">您的上架商品資料共有
								${memberProductQuantity} 筆</p></li>
					</ul>
					<div class="row">
						<form:form
							action="${pageContent.request.contextPath}/product/insert" method="POST" modelAttribute="product" >
							<table class="table" style="box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);">
							<c:choose>
								<c:when test="${memberProducts.size() eq 0}">
									<img src="/images/shopping/product/stop.png" style="margin-left:64%" width="500px" alt="商品列表">
								</c:when>
								<c:otherwise>
									<thead>
									<tr class="bg-info text-white">
										<th class="h6">圖片</th>
										<th class="h6">產品名稱</th>
										<th class="h6">價格</th>
										<th class="h6">庫存</th>
										<th class="h6">上架日期</th>
										<th class="h6">保存期限</th>
										<th class="h6">產品類別</th>
										<th class="h6">編輯</th>
										<th class="h6">刪除</th>
									</tr>
								</thead>
								<c:forEach var="product" items="${memberProducts}">
									<tr>
									<c:choose>
										<c:when test="${memberProducts.size() eq 0}">
											<td><img src="/images/shopping/product/stop.png" width="100px" alt="商品列表"></td>
										</c:when>
										<c:otherwise>
											<td><img src="${product.images}" width="100px" alt="商品列表"></td>
											<td class="align-middle"><span class="text-primary"><span class="h6">${product.name}</span></span></td>
											<td class="align-middle"><span class="text-success"><span class="h6">${product.price}</span></span></td>
											<td class="align-middle"><span class="text-success"><span class="h6">${product.stock}</span></span></td>
											<td class="align-middle"><span class="text-success"><span class="h6">${product.shelvesDate}</span></span></td>
											<td class="align-middle"><span class="text-success"><span class="h6">${product.expire}</span></span></td>
											<td class="align-middle"><span class="text-danger"><span class="h6">${product.classify.name}</span></span></td>
											<td class="align-middle"><a
												href="<spring:url value='/product/${product.id}' />"
												id="buttonUpdate" type="button" class="btn btn-info"><i
													class="fas fa-edit"></i></a></td>
											<td class="align-middle"><a
												href="<spring:url value='/delete/${product.id}' />"
												id="buttonDelete" type="button" class="btn btn-danger"><i
													class="fas fa-trash-alt"></i></a></td>
										</c:otherwise>
									</c:choose>
									</tr>
								</c:forEach>
								</c:otherwise>
							</c:choose>
							</table>
						</form:form>
					</div>
				</div>
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
			$("tr").css(o2).mouseover(over).mouseout(out);
			
			function over(){
				$(this).css(o1);
			}
			function out(){
				$(this).css(o2);
			}
		})
	</script>

</body>

</html>
