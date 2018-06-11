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
							<h2 class="dashhead-title">部落格管理</h2>
						</div>

						<div class="btn-toolbar dashhead-toolbar">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" value="01/01/15 - 01/08/15" class="form-control" data-provide="datepicker">
								<span class="icon icon-calendar"></span>
							</div>
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
									<th>文章標題</th>
									<th>發文時間</th>

									<th>點擊次數</th>
									<th>發文者編號</th>
									<th>管理
										<!-- 						<div class="btn-group"> -->
										<!-- 							<button type="button" class="btn btn-outline-primary" title="修改"> -->
										<!-- 								<span class="icon icon-pencil"></span> -->
										<!-- 							</button> -->
										<!-- 							<button type="button" class="btn btn-outline-primary" title="刪除"> -->
										<!-- 								<span class="icon icon-erase"></span> -->
										<!-- 							</button> -->
										<!-- 						</div> -->
									</th>
								</tr>
							</thead>
							<tbody>
								<!-- 			<tr> -->
								<!-- 					<td><p type="text" class="select-row">#10001</p></td> -->
								<!-- 					<td>ViewSonic</td> -->
								<!-- 					<td>Alex Wu</td> -->
								<!-- 					<td>Alex</td> -->
								<!-- 					<td>09123456789</td> -->
								<!-- 					<td>alex@gmail.com</td> -->
								<!-- 					<td>台北市大安區信義路三段100號</td> -->
								<!-- 					<td>on</td> -->
								<!-- 				</tr> -->
							</tbody>
						</table>
					</div>

					<!-- Table Ends -->

					<form id="statusForm">
						<input type="hidden" name="id">
						<input type="hidden" name="status">
					</form>


					<div class="text-center">
						<nav>
							<form id="pageForm">
								<ul class="pagination">
									<li>第
										<input id="pageNo" type="text" style="width:40px;"> 頁
									</li>

									<li style="margin-left:10px;">一頁
										<input id="size" type="text" style="width:40px;"> 筆
									</li>
									<li style="margin-left:10px;">
										<!-- <input id="btn" class="btn-outline-primary" type="button" value="刷新"> -->
										<!-- <div class="flextable-item"> -->
										<div class="btn-group">
											<button id="btn" type="button" class="btn btn-outline-primary" title="刷新">
												<span class="icon icon-cycle"></span>
											</button>
											<!-- </div> -->
										</div>
									</li>
								</ul>
							</form>
							<!-- <ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">上一頁</span>
			</a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">下一頁</span>
			</a></li>
		</ul> -->
						</nav>
					</div>

				</div>
			</div>
		</div>
		<!-- Modal Starts -->
		<div id="docsModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog">
				<div class="modal-content">

					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">樣板示意</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>您已經位於樣板頁面</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">好的，了解</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Ends -->

		<!-- 每頁不同內容從此結束 -->


		<script src="../admin/assets/js/jquery.min.js"></script>
		<script src="../admin/assets/js/tether.min.js"></script>
		<script src="../admin/assets/js/chart.js"></script>
		<script src="../admin/assets/js/tablesorter.min.js"></script>
		<script src="../admin/assets/js/toolkit.js"></script>
		<script src="../admin/assets/js/application.js"></script>
		<script>
			var pageNo = 1;
			$(document).ready(function () {
				$(document).on('click', 'button[title="封鎖/解除"]', function () {
					console.log($(this).val());
					console.log($(this).attr('status'));
					if ($(this).attr('status') == null) {
						$('input[name="status"]').attr('value', false);
					} else {
						$('input[name="status"]').attr('value', $(this).attr('status'));
					}
					$('input[name="id"]').attr('value', $(this).val());
					var formData = new FormData(document.getElementById("statusForm"));
					$.ajax({
						type: "POST",
						url: "/articles",
						data: formData,
						contentType: false,
						processData: false,
						success: function (result) {
							console.log(result.status);
							$('#button' + result.id).attr('status', result.status);
							$('#button' + result.id + '>span').toggleClass('icon-erase icon-eye');
							console.log($('#button' + result.id + '>span').attr('class'));
						}
					});
				});

				$(document).on('click', '#btn', function () {
					$.getJSON('/articles', { "pageNo": $('#pageNo').val(), "size": $('#size').val() }, function (data) {
						console.log(data);
						$('#table1>tbody').empty();
						$.each(data, function (i, article) {
							var cell1 = $("<td></td>").text(article.id);
							var cell2 = $("<td></td>").text(article.subject);
							var cell3 = $("<td></td>").text(formatDate(new Date(article.postTime)));
							var cell4 = $("<td></td>").text(article.click);
							var cell5 = $("<td></td>").text(article.member.account);
							if (article.status == false) {
								var span02 = $('<span></span>').addClass('icon icon-eye');
							} else {
								var span02 = $('<span></span>').addClass('icon icon-erase');
							}
							var button02 = $('<button></button>').attr({ 'type': 'button', 'title': '封鎖/解除', 'value': article.id, 'status': article.status, 'id': 'button' + article.id }).addClass('btn btn-outline-primary').append(span02);
							var divb2 = $('<div></div>').addClass('btn-group').append([button02]);
							var divf2 = $('<div></div>').addClass('flextable-item').append(divb2);
							var cell09 = $('<td></td>').append([divf2]);
							var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell09]);
							$('#table1>tbody').append(row);
							$('#table1').trigger("update");
						});
					}
					)
				});

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
					var HH = ("00" + date.getHours()).slice(-2);
					var mm = ("00" + date.getMinutes()).slice(-2);

					return year + '/' + monthNames[monthIndex] + '/' + day + ' ' + HH + ':' + mm;
				}


				$.getJSON('/articles', { "pageNo": pageNo, "size": 30 }, function (data) {
					console.log(data);
					$('#table1>tbody').empty();
					$.each(data, function (i, article) {
						var cell1 = $("<td></td>").text(article.id);
						var cell2 = $("<td></td>").text(article.subject);
						var cell3 = $("<td></td>").text(formatDate(new Date(article.postTime)));
						var cell4 = $("<td></td>").text(article.click);
						var cell5 = $("<td></td>").text(article.member.account);
						if (article.status == false) {
							var span02 = $('<span></span>').addClass('icon icon-eye');
						} else {
							var span02 = $('<span></span>').addClass('icon icon-erase');
						}
						var button02 = $('<button></button>').attr({ 'type': 'button', 'title': '封鎖/解除', 'value': article.id, 'status': article.status, 'id': 'button' + article.id }).addClass('btn btn-outline-primary').append(span02);
						var divb2 = $('<div></div>').addClass('btn-group').append([button02]);
						var divf2 = $('<div></div>').addClass('flextable-item').append(divb2);
						var cell09 = $('<td></td>').append([divf2]);
						var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell09]);
						$('#table1>tbody').append(row);
						$('#table1').trigger("update");
					});
				}
				)
			});
      // execute/clear BS loaders for docs
//      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})

		</script>
	</body>

	</html>