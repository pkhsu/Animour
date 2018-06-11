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
　document.write("今天日期是 " + Today.getFullYear()+ " 年 " + (Today.getMonth()+1) + " 月 " + Today.getDate() + " 日");
</script>
<style>
.h1{
font-family:微軟正黑體
}
.p{
font-family:微軟正黑體
}
</style>
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
<title>Animour 更新活動貼文</title>
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
<link rel="stylesheet" type="text/css" href="css/newsstyle.css">


<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
						<h2 style="font-family:微軟正黑體">更新活動貼文</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Page Content Start 重複的內容開始 -->
	<div class="container" style="padding:20px 20px 20px 20px; margin:auto">
			<div class="jumbotron" style="padding-top: 15px; padding-bottom: 15px;	border-radius:15px; margin: auto">
			
			  <h1 class="display-4" style="font-family:微軟正黑體; padding:10px 5px 15px 20px">更新活動成功！</h1>
	<div class="container" style="padding-top: 15px; padding-bottom: 15px">
		<div class="row">
			<!-- Jumbotron starts-->
			  <div style="float:left" >
			    <img src="https://png.icons8.com/cotton/2x/checkmark.png"/>
			  </div>
				
			  <div class="insert" style="float:right; valign:center">
				  <p class="lead">活動編號：${news.id}</p>
				  <p class="lead">活動名稱：${news.subject}</p>
				  <p class="lead">活動日期：${news.eventDate}</p>
				  <p class="lead">活動地點：${news.address}</p>
				  <p class="lead">活動簡介：${news.content}</p>		
				  <p class="lead" style="display:inline-block">
			    <a class="btn btn-primary btn-lg" href="/" role="button" style="border-radius:5px; margin:20px 20px 20px 0px">回首頁</a>
			  </p>
			  <p class="lead" style="display:inline-block;">
			    <a class="btn btn-primary btn-lg" href="/news/insertNews" role="button" style="border-radius:5px; margin:20px 20px 20px 20px">繼續新增貼文</a>
			  </p>	  
			  </div>
			  <hr>
			</div>
			<!-- Jumbotron ends -->
	</div>
	</div>
	</div>
	
	

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
