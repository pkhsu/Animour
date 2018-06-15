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
				<script src="/webjars/sockjs-client/sockjs.min.js"></script>
				<script src="/webjars/stomp-websocket/stomp.min.js"></script>
			</head>

			<body>
				<!-- Example single danger button -->
				<div class="btn-group">

					<div class="dropdown show">
						<a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i title="通知" class="fa fa-globe" style="color: #9C3; font-size: 30px"></i>
							<span id="count" class="badge" style="background: #cc0000; color: #ffffff; font-weight: bold; border-radius: 9px; -moz-border-radius: 9px; -webkit-border-radius: 9px; position: absolute; margin-top: 5%; margin-left: -15%; font-size: 11px;"></span>
						</a>

						<div id="notification" class="dropdown-menu" aria-labelledby="dropdownMenuLink">

							<a class="dropdown-item" style="background-color: #9C3; color: #ffffff">通知</a>
							<!--<div class="dropdown-divider" style="background-color: #9C3"></div>-->

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

				<script>
// 					var stompClient = null;

// 					function setConnected(connected) {
// 						$("#connect").prop("disabled", connected);
// 						$("#disconnect").prop("disabled", !connected);
// 						if (connected) {
// 							$("#conversation").show();
// 						} else {
// 							$("#conversation").hide();
// 						}
// 						$("#greetings").html("");
// 					}

// 					function connect() {
						
// 						var socket = new SockJS('/chatTest');
// 						stompClient = Stomp.over(socket);
// 						stompClient.connect({}, function (frame) {
// 							setConnected(true);
// 							console.log('Connected: ' + frame);
// 							// subscribe 改成
// 							stompClient.subscribe("/user/queue/notifications", function (
// 								message) {
// 								//alert("from noti")
// 								showGreeting(JSON.parse(message.body));
// 								showCount(JSON.parse(message.body).count);
// 							});
// 							// 兩種訂閱寫在一起，用一個連線，一個 endpoint
// 							stompClient.subscribe("/user/queue/chat/ryu", function (
// 								chat) {
// 								//alert("from chat")
// 								showChat(JSON.parse(chat.body));
// 								//showChat(chat.body);
// 								$("#chatBox").css("display", "")
// 							});

// 							stompClient.subscribe("/user/queue/chat/BenQ", function (
// 								chat) {
// 								//alert("from chat")
// 								showChat(JSON.parse(chat.body));
// 								//showChat(chat.body);
// 								$("#chatBox").css("display", "")
// 							});

// 							stompClient.subscribe("/user/queue/chat", function (
// 								chat) {
// 								//alert("from chat")
// 								showChat(JSON.parse(chat.body));
// 								//showChat(chat.body);
// 								$("#chatBox").css("display", "")
// 							});
// 						});
// 					}

// 					function disconnect() {
// 						if (stompClient !== null) {
// 							stompClient.disconnect();
// 						}
// 						setConnected(false);
// 						console.log("Disconnected");
// 					}

// 					// 發送訊息，這邊用不到
// 					// function sendText() {
// 					// 	stompClient.send("/app/chat", {}, $("#name").val());
// 					// 	//alert("alert from noti")
// 					// 	$("#greetings").append(
// 					// 		"<tr><td style='color:blue'>" + $("#name").val()
// 					// 		+ "</td></tr>");
// 					// }

// 					// 接收socket來的訊息，新增元素顯示，型別為JSON物件
// 					function showGreeting(notice) {
// 						if ($('#nonitice').length != 0) {
// 							$("#nonitice").remove();
// 						}

// 						var fromMember;
// 						if (!notice.fromWho){
// 							fromMember = "";
// 						} else {
// 							fromMember = notice.fromWho.account;
// 						}
// 						var template = `<a id=` + notice.id + ` class="dropdown-item" href="` + notice.href + `">` + fromMember + notice.detail + `</a>`;
// 						$("#notification").append(template);

// 						bindNotice();
// 					}

// 					function showCount(count) {
// 						$("#dropdownMenuLink").append(`<span id="count" class="badge"
// 				style="background: #cc0000; color: #ffffff; font-weight: bold; border-radius: 9px; -moz-border-radius: 9px; -webkit-border-radius: 9px; position: absolute; margin-top: 5%; margin-left: -15%; font-size: 11px;">`+ count + `</span>`);
// 					}

// 					$(function () {
// // 						$("form").on('submit', function (e) {
// // 							e.preventDefault();
// // 						});
// 						/* $("#connect").click(function () {
// 							connect();
// 						}); */
// 						/* 	$("#disconnect").click(function () {
// 								disconnect();
// 							}); */
// 						/* $("#send").click(function () {
// 							sendText();
// 						}); */
// 					});

// 					// 綁定click事件，設定為已讀
// 					function bindNotice(){
// 						$(".dropdown-item").click(function () {
// 							//alert($(this).attr('id'));
// 							$.ajax({
// 								type: "GET",
// 								url: "/api/member/all/setread/"+$(this).attr('id'),
// 								//contentType: "application/json",
// 								//processData: false
// 							}).done(function(){
// 								$(this).remove();
// 							})
// 						});
// 					}

// 					$(document).ready(function () {
// 						//connect();
// 						//alert("alert from noti")

// 						// onload 時先去讀取資料庫的未讀通知，新增元素顯示
// 						$.ajax({
// 							type: "GET",
// 							url: "/api/member/all/loadnotice",
// 							//contentType: "application/json",
// 							//processData: false
// 						}).done(function (datas) {
// 							$.each(datas.data, function (idx, notice) {
// 								showGreeting(notice);
// 							});
// 							if (datas.parameters.count > 0) {
// 								showCount(datas.parameters.count);
// 							} else {
// 								var template = `<a class="dropdown-item" id="nonitice">目前沒有未讀通知</a>`
// 								$("#notification").append(template);
// 							}
// 							//bindNotice();
// 						});
// 					});

				</script>

			</body>

			</html>