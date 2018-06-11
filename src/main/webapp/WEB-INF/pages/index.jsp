<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

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
<!-- <link rel="stylesheet" media="screen" -->
<!-- 	href="/fonts/simple-line-icons.css"> -->

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
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
		<!-- Navbar Starts -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<!-- Navbar ends -->
		</header>
	<!-- Header-wrap Section End -->
	<!--  Carousel Area starts -->
		<section id="service-block-main" class="section">
		 <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin:auto;width:80%">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>          
		  <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="https://i.imgur.com/H4mSZKo.jpg" alt="寵物家族大集合">						
            <div class="container">
<!--               <div class="carousel-caption text-left"> -->
<!--                 <h1>Example headline.</h1> -->
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
<!--                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
<!--               </div> -->
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://i.imgur.com/MXFdjAF.jpg" alt="支持領養不棄養">						
            <div class="container">
<!--               <div class="carousel-caption"> -->
<!--                 <h1>Another example headline.</h1> -->
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
<!--                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p> -->
<!--               </div> -->
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://i.imgur.com/6T10gMm.png" alt="夏季寵物盛會">
            <div class="container">
<!--               <div class="carousel-caption text-right"> -->
<!--                 <h1>One more for good measure.</h1> -->
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
<!--                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p> -->
<!--               </div> -->
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://i.imgur.com/SSyz021.jpg" alt="第一屆Doglympics狗林匹克運動會">
            <div class="container">
<!--               <div class="carousel-caption text-right"> -->
<!--                 <h1>One more for good measure.</h1> -->
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
<!--                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p> -->
<!--               </div> -->
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
      </section>
		
		<!--  Carousel Area ends-->
		<!-- 中途之家頁面 -->
	<section id="service-block-main" class="section">
		<!-- 重複的內容開始 -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				中途專區</h1>
			<div class="row">
				<c:forEach var="animal" items="${animals}">

					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top"
								src="/showAnimalImage?fileName=${animal.fileName}" width="100px"
								alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">狀態：${animal.status}</p>
								<p class="card-text" style="padding: 0px">編號：${animal.id}
									綽號：${animal.name} 種類：${animal.specie} 顏色：${animal.color}
									發現日期：${animal.found} 縣市：${animal.city.name} 鄉鎮市區：${animal.district}
								</p>
								<div class="d-flex justify-content-between align-items-center"
									style="max-height: 100px">
									<div class="btn-group" style="margin: 0px">
										<button type="button"
											onclick="location.href='/halfway/detail?id=${animal.id}';"
											class="btn btn-common btn-sm mt-10">詳情</button>
									</div>
									<small class="text-muted">${animal.upload}</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- 重複的內容結束 -->
	</section>
	<!-- 中途之家結束 -->
	<!-- 最新消息開始 -->
	<section>
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				最新活動專區</h1>
			<div class="row">
				<c:forEach var="sixNews" items="${sixNews}">
					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<a href="/findOneEvent?id=${sixNews.id}"> <img class="card-img-top"
								src="${sixNews.images}" width="80px" alt=""></a>
							<div class="card-body" style="margin-bottom: 5px">
							<h5 class="blog-post-title" style="font-family:微軟正黑體"><a href="/findOneEvent?id=${sixNews.id}">${sixNews.subject}</a></h5>
							<p style="font-family:微軟正黑體">精彩活動熱烈報名中，請點詳情查看！</p>
							<a href="/findOneEvent?id=${sixNews.id}"><button type="button" class="btn btn-common">詳情</button></a>
                 			<a href="/enrollOneNews?id=${sixNews.id}"><button type="button" class="btn btn-common">報名</button></a>	
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- Service-Block-000 Item Ends -->
		</div>
		<!-- Container Ends -->
	</section>
	<!-- 最新消息結束 -->
	<!-- 寵物市集頁面 -->
	<!-- Portfolio Section -->
	<section id="portfolios" class="section">
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick" data-wow-delay=".3s">
				寵物市集</h1>
		</div>
		<section id="service-block-main" class="section">
			<!-- 重複的內容開始 -->
			<div class="container">
				<div class="row">
					<c:forEach var="product" items="${product}">
						<div class="col-md-3">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top" src="${product.images}" width="100px" alt="">
								<div class="card-body" style="margin-bottom: 5px">
									<p class="card-text" style="padding: 0px">${product.name}</p>
										
										<div class="container">
										  <div class="row justify-content-md-center">
										    <div class="col-md-auto">
										      <a href="/selectOneProduct?id=${product.id}"><span class="btn btn-common">商品詳情</span></a>
										    </div>
										  </div>
										</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- 重複的內容結束 -->
	</section>
	<!-- 寵物市集結束 -->
	<!-- 寵物沙龍開始 -->
		<!-- 重複的內容開始 -->
		<!-- <div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				最新空房</h1>
			<div class="row">
				<c:forEach var="avar" items="${Salon}">

					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top" src="/images/adopt/cats/英短毛專題用圖.jpeg"
								width="100px" alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">房號：${avar.id}
									房型：${avar.type}</p>
								<div class="d-flex justify-content-between align-items-center"
									style="max-height: 100px">
									<div class="btn-group" style="margin: 0px">
										<button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
										<button type="button" class="btn btn-common btn-sm mt-10">認養</button>
									</div>
									<small class="text-muted">${avar.checkIn}</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div> -->
		<!-- 重複的內容結束 -->
	</section>
	<!-- 寵物沙龍結束 -->
	<!-- 醫院開始 -->
