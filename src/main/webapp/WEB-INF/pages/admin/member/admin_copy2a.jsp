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

<!-- 						<div class="btn-toolbar dashhead-toolbar"> -->
<!-- 							<div class="btn-toolbar-item input-with-icon"> -->
<!-- 								<input type="text" value="01/01/15 - 01/08/15" class="form-control" data-provide="datepicker"> -->
<!-- 								<span class="icon icon-calendar"></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>

					<div class="flextable table-actions">
<!-- 						<div class="flextable-item flextable-primary"> -->
<!-- 							<div class="btn-toolbar-item input-with-icon"> -->
<!-- 								<input type="text" class="form-control input-block" placeholder="搜尋會員"> -->
<!-- 								<span class="icon icon-magnifying-glass"></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<div class="flextable-item">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-primary" title="寄送電子郵件" id="sendMailManyAccount" data-toggle='modal' data-target="#exampleModalMany">
									<span class="icon icon-mail"></span>
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
									<th>編號</th>
									<th>帳號</th>
<!-- 									<th>姓名</th> -->
									<th>暱稱</th>
<!-- 									<th>手機</th> -->
<!-- 									<th>信箱</th> -->
									<th>地址</th>
									<th>狀態</th>
									<th>管理
									</th>
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

		<!--Modal send many Mail-->
		<div class="modal fade" id="exampleModalMany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">寄信給會員們</h5>
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
								<label for="subject" class="col-form-label">主旨:</label>
								<input type="text" class="form-control" id="subject" name="subject">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">訊息內容:</label>
								<textarea class="form-control" id="context" name="context"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">關閉</button>
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
						<h5 class="modal-title" id="exampleModalLabel">寄信給</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="btn_exampleModalLabel">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="insertform">
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">收件人:</label>
								<input type="text" class="form-control recipient-name" id="account" name="account" readonly="readonly">
							</div>

							<div class="form-group">
								<label for="subject" class="col-form-label">主旨:</label>
								<input type="text" class="form-control" id="subject" name="subject">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">內容:</label>
								<textarea class="form-control" id="context" name="context"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">關閉</button>
						<button type="button" class="btn btn-primary" id="btn1">Send message</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 每頁不同內容從此結束 -->
		
				<div class="modal" tabindex="-1" role="dialog" id='changeAccountStauts_modal'>
				  <div class="modal-dialog modal-sm" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title"></h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <p>已成功修改.</p>
				      </div>
				      <div class="modal-footer">
				      </div>
				    </div>
				  </div>
				</div>		
		
				<div class="modal" tabindex="-1" role="dialog" id='SendMailSuccess_modal' >
				  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
				    <div class="alert alert-primary">
				      <div class="alert alert-primary">
				        <h5 class="modal-title">	</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="alert alert-primary">
				        <p>成功寄送信件.</p>
				      </div>
				    </div>
				  </div>
				</div>	
		
		
		
		

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
// 							alert("成功");
// 							$('#exampleModal').modal('hide')
//  							$('#btn_exampleModalLabel').click()
						$('#SendMailSuccess_modal').modal('show')
						}
					});
				});


				$('#exampleModal').on('show.bs.modal', function (event) {
					var button = $(event.relatedTarget) // Button that triggered the modal
					var recipient = button.data('whatever') // Extract info from data-* attributes
					// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
					// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
					var modal = $(this)
					modal.find('.modal-title').text('寄信給　' + recipient)
					modal.find('#account').val(recipient)
				})


				$.getJSON('/api/member/all', {}, function (data) {
					console.log(data);
					$('#table1>tbody').empty();
					$.each(data, function (i, member) {
						var cell1 = $('<td></td>').html('<input type="checkbox" id="id_check" name="id_check" class="select-row" value="' + member.account + '">');
						var cell2 = $("<td></td>").text(member.id);
						var cell3 = $("<td></td>").text(member.account);

// 						var cell4 = $("<td></td>").text(member.name);
						var cell5 = $("<td></td>").text(member.nickname);
// 						var cell6 = $("<td></td>").text(member.cell);
// 						var cell7 = $("<td></td>").text(member.email);
						var cell8 = $("<td></td>").text(member.address);

						if (member.status == false) {
							var cell9 = $("<td></td>").text('off').attr({"id":'td_status'+member.id});
						}
						else {
							var cell9 = $("<td></td>").text('on').attr({"id":'td_status'+member.id});
						}
						
						if (member.status == false) {
							var span01 = $('<span></span>').addClass('icon icon-eye');
						} else {
							var span01 = $('<span></span>').addClass('icon icon-erase');
						}
						
						
						
						var button01 = $('<button></button>').attr({ 'type': 'button', 'title': '封鎖/解除', 'data-modal': 'true', 'data-whatever': member.id,'status':member.status ,'id':'button'+member.id, 'value':member.id}).addClass('btn btn-outline-primary').append(span01);
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

						var row = $('<tr></tr>').append([cell1, cell2, cell3,  cell5,  cell8, cell9, cell10]);
						//cell4 cell6, cell7,
						$('#table1>tbody').append(row);
						$('#table1').trigger("update");

					});


				}	 //end getJSON
				)
			});
      // execute/clear BS loaders for docs
