<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

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
		<title>

			後台管理

		</title>

		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">

		<link href="../admin/assets/css/toolkit-inverse.css" rel="stylesheet">


		<link href="../admin/assets/css/application.css" rel="stylesheet">

		<style>
			/* note: this is a hack for ios iframe for bootstrap themes shopify page */

			/* this chunk of css is not part of the toolkit :) */

			body {
				width: 1px;
				min-width: 100%;
				*width: 100%;
			}
		</style>
	</head>


	<body>
		<!-- adminNavbar Starts -->
		<jsp:include page="../../admin/adminNavbar.jsp"></jsp:include>
		<!-- adminNavbar ends -->

		<!-- 每頁不同的內容從此開始 -->
		<div class="container">
			<div class="row">

				<div class="col-md-12 content">
					<div class="dashhead">
						<div class="dashhead-titles">
							<a href="/admin/member">
								<h2 class="dashhead-title">認養文章管理</h2>
							</a>
						</div>

					</div>

					<div class="flextable table-actions">
						<div class="flextable-item flextable-primary">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" class="form-control input-block" placeholder="搜尋會員">
								<span class="icon icon-magnifying-glass"></span>
							</div>
						</div>
					</div>
					<!-- Table Starts  -->
					<div class="table-responsive">
						<table class="table" data-sort="table" id="table1">
							<thead>
								<tr>
									<th>編號</th>
									<th>綽號</th>
									<th>種類</th>
									<th>性別</th>
									<th>張貼日期</th>
									<th>更新日期</th>
									<th>飼主帳號</th>
									<th>認養會員帳號</th>
									<th>狀態</th>
									<th>管理</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>

					<form id="statusForm">
						<input type="hidden" name="id">
						<input type="hidden" name="status">
					</form>
				</div>
			</div>
		</div>


		<!-- 每頁不同內容從此結束 -->

		<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>

		<!-- <script src="../admin/assets/js/jquery.min.js"></script> -->
		<script src="../admin/assets/js/tether.min.js"></script>
		<script src="../admin/assets/js/chart.js"></script>
		<script src="../admin/assets/js/tablesorter.min.js"></script>
		<script src="../admin/assets/js/toolkit.js"></script>
		<script src="../admin/assets/js/application.js"></script>
		<script src="http://malsup.github.com/jquery.form.js"></script>

		<script>
			$(document).ready(function () {

				function formatDate(date) {
					var monthNames = [
						"January", "February", "March",
						"April", "May", "June", "July",
						"August", "September", "October",
						"November", "December"
					];
					var day = date.getDate();
					var monthIndex = date.getMonth();
					var year = date.getFullYear();

					return year + '/' + monthNames[monthIndex] + '/' + day + ' ';
				}



				$.getJSON('/halfway/animal', { "pageNo": 1, "size": 20 }, function (data) {
					console.log(data);
					$('#table1>tbody').empty();
					$.each(data.data, function (i, animal) {
						var cell1 = $("<td></td>").text(animal.id);
						var cell2 = $("<td></td>").text(animal.name);//綽號

						var cell3 = $("<td></td>").text(animal.specie);//種類
						var cell4 = $("<td></td>").text(animal.gender);//性別
						var cell5 = $("<td></td>").text(formatDate(new Date(animal.found)));//日期
						var cell6 = $("<td></td>").text(formatDate(new Date(animal.upload)));//更新
						var cell7 = $("<td></td>").text(animal.member.account);//飼主帳號
						var cell10 = $("<td></td>").attr({ 'id': 'setMember'+animal.id }).text("無");//認養會員帳號
						var cell8 = $("<td></td>").text(animal.status).attr({ 'id': 'td_status' + animal.id });



						if (animal.disabled == false) {
							var span01 = $('<span></span>').addClass('icon icon-eye');
						} else {
							var span01 = $('<span></span>').addClass('icon icon-erase');
						}

						var button01 = $('<button></button>').attr({ 'type': 'button', 'title': '上架/下架', 'status': animal.disabled, 'id': 'button' + animal.id, 'value': animal.id }).addClass('btn btn-outline-primary').append(span01);
						var divb1 = $('<div></div>').addClass('btn-group').append([button01]);
						var divf1 = $('<div></div>').addClass('flextable-item').append(divb1);

						var cell9 = $('<td></td>').append(divf1);

						var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell10, cell8, cell9]);

						$('#table1>tbody').append(row);
						$('#table1').trigger("update");


						$.getJSON('/halfway/acceptrecord', { "pageNo": 1, "size": 20 }, function (datas) {
							$.each(datas.data, function (i, record) {
									$("#setMember"+record.adoption.animal.id).text(record.adoption.member.account);

								if (record.success == true){
									$("#td_status"+ record.adoption.animal.id).text("認養成功");
								} else if (record.success == false){
									$("#td_status"+ record.adoption.animal.id).text("已被檢舉");
								} else {
									$("#td_status"+ record.adoption.animal.id).text("程序進行中");
								}
							});							

						});

					});

				}	 //end getJSON
				)
			});
      // execute/clear BS loaders for docs
//      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})

		</script>
		<script>
			$(document).ready(function () {

				$(document).on('click', 'button[title="上架/下架"]', function () {
					var id = $(this).val();
					$('input[name="id"]').attr('value', $(this).val());
					if ($(this).attr('status') == '開放認養') {
						$('input[name="status"]').attr('value', '開放認養');
						console.log('status:' + $(this).attr('status'));

					}
					else {
						$('input[name="status"]').attr('value', '下架');
					}
					console.log($(this).val());
					console.log('status:' + $(this).attr('status'));
					console.log('id:' + $(this).attr('id'))

					var formData = new FormData(document.getElementById("statusForm"));

					for (var pair of formData.entries()) {
						console.log(pair[0] + ',' + pair[1])
					}

					$.ajax({
						type: "POST",
						url: "/deleteanimal",
						data: formData,
						contentType: false,
						processData: false,
						success: function (result) {
							$('#button' + result.id).attr('status', result.status);
							$('#button' + result.id + '>span').toggleClass('icon-erase icon-eye');
							if (result.status == '開放認養') {
								$('#td_status' + result.id).text('開放認養')
							}
							else {
								$('#td_status' + result.id).text('下架')

							}
							alert('#button' + result.id + ' change its status')
						}
					});
				});
			});

		</script>
	</body>

	</html>