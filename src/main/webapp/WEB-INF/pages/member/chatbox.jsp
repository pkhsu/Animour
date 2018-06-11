<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

				<!--Icon Tags end -->
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<!-- Viewport Meta Tag -->
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>新增送養動物</title>
				<!-- Bootstrap -->
				<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
				<!-- Main Style -->
				<link rel="stylesheet" type="text/css" href="/css/main.css">
				<!-- Slicknav Css -->
				<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

				<!--FancyBox css -->
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />

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

				<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
				<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
				<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
				<!-- FancyBox Plugins -->

				<style>
					.chat-main {
						position: fixed;
						width: 270px;
						bottom: 0;
						right: 5%;
					}

					.chat-header {
						background: #9c3;
						padding-top: 1px;
						padding-bottom: 1px;
					}

					.chat-content {
						background: #ffffff;
						padding-top: 1px;
						padding-bottom: 1px;
					}

					.username i {
						font-size: 9px;
					}

					.username h6 {
						display: inline-block;
						font-size: 12px;
						font-weight: 600;
					}

					.options i {
						font-size: 14px;
						font-weight: normal;
						opacity: 0.7;
					}

					.options .live-video {
						font-size: 6px;
					}

					.chats {
						height: 260px;
						overflow-x: scroll;
						overflow-x: hidden;
					}

					.chats ul li {
						list-style: none;
						clear: both;
						font-size: 13px;
					}

					.chats .send-msg {
						float: right;
					}

					.receive-msg img {
						border-radius: 100%;
						height: 30px;
						width: 12%;
					}

					.receive-msg-img {
						display: inline;
					}

					.receive-msg .receive-msg-desc {
						display: inline-block;
					}

					.receive-msg .receive-msg-desc p {
						background: #c1c1c1;
					}

					.message-box input {
						border: none;
						font-size: 13px;
						opacity: 0.7;
					}

					.message-box input:focus {
						outline: none;
					}

					.tools i {
						color: #a1a1a1;
						cursor: pointer;
						font-size: 20px;
						margin-right: 6px;
					}
				</style>
			</head>

			<body>
				<input type="hidden" id="memberId" value="${member.id}">
				<div class="container" style="z-index:9999;position: relative;">
					<div class="row pt-3">
						<div class="chat-main">
							<div class="col-md-12 chat-header rounded-top bg-primary text-white">
								<div class="row">
									<div class="col-md-6 username pl-2">
										<i class="fa fa-circle text-success" aria-hidden="true"></i>
										<h6 class="m-0">${member.account}</h6>
									</div>
									<div class="col-md-6 options text-right pr-2">
										<i class="fa fa-plus mr-2 hide-chat-box" aria-hidden="true"></i>
										<i class="fa fa-circle text-success live-video mr-1" aria-hidden="true"></i>

									</div>
								</div>
							</div>
							<div class="chat-content">
								<div class="col-md-12 chats border">
									<ul class="p-0" id="appendMsg">
										<!--
										<li class="pl-2 pr-2 bg-primary rounded text-white text-center send-msg mb-1">
											hiii
										</li>
										<li class="p-1 rounded mb-1">
											<div class="receive-msg">
												<img src="demo/image1.jpg">
												<div class="receive-msg-desc  text-center mt-1 ml-1 pl-2 pr-2">
													<p class="pl-2 pr-2 rounded">hello</p>
												</div>
											</div>
										</li>
										<li class="pl-2 pr-2 bg-primary rounded text-white text-center send-msg mb-1">
											how are you ???
										</li>
										<li class="p-1 rounded mb-1">
											<div class="receive-msg">
												<div class="receive-msg-img">
													<img src="demo/image1.jpg">
												</div>
												<div class="receive-msg-desc rounded text-center mt-1 ml-1 pl-2 pr-2">
													<p class="mb-0 mt-1 pl-2 pr-2 rounded-top rounded-right">I'm fine !!!</p>
													<p class="mb-0 mt-1 pl-2 pr-2 rounded-bottom rounded-right">Where are you ?</p>
												</div>
											</div>
										</li>
										<li class="pl-2 pr-2 bg-primary text-white text-center send-msg mb-1 rounded-top rounded-left">
											at california
										</li>
										<li class="pl-2 pr-2 bg-primary text-white text-center send-msg mb-1 rounded-bottom rounded-left">
											and where are you ?
										</li>
										<li class="p-1 rounded  mb-1">
											<div class="receive-msg">
												<img src="demo/image1.jpg">
												<div class="receive-msg-desc rounded text-center mt-1 ml-1 pl-2 pr-2">
													<p class="pl-2 pr-2 rounded">now i'm at new york city</p>
												</div>
											</div>
										</li>
										<li class="pl-2 pr-2 bg-primary rounded text-white text-center send-msg mb-1">
											Ok
										</li> -->
									</ul>
								</div>
								<div class="col-md-12 message-box border pl-2 pr-2 border-top-0">
									<form class="form-inline" id="msgForm">
										<div class="form-group">
											<input type="text" id="msgArea" class="pl-0 pr-0 w-100 form-control" placeholder="Type a message..." />
										</div>
									</form>
									<div class="tools">
										<i class="fa fa-send" aria-hidden="true" id="sendMsg"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

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
				<script type="text/javascript">
					$('.hide-chat-box').click(function () {
						$('.chat-content').slideToggle();
					});
				</script>
				<script>
					var fromWhoId;
					$(document).ready(function () {





					});

					function sendMsg() {
						//alert(fromWhoId);
						if (fromWhoId == null) {
							fromWhoId = $("#memberId").attr('value');
						}
						stompClient.send("/app/chat/" + fromWhoId, {}, JSON.stringify({ 'message': $("#msgArea").val() }));
						// alert("alert from chat")
						$("#appendMsg").append(`<li class="pl-2 pr-2 bg-primary rounded text-white text-center send-msg mb-1">` +
							$("#msgArea").val()
							+ `</li>`);
					}

					// 接收socket來的訊息，新增元素顯示，型別為JSON物件
					function showChat(chat) {
						//alert("有打到")
						var template = `<li class="p-1 rounded  mb-1">
											<div class="receive-msg">
												<img src="`+ chat.fromWho.images + `">
												<div class="receive-msg-desc rounded text-center mt-1 ml-1 pl-2 pr-2">
													<p class="pl-2 pr-2 rounded">`+ chat.message + `</p>
												</div>
											</div>
										</li>`;
						$("#appendMsg").append(template);
						$("h6").text(chat.fromWho.account);

						fromWhoId = chat.fromWho.id;
						//alert(fromWhoId);
						//bindNotice();
					}


					$(function () {
						$('#msgArea').keypress(function (e) {
							if (e.which == 13) {
								$("#msgForm").submit();
								sendMsg();
								$('#msgArea').val('');
							}
						});

						$("#sendMsg").click(function () {
							$("#msgForm").submit();
							sendMsg();
							$('#msgArea').val('');
						});
						$("#msgForm").on('submit', function (e) {
							e.preventDefault();
						});
						$("#connect").click(function () {
							connect();
						});
						$("#disconnect").click(function () {
							disconnect();
						});
					});

				</script>


			</body>

			</html>