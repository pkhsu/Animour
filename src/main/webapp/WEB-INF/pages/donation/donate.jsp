<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=BIG5">

<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>捐款芳名錄</title>

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

<style>
.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
	background-color: transparent
}

.table td, .table th {
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6
}

.table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6
}

.table tbody+tbody {
	border-top: 2px solid #dee2e6
}

.table .table {
	background-color: #fff
}

.table-sm td, .table-sm th {
	padding: .3rem
}

.table-bordered {
	border: 1px solid #dee2e6
}

.table-bordered td, .table-bordered th {
	border: 1px solid #dee2e6
}

.table-bordered thead td, .table-bordered thead th {
	border-bottom-width: 2px
}

.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(0, 0, 0, .05)
}

.table-hover tbody tr:hover {
	background-color: rgba(0, 0, 0, .075)
}

.table-primary, .table-primary>td, .table-primary>th {
	background-color: #b8daff
}

.table-hover .table-primary:hover {
	background-color: #9fcdff
}

.table-hover .table-primary:hover>td, .table-hover .table-primary:hover>th
	{
	background-color: #9fcdff
}

.table-secondary, .table-secondary>td, .table-secondary>th {
	background-color: #d6d8db
}

.table-hover .table-secondary:hover {
	background-color: #c8cbcf
}

.table-hover .table-secondary:hover>td, .table-hover .table-secondary:hover>th
	{
	background-color: #c8cbcf
}

.table-success, .table-success>td, .table-success>th {
	background-color: #c3e6cb
}

.table-hover .table-success:hover {
	background-color: #b1dfbb
}

.table-hover .table-success:hover>td, .table-hover .table-success:hover>th
	{
	background-color: #b1dfbb
}

.table-info, .table-info>td, .table-info>th {
	background-color: #bee5eb
}

.table-hover .table-info:hover {
	background-color: #abdde5
}

.table-hover .table-info:hover>td, .table-hover .table-info:hover>th {
	background-color: #abdde5
}

.table-warning, .table-warning>td, .table-warning>th {
	background-color: #ffeeba
}

.table-hover .table-warning:hover {
	background-color: #ffe8a1
}

.table-hover .table-warning:hover>td, .table-hover .table-warning:hover>th
	{
	background-color: #ffe8a1
}

.table-danger, .table-danger>td, .table-danger>th {
	background-color: #f5c6cb
}

.table-hover .table-danger:hover {
	background-color: #f1b0b7
}

.table-hover .table-danger:hover>td, .table-hover .table-danger:hover>th
	{
	background-color: #f1b0b7
}

.table-light, .table-light>td, .table-light>th {
	background-color: #fdfdfe
}

.table-hover .table-light:hover {
	background-color: #ececf6
}

.table-hover .table-light:hover>td, .table-hover .table-light:hover>th {
	background-color: #ececf6
}

.table-dark, .table-dark>td, .table-dark>th {
	background-color: #c6c8ca
}

.table-hover .table-dark:hover {
	background-color: #b9bbbe
}

.table-hover .table-dark:hover>td, .table-hover .table-dark:hover>th {
	background-color: #b9bbbe
}

.table-active, .table-active>td, .table-active>th {
	background-color: rgba(0, 0, 0, .075)
}

.table-hover .table-active:hover {
	background-color: rgba(0, 0, 0, .075)
}

.table-hover .table-active:hover>td, .table-hover .table-active:hover>th
	{
	background-color: rgba(0, 0, 0, .075)
}

.table .thead-dark th {
	color: #fff;
	background-color: #212529;
	border-color: #32383e
}

.table .thead-light th {
	color: #495057;
	background-color: #e9ecef;
	border-color: #dee2e6
}

.table-dark {
	color: #fff;
	background-color: #212529
}

.table-dark td, .table-dark th, .table-dark thead th {
	border-color: #32383e
}

.table-dark.table-bordered {
	border: 0
}

.table-dark.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(255, 255, 255, .05)
}

.table-dark.table-hover tbody tr:hover {
	background-color: rgba(255, 255, 255, .075)
}
</style>

</head>
<body>

	<!-- 頁面上方連結 ，會蓋住後面的字-->
	<header id="header-wrap">
		<!-- Navbar Starts -->
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	<br>
	<br>
	<br>
	<br>

	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">

				<aside class="widget tag-cloud wow fadeIn" data-wow-delay="0.3s">
					<div class="login button">
						<ul>
							<li><a href="/login">會員登入</a></li>
						</ul>
					</div>
				</aside>
				<br> <br>
				<aside class="widget subscribe-widget wow fadeIn"
					data-wow-delay="0.3s">
					<h2 class="widget-title">資料填寫</h2>
					<div class="donor">
						<p>請詳細填寫</p>
					</div>
				</aside>

				<aside>

					<br> Email <input id='num' name="id" value="" type="text"
						size="50" style="text-align: left">
					<p>
						<Br> 帳號 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 密碼 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 密碼確認 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 真實姓名 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 顯示姓名 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 連絡電話 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 生日 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 性別 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br> 捐款金額 <input id='num' name="id" value="" type="text"
							size="14" style="text-align: left">
					<p>
						<Br>
						<button type="submit" class="mt-10 btn btn-common btn-block">確認填寫完畢</button>
						<br>
					<hr>
					<br>
					<h5>目前最新的六筆捐款紀錄</h5>
					<br> <br>
				</aside>

			</div>
		</div>
	</section>


</body>

<!-- footers  -->
<jsp:include page="../footer.jsp"></jsp:include>


</html>