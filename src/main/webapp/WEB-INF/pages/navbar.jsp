<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--                 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script> -->
<title>Animour</title>
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
</head>

<body>

	<nav class="navbar navbar-expand-md fixed-top scrolling-navbar nav-bg">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<a class="navbar-brand" href="/"> <img style="position: left"
			src="/images/logo.png" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#main-menu" aria-controls="main-menu"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="container">
		<div class="collapse navbar-collapse" id="main-menu">
			<ul class="navbar-nav mr-auto w-100 justify-content-end">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/news/newsIndex"
					aria-haspopup="true" aria-expanded="false">最新消息</a> <sec:authorize
						access="hasRole('Admin')">
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/news/insertNews">新增活動</a>
							<a class="dropdown-item" href="/news/manage">管理活動</a>
						</div>
					</sec:authorize></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/halfway"
					aria-haspopup="true" aria-expanded="false">中途專區</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/halfway/addAnimal">我要送養</a> <a
							class="dropdown-item" href="/halfway">動物搜尋</a> <a
							class="dropdown-item" href="/halfway/showAdoption">認養程序處理</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/product/index">寵物市集</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/product/index">新品上市</a>
						<sec:authorize access="hasRole('Member')">
							<a class="dropdown-item" href="/product/insert">商品上架</a>
							<a class="dropdown-item" href="/product/maintain">商品管理</a>
						</sec:authorize>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/appointment/firstPage"
					aria-haspopup="true" aria-expanded="false">寵物沙龍</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/appointment/firstPage">沙龍簡介</a>
						<sec:authorize access="hasRole('Admin')">

							<a class="dropdown-item" href="/salonAdminReservation">訂單編輯</a>
						</sec:authorize>

						<a class="dropdown-item" href="/reservation">預約</a>
					</div></li>
				<!-- <li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/hospital"
					aria-haspopup="true" aria-expanded="false">寵物醫院</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/hospital">各區醫院</a> <a
							class="dropdown-item" href="/findorder">預約結果查詢</a>
														 <a class="dropdown-item" href="">看診進度查詢</a>
					</div></li> -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/forum/findAll"
					aria-haspopup="true" aria-expanded="false">部落格分享</a>
					<div class="dropdown-menu">
						<!-- 						<a class="dropdown-item" href="/forum/findAll">本周最新</a> -->
						<!-- 								<a class="dropdown-item" href="">熱門文章</a>  -->
						<!-- 								<a class="dropdown-item" href="">精選圖文</a> -->
					</div></li>

				<sec:authorize access="hasRole('Admin')">
					<!-- 管理員可讀 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="/user/<sec:authentication property="principal.username"/>"
						" aria-haspopup="true" aria-expanded="false"> <sec:authentication
								property="principal.username" /> 您好
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/admin/member">後台管理</a> <a
								class="dropdown-item" href="/mailto">寄信</a> <a
								class="dropdown-item" href="/logout">登出</a>

						</div></li>
				</sec:authorize>



				<sec:authorize access="hasRole('Member')">
					<!-- 會員可讀 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="/user/<sec:authentication property="principal.username"/>"
						aria-haspopup="true" aria-expanded="false"> <sec:authentication
								property="principal.username" var="username" />${username} 您好
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/user/${username}">個人首頁</a> <a
								class="dropdown-item" href="/update">修改個人資料</a> <a
								class="dropdown-item" href="/changepassword">修改密碼</a> <a
								class="dropdown-item" href="/logout">登出</a>

						</div></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<!-- 匿名者 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/login"
						aria-haspopup="true" aria-expanded="false">會員登入/註冊</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/sign_up">註冊</a>
						</div></li>
				</sec:authorize>
				<!-- 設定通知區塊 -->
				<sec:authorize access="hasRole('Member')">
					<!-- 會員可讀 -->
					<li class="nav-item dropdown"><jsp:include
							page="member/notification.jsp"></jsp:include></li>
					<li class="nav-item dropdown"><jsp:include
							page="member/onlinelist.jsp"></jsp:include></li>

				</sec:authorize>
				<!-- 設定私訊對話框 -->
				<sec:authorize access="hasRole('Member')">
					<div id="chatBox" class="" style="display: none">
						<jsp:include page="member/chatbox.jsp"></jsp:include>
					</div>
				</sec:authorize>

			</ul>
			<!-- <form class="form-inline">
				<div class="top_search_con">
					<input class=" mr-sm-2" type="text" placeholder="站內搜尋 ...">
					<span class="top_search_icon"> <i class="icon-magnifier"></i>
					</span>
				</div>
			</form> -->

			<jsp:include page="shopping/shoppingCart.jsp"></jsp:include>

			<!-- Mobile Menu Start -->
			<ul class="wpb-mobile-menu">
				<li><a class="active" href="index.jsp">首頁</a></li>
				<li><a href="/news/newsIndex">最新消息</a> 
				<sec:authorize access="hasRole('Admin')">
					<ul>
						<li><a href="/news/insertNews">新增活動</a></li>
						<li><a href="/news/manage">管理活動</a></li>
					</ul>
				</sec:authorize>
				<li><a href="/halfway">中途專區</a>
					<ul>
						<li><a href="/halfway/addAnimal">我要送養</a></li>
						<li><a href="/halfway">動物搜尋</a></li>
						<li><a href="/halfway/showAdoption">認養程序處理</a></li>
					</ul></li>
				<li><a href="/product/index">寵物市集</a>
					<ul>
						<li><a href="/product/index">新品上市</a></li>
						<sec:authorize access="hasRole('Member')">
							<li><a href="/product/insert">商品上架</a></li>
							<li><a href="/product/maintain">商品管理</a></li>
						</sec:authorize>
					</ul></li>
				<li><a href="#">寵物沙龍</a>
					<ul>
						<li><a href="/appointment/firstPage">沙龍簡介</a></li>
						<sec:authorize access="hasRole('Admin')">
							<li><a href="/salonAdminReservation">訂單編輯</a></li>
						</sec:authorize>
						<li><a href="/reservation">預約</a></li>

					</ul></li>
				<li><a href="/hospital">寵物醫院</a>
					<ul>
						<li><a href="/hospital">各區醫院</a></li>
						<li><a href="/findorder">預約結果查詢</a></li>
						<li><a href=""></a></li>
					</ul></li>
				<li><a href="/forum/findAll">部落格分享</a></li>

				<sec:authorize access="hasRole('Admin')">
					<!-- 管理員可讀 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="/user/<sec:authentication property="principal.username"/>"
						aria-haspopup="true" aria-expanded="false"> <sec:authentication
								property="principal.username" /> 您好
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/admin/member">後台管理</a> <a
								class="dropdown-item" href="/mailto">寄信</a> <a
								class="dropdown-item" href="/logout">登出</a>

						</div></li>
				</sec:authorize>



				<sec:authorize access="hasRole('Member')">
					<!-- 會員可讀 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="/user/<sec:authentication property="principal.username"/>"
						aria-haspopup="true" aria-expanded="false"> <sec:authentication
								property="principal.username" var="username" />${username} 您好
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/user/${username}">個人首頁</a> <a
								class="dropdown-item" href="/update">修改個人資料</a> <a
								class="dropdown-item" href="/changepassword">修改密碼</a> <a
								class="dropdown-item" href="/logout">登出</a>

						</div></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<!-- 匿名者 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/login"
						aria-haspopup="true" aria-expanded="false">會員登入/註冊</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/sign_up">註冊</a>
						</div></li>
				</sec:authorize>
				<sec:authorize access="hasRole('Member')">
					<!-- 會員可讀 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/queue"
						aria-haspopup="true" aria-expanded="false"> <!-- 										<i title="通知" class="fa fa-globe xs" style="color:#9C3"></i> -->
							<i title="通知" class="fa fa-globe icon-xs" style="color: #9C3"></i>
							<!-- 										<i title="通知" class="fa fa-globe icon-sm" style="color:#9C3"></i> -->
					</a>
						<div class="dropdown-menu"></div></li>
				</sec:authorize>
			</ul>
			<!-- Mobile Menu End -->
		</div>
	</nav>
</body>

</html>
