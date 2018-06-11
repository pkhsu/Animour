<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
						<h2>商品上架</h2>
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
<!-- 				<div class="form-group col-md-4"> -->
<!-- 					<img class="card-img-top" -->
<%-- 						src="${product.images}" alt="${product.name}"> --%>
<!-- 				</div> -->
			<div class="form-group col-md-12 animated zoomIn">
				<form:form method="POST" modelAttribute="product" enctype="multipart/form-data">
					<form:input id="images" path="images" type="hidden"/>
					<form:input path="member" type="hidden"/>
					<div class="form-group">
						<h2 class="widget-title">商品名稱</h2>
						<form:input path="name" type="text" class="form-control" autofocus="true" required="required"
							placeholder="商品名稱" />
					</div>

					<div class="form-row">
						<div class="form-group col-md-4">
							<h2 class="widget-title">商品價格</h2>
							<form:input path="price" type="number" min="0" class="form-control" required="required"
								placeholder="商品價格" />
						</div>

						<div class="form-group col-md-4">
							<h2 class="widget-title">庫存</h2>
							<form:input path="stock" type="number" min="0" class="form-control" required="required"
								placeholder="庫存" />
						</div>

						<div class="form-group col-md-4">
							<h2 class="widget-title">類別</h2>
							<form:select path="classify" items="${Classifies}"
								itemLabel="name" itemValue="id" class="form-control" />
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-4">
							<h2 class="widget-title">製造日期</h2>
							<form:input path="makeDate" type="date" class="form-control" required="required"
								placeholder="製造日期" />
						</div>
						<div class="form-group col-md-4">
							<h2 class="widget-title">保存期限(天)</h2>
							<form:input path="expire" type="number" min="0" class="form-control" required="required"
								placeholder="保存期限" />
						</div>
<!-- 						<div class="form-group col-md-4"> -->
<!-- 							<h2 class="widget-title">上架日期</h2> -->
<%-- 							<form:input path="shelvesDate" type="date" class="form-control" required="required" --%>
<%-- 								placeholder="上架日期" /> --%>
<!-- 						</div> -->
						<div class="form-group col-md-6">
							<h2 class="widget-title">商品規格</h2>
							<form:textarea path="description" type="text" class="form-control" rows="5" required="required"
	 							placeholder="商品規格" />
						</div>
						<div class="form-group col-md-6">
							<h2 class="widget-title">商品特色</h2>
							<form:textarea path="notice" type="text" class="form-control" rows="5" required="required"
	 							placeholder="商品特色" />
						</div>
<!-- 						<div class="form-group col-md-6"> -->
<!-- 							<h2 class="widget-title">圖片上傳</h2> -->
<%-- 							<form:input path="photo" type="file" class="form-control" --%>
<%-- 	 							placeholder="圖片上傳" /> --%>
<!-- 						</div> -->
					</div>
						<div class="form-row">
							<form id="imgur">
								<h2 class="widget-title"><span>圖片</span></h2>
								<input type="file" class="imgur" multiple="multiple" accept="image/*" data-max-size="5000" />
							</form>
							<div class="container">
							  <div class="row justify-content-md-center">
							    <div class="col-md-auto">
							      <input id="btn1" type="submit" class="btn btn-primary" value="確定商品上架" >
						        </div>
						 	 </div>
							</div>
						</div>
						
						
				</form:form>
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
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<script src="http://malsup.github.com/jquery.form.js"></script>
	<script>
	$(document).ready(function (){
						
		$('input[type=file]').on("change", function () {
			$('#btn1').prop("disabled", "disabled");
			var $files = $(this).get(0).files;

			if ($files.length) {

				// Reject big files
				if ($files[0].size > $(this).data("max-size") * 1024) {
					console.log("Please select a smaller file");
					return false;
				}

				// Begin file upload
				console.log("Uploading file to Imgur..");

				// Replace ctrlq with your own API key
				var apiUrl = 'https://api.imgur.com/3/image';
				var apiKey = '9ef7e0868394de9';

				var settings = {
					// async: false,
					crossDomain: true,
					processData: false,
					contentType: false,
					type: 'POST',
					url: apiUrl,
					headers: {
						Authorization: 'Client-ID ' + apiKey,
						Accept: 'application/json'
					},
					mimeType: 'multipart/form-data'
				};

				var formData = new FormData();
				formData.append("image", $files[0]);

				settings.data = formData;
				
				$.ajax(settings).done(function (response) {
					var jsonObj = JSON.parse(response)
					console.log(jsonObj.data.link);
					$("#images").val(jsonObj.data.link);
					$('#btn1').removeAttr("disabled");
				});
			}
		});
	});
	</script>
</body>

</html>
