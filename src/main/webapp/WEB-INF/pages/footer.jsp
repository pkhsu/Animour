<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {
	font-family: '微軟正黑體'
}
</style>
</head>
<body>

	<footer> <!-- Container Starts -->
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
					<li><a href="/">首頁</a></li>
					<li><a href="/halfway">中途專區</a></li>
					<li><a href="/news/index?pageNo=1">最新活動</a></li>
					<li><a href="/product/index">寵物市集</a></li>
					<li><a href="/reservationDate">寵物Salon</a></li>
					<li><a href="/hospital">醫院資訊專區</a></li>
					<li><a href="/forum/findAll">THE BLOG</a></li>
					<li><a href="/donate">贊助我們</a></li>
				</ul>
			</div>
			<!-- Footer Widget Ends -->

			<!-- Footer Widget Starts -->
			<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
				<h3 class="small-title">Popular Posts</h3>
				<ul class="image-list">
					<li><figure class="overlay"> <img class="img-fluid"
							src="" alt=""> </figure>
						<div class="post-content">
							<h6 class="post-title">
								<a href="blog-single.html"></a>
							</h6>
							<div class="meta">
								<span class="date"></span>
							</div>
						</div></li>
					<li><figure class="overlay"> <img class="img-fluid"
							src="" alt=""> </figure>
						<div class="post-content">
							<h6 class="post-title">
								<a href="blog-single.html"></a>
							</h6>
							<div class="meta">
								<span class="date"></span>
							</div>
						</div></li>
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
						src="/images/flicker/img3.jpg" alt="">
					</a>
				</div>
			</div>
			<!-- Footer Widget Ends -->
		</div>
		<!-- Row Ends -->
	</div>
	<!-- Container Ends --> <!-- Copyright -->
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
	<!-- Copyright  End--> </footer>
	
	<script src="/webjars/sockjs-client/sockjs.min.js"></script>
	<script src="/webjars/stomp-websocket/stomp.min.js"></script>
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>					

				<script>

					$(document).ready(function () {
						//alert("alert from noti")
						function cc(){
							
							$('#online').empty();
							var d =`<a  class="dropdown-item" style="background-color:#9c3;color:#ffffff">`  +`在線上` + `</a>`;
							$('#online').append(d);
							var acc=$('#data-role').attr('name');
							
						$.ajax({
							type: "GET",
							url: "/api/member/all/findonline",
							}).done(function (data) {
							$.each(data, function (idx, list) {
							if(list!=acc){
								var c=`<a id=` + list + ` class="dropdown-item" href="/user/` + list + `">` +  list +`在線上` + `</a>`;
								$('#online').append(c);

							}//不顯示自己
							});
							
						});//end do
						setTimeout(function() {
							cc();
						},
						5000);
						}//end cc
						cc();	
					});

				</script>	
	<script>
					var stompClient = null;

					function setConnected(connected) {
						$("#connect").prop("disabled", connected);
						$("#disconnect").prop("disabled", !connected);
						if (connected) {
							$("#conversation").show();
						} else {
							$("#conversation").hide();
						}
						$("#greetings").html("");
					}

					function connect() {
						
						var socket = new SockJS('/chatTest');
						stompClient = Stomp.over(socket);
						stompClient.connect({}, function (frame) {
							setConnected(true);
							console.log('Connected: ' + frame);
							// subscribe 改成
							stompClient.subscribe("/user/queue/notifications", function (
								message) {
								//alert("from noti")
								showGreeting(JSON.parse(message.body));
								showCount(JSON.parse(message.body).count);
							});
							// 兩種訂閱寫在一起，用一個連線，一個 endpoint
							stompClient.subscribe("/user/queue/chat/ryu", function (
								chat) {
								//alert("from chat")
								showChat(JSON.parse(chat.body));
								//showChat(chat.body);
								$("#chatBox").css("display", "")
							});

							stompClient.subscribe("/user/queue/chat/BenQ", function (
								chat) {
								//alert("from chat")
								showChat(JSON.parse(chat.body));
								//showChat(chat.body);
								$("#chatBox").css("display", "")
							});

							stompClient.subscribe("/user/queue/chat", function (
								chat) {
								//alert("from chat")
								showChat(JSON.parse(chat.body));
								//showChat(chat.body);
								$("#chatBox").css("display", "")
							});
						});
					}

					function disconnect() {
						if (stompClient !== null) {
							stompClient.disconnect();
						}
						setConnected(false);
						console.log("Disconnected");
					}

					// 發送訊息，這邊用不到
					// function sendText() {
					// 	stompClient.send("/app/chat", {}, $("#name").val());
					// 	//alert("alert from noti")
					// 	$("#greetings").append(
					// 		"<tr><td style='color:blue'>" + $("#name").val()
					// 		+ "</td></tr>");
					// }

					// 接收socket來的訊息，新增元素顯示，型別為JSON物件
					function showGreeting(notice) {
						if ($('#nonitice').length != 0) {
							$("#nonitice").remove();
						}

						var fromMember;
						if (!notice.fromWho){
							fromMember = "";
						} else {
							fromMember = notice.fromWho.account;
						}
						var template = `<a id=` + notice.id + ` class="dropdown-item" href="` + notice.href + `">` + fromMember + notice.detail + `</a>`;
						$("#notification").append(template);

						bindNotice();
					}

					function showCount(count) {
						$("#dropdownMenuLink").append(`<span id="count" class="badge"
				style="background: #cc0000; color: #ffffff; font-weight: bold; border-radius: 9px; -moz-border-radius: 9px; -webkit-border-radius: 9px; position: absolute; margin-top: 5%; margin-left: -15%; font-size: 11px;">`+ count + `</span>`);
					}

					$(function () {
// 						$("form").on('submit', function (e) {
// 							e.preventDefault();
// 						});
						/* $("#connect").click(function () {
							connect();
						}); */
						/* 	$("#disconnect").click(function () {
								disconnect();
							}); */
						/* $("#send").click(function () {
							sendText();
						}); */
					});

					// 綁定click事件，設定為已讀
					function bindNotice(){
						$(".dropdown-item").click(function () {
							//alert($(this).attr('id'));
							$.ajax({
								type: "GET",
								url: "/api/member/all/setread/"+$(this).attr('id'),
								//contentType: "application/json",
								//processData: false
							}).done(function(){
								$(this).remove();
							})
						});
					}

					$(document).ready(function () {
						connect();
						//alert("alert from noti")

						// onload 時先去讀取資料庫的未讀通知，新增元素顯示
						$.ajax({
							type: "GET",
							url: "/api/member/all/loadnotice",
							//contentType: "application/json",
							//processData: false
						}).done(function (datas) {
							$.each(datas.data, function (idx, notice) {
								showGreeting(notice);
							});
							if (datas.parameters.count > 0) {
								showCount(datas.parameters.count);
							} else {
								var template = `<a class="dropdown-item" id="nonitice">目前沒有未讀通知</a>`
								$("#notification").append(template);
							}
							//bindNotice();
						});
					});

				</script>
</body>
</html>