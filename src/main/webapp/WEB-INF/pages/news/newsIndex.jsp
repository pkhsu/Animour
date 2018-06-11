<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
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
<title>Animour 最新消息</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Card Body starts -->
<style>
.card-body{
 width:332px;
 height:160px;
    overflow:hidden;
    text-overflow:ellipsis;
}
.card-img-top{
height:182px;}
</style>
<!-- Card Body ends -->
</head>
<body>
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
		<!-- Page Header -->
      <div class="page-header-section">
        <div class="container">
          <div class="row">
            <div class="page-header-area">
              <div class="page-header-content">
                <h2 style="font-family:微軟正黑體">最新消息</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
	</header>
      <!-- Page Header Ends -->
	<!-- Container starts -->
	<div class="container">
	<!-- Carousel Area starts -->
		<div class="container" style="padding-top:20px">
		 <div id="myCarousel" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	          <li data-target="#myCarousel" data-slide-to="1"></li>
	          <li data-target="#myCarousel" data-slide-to="2"></li>
	        </ol>
	        <div class="carousel-inner">
	          <div class="carousel-item active">
	            <img class="d-block w-60" src="https://i.imgur.com/pFTMngk.jpg" alt="">
	            <div class="container">
	            </div>
	          </div>
	          <div class="carousel-item">
	            <img class="d-block w-60" src="https://i.imgur.com/XcN5XJk.jpg" alt="">
	            <div class="container">
	            </div>
	          </div>
	          <div class="carousel-item">
	            <img class="d-block w-60" src="https://i.imgur.com/nnWBLKl.jpg" alt="">
	            <div class="container">
	            </div>
	          </div>
	        </div>
	        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
	          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	          <span class="sr-only">Previous</span>
	        </a>
	        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
	          <span class="carousel-control-next-icon" aria-hidden="true"></span>
	          <span class="sr-only">Next</span>
	        </a>
	      </div>
	      </div>	
	<!-- Carousel Area ends -->					
	<h1 style="font-family:微軟正黑體; text-align:center" class="animated bounceIn">活動一覽</h1>						
		<div class="row">
			<c:forEach var="allEvents" items="${allEvents}">
				<div class="col-md-4">
					<div class="card mb-4 box-shadow">
						<a href="/findOneEvent?id=${allEvents.id}">
							<img class="card-img-top" src="${allEvents.images}" width="80px" alt="" >
						</a>
						<div class="card-body" style="margin-bottom: 5px">
						<h5 class="card-title"><a href="/findOneEvent?id=${allEvents.id}" style="font-family:微軟正黑體">${allEvents.subject}</a></h5>
							<p class="sup-description" style="font-family:微軟正黑體">${allEvents.content}</p>
								<a href="/findOneEvent?id=${allEvents.id}"><button type="button" class="btn btn-common">詳情</button></a>
                 				<a href="/enrollOneNews?id=${allEvents.id}"><button type="button" class="btn btn-common">報名</button></a>	
                 					<sec:authorize access="hasRole('Admin')">
                 					<div style="margin-top:10px";>
			                    	    <a href="/news/insertNews"><button type="button" class="btn btn-common">新增</button></a>
			                            <a href="/news/manage"><button type="button" class="btn btn-common">修改</button></a>						
                 					</div>
			                        </sec:authorize>					
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
				<!-- Container Ends -->
	<section>
		

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
</html>