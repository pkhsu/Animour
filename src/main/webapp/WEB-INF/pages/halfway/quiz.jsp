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

				<!-- Responsive Style -->
				<link rel="stylesheet" type="text/css" href="/css/responsive.css">
				<!--Fonts-->
				<link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
				<link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

				<!--FancyBox css -->
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />

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
				<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
				<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

				<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>
				<style type="text/css">
					body {
						color: #566787;
						background: #f5f5f5;
						font-family: 'Varela Round', sans-serif;
						font-size: 13px;
					}

					.table-wrapper {
						background: #fff;
						padding: 20px 25px;
						margin: 30px 0;
						border-radius: 3px;
						box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
					}

					.table-title {
						padding-bottom: 15px;
						background: #435d7d;
						color: #fff;
						padding: 16px 30px;
						margin: -20px -25px 10px;
						border-radius: 3px 3px 0 0;
					}

					.table-title h2 {
						margin: 5px 0 0;
						font-size: 24px;
					}

					.table-title .btn-group {
						float: right;
					}

					.table-title .btn {
						color: #fff;
						float: right;
						font-size: 13px;
						border: none;
						min-width: 50px;
						border-radius: 2px;
						border: none;
						outline: none !important;
						margin-left: 10px;
					}

					.table-title .btn i {
						float: left;
						font-size: 21px;
						margin-right: 5px;
					}

					.table-title .btn span {
						float: left;
						margin-top: 2px;
					}

					table.table tr th,
					table.table tr td {
						border-color: #e9e9e9;
						padding: 12px 15px;
						vertical-align: middle;
					}

					table.table tr th:first-child {
						width: 60px;
					}

					table.table tr th:last-child {
						width: 100px;
					}

					table.table-striped tbody tr:nth-of-type(odd) {
						background-color: #fcfcfc;
					}

					table.table-striped.table-hover tbody tr:hover {
						background: #f5f5f5;
					}

					table.table th i {
						font-size: 13px;
						margin: 0 5px;
						cursor: pointer;
					}

					table.table td:last-child i {
						opacity: 0.9;
						font-size: 22px;
						margin: 0 5px;
					}

					table.table td a {
						font-weight: bold;
						color: #566787;
						display: inline-block;
						text-decoration: none;
						outline: none !important;
					}

					table.table td a:hover {
						color: #2196F3;
					}

					table.table td a.edit {
						color: #FFC107;
					}

					table.table td a.delete {
						color: #F44336;
					}

					table.table td i {
						font-size: 19px;
					}

					table.table .avatar {
						border-radius: 50%;
						vertical-align: middle;
						margin-right: 10px;
					}

					.pagination {
						float: right;
						margin: 0 0 5px;
					}

					.pagination li a {
						border: none;
						font-size: 13px;
						min-width: 30px;
						min-height: 30px;
						color: #999;
						margin: 0 2px;
						line-height: 30px;
						border-radius: 2px !important;
						text-align: center;
						padding: 0 6px;
					}

					.pagination li a:hover {
						color: #666;
					}

					.pagination li.active a,
					.pagination li.active a.page-link {
						background: #03A9F4;
					}

					.pagination li.active a:hover {
						background: #0397d6;
					}

					.pagination li.disabled i {
						color: #ccc;
					}

					.pagination li i {
						font-size: 16px;
						padding-top: 6px
					}

					.hint-text {
						float: left;
						margin-top: 10px;
						font-size: 13px;
					}

					/* Custom checkbox */

					.custom-checkbox {
						position: relative;
					}

					.custom-checkbox input[type="checkbox"] {
						opacity: 0;
						position: absolute;
						margin: 5px 0 0 3px;
						z-index: 9;
					}

					.custom-checkbox label:before {
						width: 18px;
						height: 18px;
					}

					.custom-checkbox label:before {
						content: '';
						margin-right: 10px;
						display: inline-block;
						vertical-align: text-top;
						background: white;
						border: 1px solid #bbb;
						border-radius: 2px;
						box-sizing: border-box;
						z-index: 2;
					}

					.custom-checkbox input[type="checkbox"]:checked+label:after {
						content: '';
						position: absolute;
						left: 6px;
						top: 3px;
						width: 6px;
						height: 11px;
						border: solid #000;
						border-width: 0 3px 3px 0;
						transform: inherit;
						z-index: 3;
						transform: rotateZ(45deg);
					}

					.custom-checkbox input[type="checkbox"]:checked+label:before {
						border-color: #03A9F4;
						background: #03A9F4;
					}

					.custom-checkbox input[type="checkbox"]:checked+label:after {
						border-color: #fff;
					}

					.custom-checkbox input[type="checkbox"]:disabled+label:before {
						color: #b8b8b8;
						cursor: auto;
						box-shadow: none;
						background: #ddd;
					}

					/* Modal styles */

					.modal .modal-dialog {
						max-width: 400px;
					}

					.modal .modal-header,
					.modal .modal-body,
					.modal .modal-footer {
						padding: 20px 30px;
					}

					.modal .modal-content {
						border-radius: 3px;
					}

					.modal .modal-footer {
						background: #ecf0f1;
						border-radius: 0 0 3px 3px;
					}

					.modal .modal-title {
						display: inline-block;
					}

					.modal .form-control {
						border-radius: 2px;
						box-shadow: none;
						border-color: #dddddd;
					}

					.modal textarea.form-control {
						resize: vertical;
					}

					.modal .btn {
						border-radius: 2px;
						min-width: 100px;
					}

					.modal form label {
						font-weight: normal;
					}
				</style>
				<script type="text/javascript">
					$(document).ready(function () {
						// Activate tooltip
						$('[data-toggle="tooltip"]').tooltip();

						// Select/Deselect checkboxes
						var checkbox = $('table tbody input[type="checkbox"]');
						$("#selectAll").click(function () {
							if (this.checked) {
								checkbox.each(function () {
									this.checked = true;
								});
							} else {
								checkbox.each(function () {
									this.checked = false;
								});
							}
						});
						checkbox.click(function () {
							if (!this.checked) {
								$("#selectAll").prop("checked", false);
							}
						});
					});
				</script>
			</head>

			<body>
				<a id="check" style="display:none; max-width: 45%; margin: auto; margin-top: 5%" class="btn btn-common btn-md btn-block mt-30"
				 data-fancybox data-src="#trueModal" data-modal="true" href="javascript:;">
					<i class="fa fa-link"></i>我要認養
				</a>

				<div style="display: none; width: 70%; border-radius: 20px" id="trueModal">
					<div class="container">
						<div class="col-md-12">
							<div class="table-wrapper" style="width: 70%">
								<div class="table-title">
									<div class="row">
										<div class="col-sm-6">
											<h2>
												認養觀念檢測問卷
											</h2>
										</div>
										<div class="col-sm-6">

											<input type="hidden" id="${id}" class="storevalue" />
											<button id="sendQuiz" class="btn btn-success" data-toggle="modal">
												<i class="material-icons">&#xE147;</i>
												<span>提交問卷</span>
											</button>
										</div>
									</div>
								</div>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>問題</th>
											<th>您的答案</th>
										</tr>
									</thead>
									<tbody id="foreach">

									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>

				<script>
					var score = 0;
					$(document).ready(function () {
						$("#check").click();
						$.ajax({
							url: '/halfway/quiz',
							type: 'GET',
							//data: data,
							//data: json,
							dataType: 'json',
							//processData: false,
							contentType: "application/json",
							//contentType: "multipart/form-data",
							//enctype: 'multipart/form-data',
							//contentType: false,
							//processData: false,
						}).done(function (datas) {
							$.each(datas.data, function (idx, quiz) {
								console.log(quiz.question);
								var quizblock = `<tr>
									<td>`+ (idx + 1) + `.` + quiz.question + `</td>
									<td>
											<button id="true`+ idx + `" value="true" class="btn btn-common btn-lg">Yes</button>
											<button id="false`+ idx + `" value="false" class="btn btn-common btn-lg">No</button>
									</td>
								</tr>`
								$('#foreach').append(quizblock);
							});
							answer();

							var adoptionid = "" + $('input').attr('id')
							$('#sendQuiz').click(function () {
								var object = {};
								object["score"] = score;
								var json = JSON.stringify(object, null);
								console.log(json)
								console.log(adoptionid)

								$.ajax({
									url: '/halfway/adoption/' + adoptionid,
									type: 'PUT',
									data: json,
									//data: json,
									dataType: 'json',
									//processData: false,
									contentType: "application/json",
									//contentType: "multipart/form-data",
									//enctype: 'multipart/form-data',
									//contentType: false,
									//processData: false,
									success: function (data) {
										window.location = "/halfway";
									}
								})
							})
						});

						function answer() {
							$("td > button").click(function () {
								//alert($(this).val())
								//alert(typeof $(this).val());
								if ($(this).val() == 'true') {
									score++;
									var otherid = ("" + this.id).substring(("" + this.id).length - 1)
									$('#false' + otherid).attr("disabled", "disabled");
									//alert(score);
								} else {
									var otherid = ("" + this.id).substring(("" + this.id).length - 1)
									$('#true' + otherid).attr("disabled", "disabled");

								}
							});
							//if ()
						}
					});





				</script>

			</body>

			</html>