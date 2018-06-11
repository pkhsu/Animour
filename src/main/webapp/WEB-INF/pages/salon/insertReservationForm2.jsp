<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>預約表單</title>
<!-- calendar css -->
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
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	<!-- Header-wrap Section End -->
	<!-- Page Header -->
	<div class="page-header-section">
		<div class="container">
			<div class="row">
				<div class="page-header-area">
					<div class="page-header-content">
						<h2>預約表單</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->
	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">結帳訊息</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">請在七天內付款</div>
							<div class="modal-footer">
								<button type="button" id="transferWeb" class="btn btn-secondary"
									data-dismiss="modal">下次再結</button>
								<button id="checkout" type="button" class="btn btn-common">現在結帳</button>
							</div>
						</div>
					</div>
				</div>
								<!-- Modal end-->
								<!--
				<!-- <script>
				$('#transferWeb').click(function(){
					document.location.href="http://localhost:8080/reservation";
				})
				 
				</script>
				-->
				<!-- boutton check-->
				<div id="divPicture">
										<img id="picture1" alt="路人" src="/images/reservation/serviceContent/力力力.jpg" height="400px" width="400px">					
					<img id="picture2" alt="路人" src="/images/reservation/serviceContent/設計師-女.jpeg" height="400px" width="400px" style="display: none;">
