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
								<h2 class="dashhead-title">會員管理</h2>
							</a>
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
						<div class="flextable-item">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-primary" title="寄送電子郵件" id="sendMailManyAccount" data-toggle='modal' data-target="#exampleModalMany">
									<span class="icon icon-mail"></span>
								</button>
							</div>
						</div>

						<div class="flextable-item">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-primary" title="修改">
									<span class="icon icon-pencil"></span>
								</button>
								<button type="button" class="btn btn-outline-primary" title="刪除">
									<span class="icon icon-erase"></span>
								</button>
							</div>
						</div>
					</div>
					<!-- Table Starts  -->
					<div class="table-responsive">
						<table class="table" data-sort="table" id="table1">
							<thead>
								<tr>
									<th>
										<input type="checkbox" class="select-all" id="selectAll">
									</th>
									<th>會員編號</th>
									<th>會員帳號</th>
									<th>會員姓名</th>
									<th>會員暱稱</th>
									<th>會員手機</th>
									<th>會員信箱</th>
									<th>會員地址</th>
									<th>會員狀態</th>
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

					<!-- 	<div class="text-center"> -->
					<!-- 		<nav> -->
					<!-- 		<ul class="pagination"> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#" -->
					<!-- 				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span -->
					<!-- 					class="sr-only">上一頁</span> -->
					<!-- 			</a></li> -->
					<!-- 			<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#">2</a></li> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#">3</a></li> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#">4</a></li> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#">5</a></li> -->
					<!-- 			<li class="page-item"><a class="page-link" href="#" -->
					<!-- 				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span -->
					<!-- 					class="sr-only">下一頁</span> -->
					<!-- 			</a></li> -->
					<!-- 		</ul> -->
					<!-- 		</nav> -->
					<!-- 	</div> -->

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
		<!-- Modal open -->
		<div class="modal fade" id="trueModal" tabindex="-1" role="dialog" aria-labelledby="trueModalLabel" aria-hidden="true">
			<h5 class="modal-title" id="trueModalLabel">修改權限</h5>
			<button id="off" class="btn01 btn-common">確定封鎖</button>
			<button id="on" class="btn02 btn-common">取消封鎖</button>
			<button data-dismiss="modal" aria-label="Close" class="btn btn-common">取消</button>

		</div>


		<!--Modal send many Mail-->
		<div class="modal fade" id="exampleModalMany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">New message For Many Member</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="insertformForMany">
							<!-- <div class="form-group">
				  <label for="recipient-name" class="col-form-label">recipient:</label>
				  <input type="hidden" class="form-control recipient-name" id="accounts" name="accounts" readonly="readonly">
				</div> -->

							<div class="form-group">
								<label for="subject" class="col-form-label">Subject:</label>
								<input type="text" class="form-control" id="subject" name="subject">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">Message:</label>
								<textarea class="form-control" id="context" name="context"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="btn_many">Send message</button>
					</div>
				</div>
			</div>
		</div>


		<!--Modal send Mail-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">New message</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="insertform">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">recipient:</label>
								<input type="text" class="form-control recipient-name" id="account" name="account" readonly="readonly">
							</div>

							<div class="form-group">
								<label for="subject" class="col-form-label">Subject:</label>
								<input type="text" class="form-control" id="subject" name="subject">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">Message:</label>
								<textarea class="form-control" id="context" name="context"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="btn1">Send message</button>
					</div>
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

				$('#btn1').click(function () {

					var formData = new FormData(document.getElementById("insertform"));
					console.log(formData);

					$.ajax({
						type: "POST",
						url: "/api/member/all/adminsendmail",
						data: formData,
						contentType: false,
						processData: false,
						//     		    dataType: "json",
						success: function () {
							alert("成功");
							//	$('#exampleModal').modal('hide')
						}
					});
				});

				$('#trueModal').on('show.bs.modal', function (event) {
					var button = $(event.relatedTarget) // Button that triggered the modal
					var account = button.data('whatever') // Extract info from data-* attributes
					// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
					// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
					var modal = $(this)
					modal.find('.modal-title').text('change status: ' + account)
					modal.find('#account').val(account)
				})



				$('#exampleModal').on('show.bs.modal', function (event) {
					var button = $(event.relatedTarget) // Button that triggered the modal
					var recipient = button.data('whatever') // Extract info from data-* attributes
					// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
					// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
					var modal = $(this)
					modal.find('.modal-title').text('New message to ' + recipient)
					modal.find('#account').val(recipient)
				})


				$.getJSON('/api/member/all', {}, function (data) {
					console.log(data);
					$('#table1>tbody').empty();
					$.each(data, function (i, member) {
						var cell1 = $('<td></td>').html('<input type="checkbox" id="id_check" class="select-row" value="' + member.account + '">');
						var cell2 = $("<td></td>").text(member.id);
						var cell3 = $("<td></td>").text(member.account);

						var cell4 = $("<td></td>").text(member.name);
						var cell5 = $("<td></td>").text(member.nickname);
						var cell6 = $("<td></td>").text(member.cell);
						var cell7 = $("<td></td>").text(member.email);
						var cell8 = $("<td></td>").text(member.address);

						if (member.status == 0) {
							var cell9 = $("<td></td>").text('close');
						}
						else {
							var cell9 = $("<td></td>").text('on');
						}

						var span01 = $('<span></span>').addClass('icon icon-pencil');
						var button01 = $('<button></button>').attr({ 'type': 'button', 'title': '封鎖', 'data-modal': 'true', 'data-target': '#errModal', 'data-whatever': member.account }).addClass('btn btn-outline-primary').append(span01);
						//     	              	var span02=$('<span></span>').addClass('icon icon-erase');
						// 						var button02=$('<button></button>').attr({'type':'button','title':'刪除'}).addClass('btn btn-outline-primary').append(span02);
						var span03 = $('<span></span>').addClass('icon icon-mail');
						var button03 = $('<button></button>').attr({ 'type': 'button', 'title': '寄送電子郵件', 'data-toggle': 'modal', 'data-target': '#exampleModal', 'data-whatever': member.account }).addClass('btn btn-outline-primary').append(span03);

						var divb1 = $('<div></div>').addClass('btn-group').append([button01]);
						var divf1 = $('<div></div>').addClass('flextable-item').append(divb1);
						// 	  					var divb2=$('<div></div>').addClass('btn-group').append([button02]);
						// 						var divf2=$('<div></div>').addClass('flextable-item').append(divb2);
						var divb3 = $('<div></div>').addClass('btn-group').append([button03]);
						var divf3 = $('<div></div>').addClass('flextable-item').append(divb3);



						var cell10 = $('<td></td>').append([divf1, divf3]);

						var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10]);

						$('#table1>tbody').append(row);
					});


				}	 //end getJSON
				)
			});
      // execute/clear BS loaders for docs
//      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})

		</script>

		<script>
			$(document).ready(function () {
				$('#sendMailManyAccount').click(function () {
					$('.select-row').change(function () {
						//讀出所有被勾選checkbox的值
						var getcheckbox = [];
						$(':checked[name="id_check"]').each(function () {
							getcheckbox.push($(this).val());
							cosole.log("getcheckbox = " + getcheckbox);
						});
					})


					var formData = new FormData(document.getElementById("insertformForMany"));
					console.log(formData);
					$.ajax({
						type: "POST",
						url: "/api/member/all/adminsendmanymail",
						data: formData.append("account", getcheckbox),
						contentType: false,
						processData: false,
						//     		    dataType: "json",
						success: function () {
							alert("成功_寄送");
							//	$('#exampleModal').modal('hide')
						}
					});




					$('#exampleModalMany').on('show.bs.modal', function (event) {
						var button = $(event.relatedTarget) // Button that triggered the modal
						var account = getcheckbox // Extract info from data-* attributes
						console.log("account:getcheckbox " + account)
						// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
						// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
						var modal = $(this)
						//modal.find('.modal-title').text('change status: ' + account)
						modal.find('#accounts').val(account)
					})


				});




			});
		</script>
	</body>

	</html>