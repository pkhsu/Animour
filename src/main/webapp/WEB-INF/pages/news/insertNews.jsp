<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<head>
<script language="javascript">
　var Today=new Date();
// 　document.write("今天日期是 " + Today.getFullYear()+ " 年 " + (Today.getMonth()+1) + " 月 " + Today.getDate() + " 日");
</script>
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
<title>Animour</title>
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

</head>
<body>

	<!-- Header area wrapper starts -->
	<header id="header-wrap">
<%-- 		<jsp:include page="../navbar.jsp"></jsp:include> --%>
<!-- adminNavbar Starts -->
		<jsp:include page="../admin/adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
	</header>
	<!-- Header-wrap Section End -->

	<!-- Page Header -->
<!-- 	<div class="page-header-section"> -->
		<div class="container">
<!-- 			<div class="row"> -->
<!-- 				<div class="page-header-area"> -->
<!-- 					<div class="page-header-content"> -->
						<h2 style="font-family:微軟正黑體">新增活動貼文</h2>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
<!-- 	</div> -->
	<!-- Page Header End -->

	<!-- Page Content Start 重複的內容開始 -->
		<div class="container">
			
			
<!-- Insert News starts -->
<div class="form-group col-md-12" style="padding-top:20px">
	<form:form method="POST" modelAttribute="news" enctype="multipart/form-data" id="insertNews" name="insertNews" action="/news/insertNews">
		<form:input id="images" path="images" type="hidden"/>
		<div class="form-group">
			<h2 class="widget-title" style="font-family:微軟正黑體">活動名稱</h2>
			<form:input id="subject" name="subject" path="subject" type="text" class="form-control" autofocus="true" required="required"
				placeholder="請輸入活動名稱" />
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">活動地點</h2>
				<form:input id="address" name="address" path="address" type="text" min="0" class="form-control" required="required"
					placeholder="請輸入活動地點" />
			</div>
			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">張貼人</h2>
				<form:input id="createUser" name="createUser" path="createUser" type="text" min="0" class="form-control" required="required"
					placeholder="${news.createUser}"/>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">活動日期</h2>
				<form:input id="eventDate" name="eventDate" path="eventDate" type="date" class="form-control" required="required"
					placeholder="活動日期" />
			</div>
			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">活動時間</h2>
				<form:input id="eventTime" name="eventTime" path="eventTime" type="time" class="form-control" required="required"
							placeholder="活動時間" />
 			</div>
 			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">結束公告日期</h2>
				<form:input id="publishExpire" name="publishExpire" path="publishExpire" type="date" class="form-control" required="required"
					placeholder="結束公告日期" />
			</div>
			<div class="form-group col-md-6">
				<h2 class="widget-title" style="font-family:微軟正黑體">發布日期</h2>
				<form:input id="publishDate" name="publishDate" path="publishDate" type="date" class="form-control" required="required"
					placeholder="${news.publishDate}" />
			</div>
<!-- 			<div class="form-group col-md-3"> -->
<!-- 				<h2 class="widget-title" style="font-family:微軟正黑體">發布時間</h2> -->
<%-- 				<form:input id="createTime" name="createTime" path="createTime" type="time" class="form-control" required="required" --%>
<%-- 					placeholder="發布時間" /> --%>
<!-- 			</div> -->
			<div class="form-group col-lg-12">
				<h2 class="widget-title" style="font-family:微軟正黑體">活動簡介</h2>
				<form:textarea id="content" name="content" path="content" type="text" class="form-control" rows="5" required="required"
	 				placeholder="請輸入活動簡介" />
			</div>
		</div>
			<div class="form-row">
				<form id="imgur">
					<h2 class="widget-title"><span style="font-family:微軟正黑體">圖片</span></h2>
					<input id="imgur" name="imgur" path="imgur" type="file" class="imgur" multiple="multiple" accept="image/*" data-max-size="5000" />
				</form>
				<div class="container">
						<div class="row justify-content-md-center">
							 <div class="col-md-auto">
							   <input id="btn1" type="submit" class="btn btn-primary" value="張貼活動" >
						     </div>
						</div>
				</div>
			</div>
			<!-- Insert News ends -->
						
						
				</form:form>
				</div>
			</div>

	<!-- 重複的內容結束 -->

	<!-- Footer Section -->
	<footer>
<%-- 	<jsp:include page="../footer.jsp"></jsp:include> --%>
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
	
	<!-- upload Photos starts-->
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
	<!-- upload Photos ends-->
</body>

</html>
