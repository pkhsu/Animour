<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!doctype html>
		<html lang="en">

		<head>
			<!--Icon Tags start -->
			<link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
			<link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
			<link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
			<link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
			<link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
			<link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
			<link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
			<link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
			<link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
			<link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
			<link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
			<link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
			<link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
			<link rel="manifest" href="/manifest.json">
			<!--FancyBox css -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />


			<!--Icon Tags end -->
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<!-- Viewport Meta Tag -->
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Animal Detail</title>
			<!-- Bootstrap -->
			<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
			<!-- Main Style -->
			<link rel="stylesheet" type="text/css" href="/css/main.css">
			<!-- Slicknav Css -->
			<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

			<!-- Responsive Style -->
			<link rel="stylesheet" type="text/css" href="/css/responsive.css">
			<!--Fonts-->
			<link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
			<link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

			<!-- Extras -->
			<link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
			<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
			<link rel="stylesheet" type="text/css" href="/extras/animate.css">
			<link rel="stylesheet" type="text/css" href="/extras/normalize.css">


			<!-- Color CSS Styles  -->
			<link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

			<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
			<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
	<![endif]-->
			<style>
				/* Start state */

				.animated-modal {
					max-width: 550px;
					border-radius: 4px;
					overflow: hidden;
					transform: translateY(-50px);
					transition: all .7s;
				}

				.animated-modal h2,
				.animated-modal p {
					transform: translateY(-50px);
					opacity: 0;
					transition-property: transform, opacity;
					transition-duration: .4s;
				}

				/* Final state */

				.fancybox-slide--current .animated-modal,
				.fancybox-slide--current .animated-modal h2,
				.fancybox-slide--current .animated-modal p {
					transform: translateY(0);
					opacity: 1;
				}

				/* Reveal content with different delays */

				.fancybox-slide--current .animated-modal h2 {
					transition-delay: .1s;
				}

				.fancybox-slide--current .animated-modal p {
					transition-delay: .3s;
				}

				.li .span {
					font-size: 72px;
					color: rgb(35, 194, 101)
				}

				.p a img {
					padding: 12px
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
								<h2>動物認養詳情</h2>
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

						<div class="col-md-6">
							<span style="border-style:groove;border-color:rgb(176, 235, 60); color:#ffffff; background-color:#9c3; border-radius:5px">${animal.status}</span>
							<h3 style="display: inline" class="small-title">會員
								<a href="/user/${animal.member.account}">${animal.member.account}</a>的送養動物</h3>

							<div id="default-tab" class="mt-10">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" href="#home" aria-controls="home" role="tab" data-toggle="tab">關於我</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#messages" aria-controls="messages" role="tab" data-toggle="tab">備註</a>
									</li>
									<c:if test="${animal.member.id ne currentMember.id}">
										<li class="nav-item">
											<a class="nav-link" href="#settings" aria-controls="settings" role="tab" data-toggle="tab">給主人的話</a>
										</li>
									</c:if>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<!-- Portfolio Details -->
										<div class="col-md-12 wow fadeIn" data-wow-delay="0.5s">
											<!--<div class="portfolio-meta">-->

											<div class="row">
												<div class="col-md-4">

													<ul>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">編號：</span>${animal.id}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">綽號：</span>${animal.name}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">種類：</span>${animal.specie}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">性別：</span>${animal.gender}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">體型：</span>${animal.size}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">年齡：</span>${animal.age}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">顏色：</span>${animal.color}</li>




													</ul>
												</div>
												<div class="col-md-8">
													<ul>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">張貼日期：</span>${animal.found}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">縣市&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</span>${animal.city.name}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">鄉鎮市區：</span>${animal.district}</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">就醫紀錄：</span>無</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">晶片號碼：</span>無</li>
														<li>
															<span style="color:rgb(11, 100, 173); font-weight:bold;">結紮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</span>無</li>
														<li id="upload">
															<span style="color:rgb(11, 100, 173); font-weight:bold;">更新時間：</span>
														</li>

													</ul>
												</div>
											</div>
											<!--</div>-->
										</div>
									</div>
									<div role="tabpanel" class="tab-pane " id="messages">
										<div class="col-md-12 wow fadeIn" data-wow-delay="0.5s">
											<p>${animal.remark}</p>
										</div>
									</div>
									<c:if test="${animal.member.id ne currentMember.id}">
										<div role="tabpanel" class="tab-pane" id="settings">
											<form name="requestComment" id="requestComment">
												<input type="hidden" id="animal" name="animal" value="${animal.id}" />
												<input type="hidden" id="ownerId" name="ownerId" value="${animal.member.id}" />
												<textarea class="form-control" id="requestComment" name="requestComment" rows="3"></textarea>
												<small>請告知飼主認養原因，並說明簡介可提供動物生活之環境</small>
											</form>
										</div>
									</c:if>
								</div>
							</div>
							<c:if test="${animal.member.id ne currentMember.id}">
								<a id="check" style="margin: auto; margin-top: 5%" class="btn btn-common btn-md btn-block mt-30" data-fancybox data-src="#trueModal"
								 data-modal="true" href="javascript:;">
									<i class="fa fa-link"></i>我要認養
								</a>
							</c:if>
						</div>

						<div class="col-md-6">
							<div class="row mb-4">
								<div class="col-6 col-lg-4">
									<a class="d-block mb-4" data-fancybox="images" href="/showAnimalImage?fileName=${animal.fileName}">
										<img class="img-fluid" src="/showAnimalImage?fileName=${animal.fileName}">
									</a>

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/QeigMir.jpg">
										<img class="img-fluid" src="https://i.imgur.com/QeigMir.jpg">
									</a>

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/do4Kjyq.jpg">
										<img class="img-fluid" src="https://i.imgur.com/do4Kjyq.jpg">
									</a>

								</div>
								<div class="col-6 col-lg-4">
									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/gijZgHC.jpg">
										<img class="img-fluid" src="https://i.imgur.com/gijZgHC.jpg">
									</a>

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/zNNBvRw.jpg">
										<img class="img-fluid" src="https://i.imgur.com/zNNBvRw.jpg8">
									</a>

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/r8Upyp0g.jpg">
										<img class="img-fluid" src="https://i.imgur.com/r8Upyp0g.jpg">
									</a>
								</div>
								<div class="col-6 col-lg-4 d-none d-lg-block">

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/kAATWZz.jpg">
										<img class="img-fluid" src="https://i.imgur.com/kAATWZz.jpg">
									</a>

									<a class="d-block mb-4" data-fancybox="images" href="https://i.imgur.com/eAGhBE8.jpg">
										<img class="img-fluid" src="https://i.imgur.com/eAGhBE8.jpg">
									</a>
								</div>
							</div>





							<script>

								// Clone defaults
								var imgOpts = $.extend(true, {}, $.fancybox.defaults);

								// Shortcut to apply options to image gallery
								function applyImgOpts() {
									$('[data-fancybox="images"]').fancybox(imgOpts);
								}

								$("#imgOpts select").change(function () {
									var opt = $(this).attr("id");
									var val = $(this).val();

									imgOpts[opt] = val === "" ? false : val;

									// Make "fade" transiton faster than others
									if (opt === 'transitionEffect') {
										imgOpts['transitionDuration'] = opt === 'fade' ? 330 : 550;
									}

									applyImgOpts();
								});

								$("#imgOpts input[type=radio][name=lang]").on("change", function () {
									imgOpts.lang = $(this).val();

									applyImgOpts();
								});

								$("#imgOpts .toggle").change(function () {
									if (this.id === 'thumbs') {
										imgOpts.thumbs.autoStart = this.checked ? true : false;
									} else {
										imgOpts[this.id] = this.checked ? true : false;
									}

									applyImgOpts();
								});

								$("#imgOpts .buttons").change(function () {
									var buttonArr = $('input:checkbox:checked.buttons').map(function () {
										return this.value;
									}).get();

									buttonArr.push('close');

									imgOpts.buttons = buttonArr;

									applyImgOpts();
								});

							</script>




						</div>


					</div>

				</div>
				<!--<p class="mb-0">
					<a data-fancybox data-src="#trueModal" data-modal="true" href="javascript:;" class="btn btn-common">Open demo</a>
				</p>-->
				<div style="display: none; max-width: 600px; border-radius: 20px" id="trueModal">
					<h2>提醒您! 申請送出後無法取消</h2>
					<p>(1) 賣家同意申請後，須支付保證金新台幣100元整。於成功完成認養手續後退還。</p>
					<p>(2) 認養申請送出後，需完成認養觀念檢測問卷，分數將作為飼主評估標準。</p>
					<p>(3) 成功完成認養手續後，若已達認養上限 (過去一年內成功認養數量不得多於2隻)，將暫時無法再提出認養申請。</p>
					<p>
						<button id="sendrequest" class="btn btn-common">
							<i class="fa fa-check"></i> 確定送出，前往認養觀念檢測</button>
						<button data-fancybox-close class="btn btn-common">取消</button>
					</p>
				</div>
			</section>

			<!-- 重複的內容結束 -->

			<!-- Footer Section -->
			<footer>
				<jsp:include page="../footer.jsp"></jsp:include>
			</footer>
			<!-- Footer Section End-->

			<!-- Go To Top Link -->
			<a href="#" class="back-to-top">
				<i class="fa fa-angle-up"> </i>
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

			<!-- FancyBox Plugins -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>

		</body>
		<script>
			$(document).ready(function () {
				//alert($("#animal").val());
				$.ajax({
					url: '/halfway/animal/' + $("#animal").val(),
					type: 'GET',

				}).done(function (datas) {
					//alert($('#upload').val())
					var uploadObj = new Date(datas.upload);
					$('#upload').append(uploadObj.toLocaleString());
				});

				$("#check").click(function () {
					$.getJSON('/halfway/adoption/check',
						function (datas) {
							if (!datas.parameters.check) {
								$("#trueModal").empty();
								let refuse = `<h2>您的認養次數已達上限</h2>
					<p> 請於${datas.parameters.limitPast}後再次提出請求!</p>`;
								$("#trueModal").append(refuse);
								// alert("您的認養次數已達上限")
								setTimeout(function () {
									window.location = "/halfway";
								}, 3000);
							}
						});
				});
			});

		</script>
		<script>
			$(document).ready(function () {
				$("#sendrequest").click(function () {
					var data = new FormData(document.getElementById("requestComment"));
					// data.append("sss", "qqq");
					console.log(data);

					for (var pair of data.entries()) {
						console.log(pair[0] + ', ' + pair[1]);
					}

					$.ajax({
						url: '/halfway/adoption',
						type: 'POST',
						data: toJson(data),
						//data: json,
						dataType: 'json',
						//processData: false,
						contentType: "application/json",
						//contentType: "multipart/form-data",
						//enctype: 'multipart/form-data',
						//contentType: false,
						//processData: false,
					}).done(function (datas) {


						var adoptionid = datas.parameters.id;
						window.location = "/halfway/toquiz/" + adoptionid;
					});
				});
			});

			function toJson(formData) {
				var object = {};
				formData.forEach(function (value, key) {
					if (key == 'animal') {
						var object1 = {};
						object1['id'] = value;
						object[key] = object1;
					} else {
						object[key] = value;
					}
				});
				var json = JSON.stringify(object, null);
				console.log(json);
				return json;
			};

			function showAlert(message) {
				alert(message);
			}
		</script>

		</html>