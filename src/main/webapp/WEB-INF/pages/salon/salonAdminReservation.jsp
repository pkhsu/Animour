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
		<jsp:include page="../admin/adminNavbar.jsp"></jsp:include>
		<!-- adminNavbar ends -->

		<!-- 每頁不同的內容從此開始 -->
		<div class="container">
			<div class="row">

				<div class="col-md-12 content">
					<div class="dashhead">
						<div class="dashhead-titles">
							<h2 class="dashhead-title">預約紀錄</h2>
						</div>

						<div class="btn-toolbar dashhead-toolbar">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" value="- 06/01/2018" class="form-control" data-provide="datepicker">

								<span class="icon icon-calendar"></span>
							</div>
						</div>
					</div>

					<!-- <div class="flextable table-actions">
						<div class="flextable-item flextable-primary">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" class="form-control input-block" placeholder="搜尋紀錄">
								<span class="icon icon-magnifying-glass"></span>

							</div>
							<button id="confirmEdit" name="id" class="btn btn-outline-primary" style="text-align: right">編輯完成</button>

						</div>



					</div> -->
					<!-- Table Starts  -->
					<div class="table-responsive">
						<table class="table" data-sort="table" id="table1">
							<thead>
								<tr>
									<th>編號</th>
									<th>預約日期</th>
									<th>時段</th>
									<th>內容</th>
									<th>設計師</th>
									<th>耗時</th>
									<th>消費金額</th>
									<th>付款狀態</th>
									<th style="display: none">ID</th>
									<th>會員帳號</th>
									<th id="notNeed">編輯</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<!-- <td>
										<input type="checkbox" class="select-row">
									</td> -->
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<form style="display: none" id="form1">





					</form>

					<!-- Table Ends -->

					<div class="text-center" style="display: none;">
						<nav>
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">上一頁</span>
									</a>
								</li>
								<li class="page-item active">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">3</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">4</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">5</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">下一頁</span>
									</a>
								</li>
							</ul>
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
			// execute/clear BS loaders for docs
			$(function () { while (window.BS && window.BS.loader && window.BS.loader.length) { (window.BS.loader.pop())() } })
		</script>

		<script>
			var datas;
			var pageNo = 0;
			$(document).ready(function () {
				initSubmitForm();

			});
			function importAgain() {
				var buttonImport = $('#importbutt');
				$('#importbutt').remove();
				initSubmitForm();
			}

			var initSubmitForm = function () {
				var reservationId;
				$(document).ready(function () {
					//抓資料
					$.getJSON('/reservations', { "pageNo": pageNo },
						function (datas) {
							console.log(datas);
							$.each(datas, function (i, reservation) {
								var cell1 = $('<td id="NewEdit" class="inputContent"></td>').append(reservation.id);
								var cell2 = $('<td id="cellEdit2" class="inputContent"></td>').append(reservation.appointDate);
								var cell3 = $('<td id="cellEdit3" class="inputContent"></td>').text(reservation.frontTime);
								var cell4 = $('<td id="cellEdit4" class="inputContent"></td>').text(reservation.content);
								var cell5 = $('<td id="cellEdit5" class="inputContent"></td>').text(reservation.designer);
								var cell6 = $('<td id="cellEdit6" class="inputContent"></td>').text(reservation.totalTime);
								var cell7 = $('<td id="cellEdit7" class="inputContent"></td>').text(reservation.price);
								var cell8 = $('<td id="cellEdit8" class="inputContent"></td>').text(reservation.payment)
								var cell9 = $('<td id="cellEdit9" class="inputContent" style="display: none" ></td>').text(reservation.member.id)
								var cell10 = $('<td id="" class="inputContent"></td>').text(reservation.member.account)
								// var p = $('<p></p>')
								var cell11 = $('<td id="addNewButton"><button type="button" id="editButton" class="btn btn-outline-primary" title="修改"><span class="icon icon-pencil"></span></button><button type="button" id="deleteButton" class="btn btn-outline-primary" title="刪除"><span class="icon icon-erase"></span></button></td>')


								var row = $('<tr id="rowNumber' + reservation.id + '"></tr>').append([cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11]);
								$('#table1').append(row);
							})



						}).done(function () {

							pageNo++;
							//判斷下一次取回的json是否為空(是否為最後一頁)
							$.getJSON('/reservations', { "pageNo": pageNo }, function (datas) {
								if (datas.length != 0) {
									var buttonImport = $("<button></button>").attr({ 'type': 'button', 'id': 'importbutt', 'style': 'width: 100%' }).addClass("btn btn-outline-primary").append("載入更多資料");
									$('#table1').append(buttonImport);
									document.getElementById("importbutt").addEventListener("click", importAgain);
								}
							})


						})
					//刪除功能
					$(document).on("click", '#deleteButton', function () {

						var catchIdValue = $(this).parents('tr').find('#NewEdit').text();
						$(this).parents('tr').remove();
						$.ajax({
							url: '/reservations/reservation/' + catchIdValue,
							type: 'delete',
							success: function (result) {
								console.log("It's work")
							}

						})
					})
					//編輯按鈕

				})
			};
			//編輯完成,並恢復
			$("#confirmEdit").click(function () {



			})


			$(document).on("click", '#editButton', function () {
				var catchIdValue = $(this).parents('tr').find('#NewEdit').text();

				// var data1 = new FormData(document.getElementById("myform1"));
				$(this).attr({ 'style': 'display: none' });
				$(this).parents('td').find('#deleteButton').remove();
				var button = $('<button type="button" id="" class="btn btn-outline-primary editFinish" title="修改"><span style="font-size:0.5px">done</span>')
				$(this).parent().append(button);
				$(this).parents('tr').find('.inputContent').on("dblclick", function () {

					if (window.$currEditing)
						finishEditing($currEditing);
					var $cell = $(this);
					var $inp = $('<input type="text" style="width:100px;height:30px;"/>');
					$inp.val($cell.text());
					$cell.attr('name', 'cellEditor').html('').append($inp);
					$inp[0].select();
					window.$currEditing = $inp;
					console.log("test...")
				}).on('click', function () {
					if (window.$currEditing && $currEditing.parent()[0] != this)
						finishEditing($currEditing);
				});

				$("input[name*='cellEditor']").on("keydown", function (e) {
					console.log(e.which);
					if (e.which == 13 || e.which == 9)
						finishEditing($(this));
				});
				function finishEditing($inp) {
					$inp.parent().removeAttr("cellEditor").text($inp.val());
					window.$currEditing = null;
				}
				var formData;
// 				$(document).on("click", '#editFinish', function () {
$('.editFinish').click(function(){
	

					valueId = $(this).parents("tr").find('#NewEdit').text();
					valueReservationDate = $(this).parents("tr").find('#cellEdit2').text();
					valueFrontTime = $(this).parents("tr").find('#cellEdit3').text();
					valueContent = $(this).parents("tr").find('#cellEdit4').text();
					valueDesigner = $(this).parents("tr").find('#cellEdit5').text();
					valueTotalTime = $(this).parents("tr").find('#cellEdit6').text();
					valuePrice = $(this).parents("tr").find('#cellEdit7').text();
					valuePayment = $(this).parents("tr").find('#cellEdit8').text();
					valueMemberId = $(this).parents("tr").find('#cellEdit9').text();

					// $.getJSON('/reservations/reservation/' + catchIdValue, { "pageNo": pageNo }, function (reservation) {
					var cell = $('<input id="inputId" name="id" value="' + valueId + '"></input>')
					var cell1 = $('<input id="inputId" name="appointDate" value="' + valueReservationDate + '"></input>')
					var cell2 = $('<input id="inputId" name="frontTime" value="' + valueFrontTime + '"></input>')
					var cell3 = $('<input id="inputId" name="content" value="' + valueContent + '"></input>')
					var cell4 = $('<input id="inputId" name="designer" value="' + valueDesigner + '"></input>')
					var cell5 = $('<input id="inputId" name="totalTime" value="' + valueTotalTime + '"></input>')
					var cell6 = $('<input id="inputId" name="price" value="' + valuePrice + '"></input>')
					var cell7 = $('<input id="inputId" name="payment" value="' + valuePayment + '"></input>')
					var cell8 = $('<input id="inputId" name="member_id" value="' + valueMemberId + '"></input>')

					$('#form1').append([cell, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8])
					// cell1, cell2, cell3, cell4, cell5, cell6, cell7

					
				var json;
				var object = {};
				formData = new FormData(document.getElementById("form1"));
				
				$.ajax({
					url: '/reservations/reservation/' + catchIdValue,
					contentType: false,
					processData: false,
					type: 'post',
					data: formData,
					success: function (result) {
					}

				}).done(function (datas) {
  						$('#form1 input').remove();

					console.log('變更成功');
				
				
			})
				})
				
				
				});
				
					// })
		</script>









	</body>

	</html>