//      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})

		</script>

		<script>
			$(document).ready(function () {

				var getcheckbox = [];
				console.log("getcheckbox 01= " + getcheckbox)
				$('#sendMailManyAccount').click(function () {
					//讀出所有被勾選checkbox的值
					$('input:checkbox:checked[name="id_check"]').each(function () {
						getcheckbox.push($(this).val());
					});
					$('#exampleModalMany').on('show.bs.modal', function (event) {
						var button = $(event.relatedTarget) // Button that triggered the modal
						var account = { 'accounts': getcheckbox } // Extract info from data-* attributes
						// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
						// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
						var modal = $(this)
						//modal.find('.modal-title').text('change status: ' + account)
						//	modal.find('#accounts').val(account)
					})

				})
				$('#btn_many').click(function () {
					var object = {};
					object['accounts'] = getcheckbox;
					object['subject'] = $("#subject").val();
					object['context'] = $("#context").val();

					// var formData = new FormData(document.getElementById("insertformForMany"));
					var json = JSON.stringify(object, null)
					console.log(json);


					$.ajax({
						type: "POST",
						url: "/api/member/all/adminsendmanymail",
						data: json,
						data: json,
						dataType: 'json',
						contentType: "application/json",
						success: function () {
							//alert('成功寄信給XXXX')
						$('#SendMailSuccess_modal').modal('show')
							
//							$('#exampleModal').modal('hide')
						}
					});

				});




			});
		</script>
		
		<script>
		$(document).ready(function () {
		$(document).on('click', 'button[title="封鎖/解除"]', function () {
			var id=$(this).val();
			$('input[name="id"]').attr('value', $(this).val());
			if ($(this).attr('status') == true){
				$('input[name="status"]').attr('value', true);
				console.log('status:'+$(this).attr('status'));

			}
			else{
				$('input[name="status"]').attr('value', false);					
			}
			console.log($(this).val());
			console.log('status:'+$(this).attr('status'));
			console.log('id:'+$(this).attr('id'))

			var formData = new FormData(document.getElementById("statusForm"));
			
			for(var pair of formData.entries()){
				console.log(pair[0]+','+pair[1])
			}
						
			$.ajax({
				type: "POST",
				url: "/api/member/all/deletemember",
				data: formData,
				contentType: false,
				processData: false,
				success: function (result) {
					$('#button' +result.id).attr('status', result.status);
					$('#button' + result.id + '>span').toggleClass('icon-erase icon-eye');
					if(result.status==true){
					$('#td_status'+result.id).text('on')
					}
					else{
						$('#td_status'+result.id).text('off')

					}
// 					alert('#button' +result.id + ' change its status')

					$('#changeAccountStauts_modal').modal('show')
				}
			});
		});
		});
		
		</script>
	</body>

	</html>