<img id="picture3" alt="路人" src="/images/reservation/serviceContent/設計師-男.jpeg" height="400px" width="400px" style="display: none;">
<!-- 					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#exampleModal">Launch demo modal</button>
 -->				</div>
				<!-- Modal end-->

				<div id="loginbox" style="margin-top: 50px; margin: auto"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info" style="border: 1px">
						<div class="panel-heading"
							style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">


							<form id="myform" style="margin-top: 50px; margin: auto">
								預約日期 <input class="form-group col-md-8 contentclean" id="meeting" type="date"
									name="reservationDate" /> <br> 美容師: <select id="engineer"
									class="form-control contentclean" name="designer">
									<option value="engineer" label="請選擇美容師" />



								</select> 時段: <select id="sectionTime" class="form-control contentclean"
									name="frontTime">
									<option value="sectionTime" label="請選擇時段" />
								</select> 服務類別: <select id="servicer" class="form-control contentclean" name="content">
									<option value="content" label="請選擇類別" />

								</select> 價位： <select id="price" class="form-control contentclean" name="price">
									<option value="price" label="請選擇價位" />
								</select>




								<!-- <form action="/" id="searchForm">
													<input type="text" name="s" placeholder="Search...">
													<input type="submit" value="Search">
												</form>
												<!-- the result of the search will be rendered inside this div -->
								<!-- <div id="result"></div> -->
								<div style="text-align: center;height:60px;line-height:60px;">
														<input id="response" type="button" class="btn btn-common"
							data-toggle="modal" data-target="#exampleModal" value="預約" style="background-color:#EE7700;">
													<button id="cleanContent" type="button" class="btn btn-common" 
							data-target="#exampleModal" style="background-color:#EE7700;">清除</button>
							
								</div>
								
								
							</form>


						</div>


					</div>
					<br>



					<div id="paymentdiv"
						style="text-align: center; border: 3px white double;">


					</div>

				</div>
	</section>
	<!-- Footer Section -->
	<footer>
		<!-- Container Starts -->
		<div class="container">
			<!-- Row Starts -->
			<div class="row section">
				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">About Us</h3>
					<p></p>
					<ul class="mb-3">
						<!-- 						<li><i class="fa fa-map-marke"></i></li> -->
						<!-- 						<li><i class="fa fa-phone"></i></li> -->
						<!-- 						<li><i class="fa fa-phone"></i></li> -->
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">Quick Links</h3>
					<ul class="menu">
						<li><a href="#">首頁</a></li>
						<li><a href="#">中途專區</a></li>
						<li><a href="#">最新活動專區</a></li>
						<li><a href="#">寵物市集</a></li>
						<li><a href="#">Salon</a></li>
						<li><a href="#">醫院資訊專區</a></li>
						<li><a href="#">THE BLOG</a></li>
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">Popular Posts</h3>
					<ul class="image-list">
						<li>
							<figure class="overlay">
								<img class="img-fluid" src="" alt="">
							</figure>
							<div class="post-content">
								<h6 class="post-title">
									<a href="blog-single.html"></a>
								</h6>
								<div class="meta">
									<span class="date"></span>
								</div>
							</div>
						</li>
						<li>
							<figure class="overlay">
								<img class="img-fluid" src="" alt="">
							</figure>
							<div class="post-content">
								<h6 class="post-title">
									<a href="blog-single.html"></a>
								</h6>
								<div class="meta">
									<span class="date"></span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">EMail Us</h3>
					<form>
						<input type="text" placeholder="Email here">
						<button type="submit">
							<i class="fa fa-paper-plane-o"></i>
						</button>
					</form>
					<div class="flicker-gallery">
						<h3 class="small-title">Social Media Link</h3>
						<a href="#" title="Pan Masala"> <img
							src="/images/flicker/img1.jpg" alt="">
						</a> <a href="#" title="Sports Template for Joomla"> <img
							src="/images/flicker/img2.jpg" alt="">
						</a> <a href="" title="Apple Keyboard"> <img
							src="/images/halfway/halfwayindex.jpg" alt="">
						</a>
					</div>
				</div>
				<!-- Footer Widget Ends -->
			</div>
			<!-- Row Ends -->
		</div>
		<!-- Container Ends -->

		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<p class="copyright-text">
							© 2018 Animour All right reserved, Designed by <a href="#">iii-ee100</a>
						</p>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="social-footer text-right">
							<a href="#"> <i class="fa fa-facebook icon-round"></i>
							</a> <a href="#"> <i class="fa fa-twitter icon-round"></i>
							</a> <a href="#"> <i class="fa fa-linkedin icon-round"></i>
							</a> <a href="#"> <i class="fa fa-google-plus icon-round"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Copyright  End-->

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
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- 	<script src="/js/vendor/holder.min.js"></script> -->

	<script
		src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<!-- 	<different content from here> -->

	<script>
	var data1 = new FormData(document.getElementById("myform"));
	
	$('#cleanContent').click(function(){
		$(".contentclean option").remove();
		var cell0 =$("<option class='test' id='testtest1'></option>").text("請選擇美容師")
		var cell1 = $("<option class='test' id='testtest1'></option>").text(
		"飛影");
var cell2 = $("<option class='test'></option>").text(
"琦玉");
var cell3=$("<option class='test'></option>").text(
"陳浩南");


$('#engineer').append([cell0,cell1,cell2,cell3]);
var cell4= $('<option/>').text('請選擇時段');
$('#sectionTime').append([cell4]);
var cell5= $('<option/>').text('請選擇服務');
$('#servicer').append([cell5]);
var cell6= $('<option/>').text('請選擇價位');
$('#price').append([cell6]);
	})

		$(document).ready(
				function() {
					
					var cell1 = $("<option class='test' id='testtest1'></option>").text(
							"飛影");
					var cell2 = $("<option class='test'></option>").text(
					"琦玉");
					var cell3=$("<option class='test'></option>").text(
					"陳浩南");
					

					$('#engineer').append([cell1,cell2,cell3]);
					
					
					data1 = new FormData(document.getElementById("myform"));
				$('#engineer').change(function(){
					var engin=$("#engineer").val();
					var aaa="飛影"
					if(engin==aaa){
						$('#picture1').remove();
						$('#picture2').remove();
						$('#picture3').remove();
/* 						$('#picture1').attr({"style":"display: none"});
 */
						$('#divPicture').append('<img id="picture2" alt="路人" src="/images/reservation/serviceContent/設計師-女.jpeg" height="400px" width="400px">');
					}
					
					 if(engin=="琦玉"){
						 $('#picture1').remove();
							$('#picture2').remove();
							$('#picture3').remove();
							$('#divPicture').append('<img id="picture3" alt="路人" src="/images/reservation/serviceContent/設計師-男.jpeg" height="400px" width="400px">');
					} 
					 if(engin=="陳浩南"){
						 $('#picture1').remove();
							$('#picture2').remove();
							$('#picture3').remove();
							$('#divPicture').append('<img id="picture3" alt="路人" src="/images/reservation/serviceContent/男模特4.jpeg" height="400px" width="400px">');
						 
					 }
					//json 格式
// 					 var aaa='{"jjjj":"dddd","ddd":"ddd","ddd":"ddd"}'
					 /* data: {
						 account : account,
						 pk  :  pk
					 } */
 					var value=$('#engineer option:selected').text();
					var dateValue=$("#meeting").val();
					 var NameAndDate={"aaa2":value,"bbb2":dateValue}
					 var hope = JSON.stringify(NameAndDate);
					function toJson(formData) {
						var object = {};
						formData.forEach(function(value, key) {
							object[key] = value;
						});
						var json = JSON.stringify(object, null);
						console.log(json);
						return json;
					};
					
						$("#sectionTime option").remove();

						$.getJSON('/reservationForms/getFreeDesignerTime', {"aaa2":value,"bbb2":dateValue},
							function(data){
							var cell0=$("<option></option>").text("請選擇時段");
							$('#sectionTime').append([cell0]);

						$.each(data, function(i, freeTime) {
							console.log(freeTime.frontTime);
							var cell1 = $("<option></option>").text(freeTime.frontTime);
							$('#sectionTime').append([cell1]);

						})

					})
						
						
										
					
					
					$.getJSON('/reservationForms/getServiceCotent', {},function(data){
						
						//sectionTime
				$('#sectionTime').change(function() {
					$('#servicer option' ).remove();
					var cell0=$("<option></option>").text("請選擇服務");
					$('#servicer').append(cell0);
			$.each(data, function(i, serviceCotent) {
				if(serviceCotent.designer.id===1){
				var cell1 = $("<option></option>").text(
						serviceCotent.content);
				
					
				}
				$('#servicer').append(cell1);


			})

		})
		
		//sectionTime end
		$('#servicer').change(function() {
											$('#price option' ).remove();
									$.each(data, function(i, serviceCotent) {
										if(serviceCotent.designer.id===1){
										var cell2 = $("<option></option>").text(
												serviceCotent.price);
										
											
										}
										$('#price').append(cell2);


									})

								})
		
					})
				});
				
					
				});
		