<!-- 	<section id="service-block-main" class="section"> -->
		<!-- Container Starts -->
<!-- 		<div class="container"> -->
<!-- 		</div> -->
		<!-- Container Ends -->
<!-- 	</section> -->
	<!-- 醫院結束 -->
	<!-- Blog Section -->
	<section id="blog" class="section">
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick">部落格分享</h1>
			<p class="section-subcontent">
				與我們分享你的生活點滴
			</p>
			<!-- Row Starts -->
			<div class="row">
				<c:forEach var="article" items="${articles}">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<!-- Blog Item Starts -->
						<div class="blog-item-wrapper" style="height: 405px;">
							<div class="blog-item-img">
								<a href="/forum/findOne?id=${article.id}"> <img style="height:220px;" src="${article.images}"
									alt="">
								</a>
							</div>
							<div class="blog-item-text">

								<h3 class="small-title" style="height: 60px;">

									<a href="/forum/findOne?id=${article.id}"><c:out value="${article.subject}"/></a>

								</h3>

								<p
									style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">
									</p>
								<div class="blog-one-footer">
									<a href="/forum/findOne?id=${article.id}">詳細內容</a> <a
										href="/forum/findOne?id=${article.id}"> <i class="icon-heart"></i> ${article.thumbsQuantity} 讚
									</a> <a href="/forum/findOne?id=${article.id}#comment"> <i
										class="icon-bubbles"></i> ${article.commentLength} 則留言
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- Blog Item Wrapper Ends-->
			</div>
		</div>
		<!-- Container Ends -->
	</section>
	<!-- blog Section End -->
	<!-- Pricing Table Section -->
	<!--<section id="pricing" class="section">
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick" data-wow-delay=".2s">
				Our Pricing</h1>
			<p class="section-subcontent wow fadeInUpQuick" data-wow-delay=".3s">
				At vero eos et accusamus et iusto odio dignissimos ducimus qui <br>
				blanditiis praesentium
			</p>
			<div class="row">
				<div class="col-md-4">
					<div class="pricing-table pricing-table-x">
						<div class="table-header">
							<h3>贊助我們</h3>
						</div>
						<div class="plan">
							<h3 class="price">NT49</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i> 100點紅利積點
							</p>
							<p>
								<i class="fa fa-check"></i> 最新商品8折優惠
							</p>
							<div class="button-area">
								<a href="#" class="btn btn-common"> 贊助 </a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="pricing-table pricing-table-x">
						<div class="table-header highlight">
							<h3>贊助我們</h3>
						</div>
						<div class="plan">
							<h3 class="price">NT259</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i>每月新增上限50隻
							</p>
							<p>
								<i class="fa fa-check"></i>300點紅利積點
							</p>
							<div class="button-area">
								<a href="#" class="btn btn-common">贊助</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 wow">
					<div class="pricing-table pricing-table-x">
						<div class="table-header">
							<h3>成為VIP</h3>
						</div>
						<div class="plan">
							<h3 class="price">每月NT199</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i> 不限次數使用本站功能
							</p>
							<p>
								<i class="fa fa-check"></i> 600點紅利積點
							</p>
							<div class="button-area">
								<a href="#" class="btn btn-common">贊助</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>-->
	<!-- Pricing Table  End -->

	<!-- Footer Section -->
	<footer>
	<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
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
	<!-- Placed at the end of the document so the pages load faster -->
	<script>
 		window.jQuery
 				|| document
 						.write('<script src="/js/jquery-slim.min.js"><\/script>')
 	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/vendor/holder.min.js"></script>

</body>
</html>