/* 					$.getJSON('/reservationForms/getFreeTime', {},
							function(data) {
								$.each(data, function(i, freeTime) {
									// var cell1 = $("<option></option>").text(a.content+a.price);
									// $('#servicer').append(cell1);

									var cell1 = $("<option></option>").text(
											freeTime.Bdesigner);
									
									$('#servicer').append(cell1);

								})

								$('#designer').change(function() {
											$('#servicer option' ).remove();
									$.each(data, function(i, serviceCotent) {
										if(serviceCotent.designer.id===1){
										var cell1 = $("<option></option>").text(
												serviceCotent.content);
										
											
										}
										$('#servicer').append(cell1);


									})

								})
								$('#servicer').change(function() {
											$('#price option' ).remove();
									$.each(data, function(i, serviceCotent) {
										if(serviceCotent.designer.id===1){
										var cell2 = $("<option></option>").text(
												serviceCotent.price);
										
											
										}
										$('#price').append(cell2);


									})

								})
							})
 */				
		
		
		$("#checkout").click(function() {
			$.ajax({
				url : '/SalonfrontEnd/CheckOut/CheckOutALL',
				type : 'POST',
			//data: data,
			//data: json,
			//dataType: 'json',
			//contentType: "application/json",
			}).done(function(datas) {
				$('#paymentdiv').html(datas);

			})
		});

		$("#response").click(function() {

			data1 = new FormData(document.getElementById("myform"));
			/* 			console.log(toJson(data1));
			 */

			$.ajax({
				url : '/reservationForms',
				type : 'POST',
				data : toJson(data1),
				contentType : "application/json",
				dataType : "json",
				success : function(data1) {
					console.log("成功")
				}

			}).done(function(data) {
				/* 				console.log(toJson(data1));
				 */

			});

			
			

		});
		function toJson(formData) {
			var object = {};
			formData.forEach(function(value, key) {
				object[key] = value;
			});
			var json = JSON.stringify(object, null);
			console.log(json);
			return json;
		};
	</script>

	<!-- <script>
					var month_olympic = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
					var month_normal = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
					var month_name = ["January", "Febrary", "March", "April", "May", "June", "July", "Auguest", "September", "October", "November", "December"];

					var holder = document.getElementById("days");
					var prev = document.getElementById("prev");
					var next = document.getElementById("next");
					var ctitle = document.getElementById("calendar-title");
					var cyear = document.getElementById("calendar-year");

					var my_date = new Date();
					var my_year = my_date.getFullYear();
					var my_month = my_date.getMonth();
					var my_day = my_date.getDate();

					function dayStart(month, year) {
						var tmpDate = new Date(year, month, 1);
						return (tmpDate.getDay());
					}

					function daysMonth(month, year) {
						var tmp = year % 4;
						if (tmp == 0) {
							return (month_olympic[month]);
						} else {
							return (month_normal[month]);
						}
					}
					function refreshDate() {
						var str = "";
						var totalDay = daysMonth(my_month, my_year); //获取该月总天数
						var firstDay = dayStart(my_month, my_year); //获取该月第一天是星期几
						var myclass;
						for (var i = 1; i < firstDay; i++) {
							str += "<li></li>"; //为起始日之前的日期创建空白节点
						}
						for (var i = 1; i <= totalDay; i++) {
							if ((i < my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) || my_year < my_date.getFullYear() || (my_year == my_date.getFullYear() && my_month < my_date.getMonth())) {
								myclass = " class='lightgrey'"; //当该日期在今天之前时，以浅灰色字体显示
							} else if (i == my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) {
								myclass = " class='green greenbox'"; //当天日期以绿色背景突出显示
							} else {
								myclass = " class='darkgrey'"; //当该日期在今天之后时，以深灰字体显示
							}
							str += "<li" + myclass + ">" + i + "</li>"; //创建日期节点
						}
						holder.innerHTML = str; //设置日期显示
						ctitle.innerHTML = month_name[my_month]; //设置英文月份显示
						cyear.innerHTML = my_year; //设置年份显示
					}
					refreshDate();
					prev.onclick = function (e) {
						e.preventDefault();
						my_month--;
						if (my_month < 0) {
							my_year--;
							my_month = 11;
						}
						refreshDate();
					}
					next.onclick = function (e) {
						e.preventDefault();
						my_month++;
						if (my_month > 11) {
							my_year++;
							my_month = 0;
						}
						refreshDate();
					}

				</script> -->


</body>

</html>