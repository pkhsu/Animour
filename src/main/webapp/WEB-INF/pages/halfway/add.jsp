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
				<style>
					.imageupload.imageupload-disabled {
						cursor: not-allowed;
						opacity: 0.60;
					}

					.imageupload.imageupload-disabled>* {
						pointer-events: none;
					}

					.imageupload .panel-title {
						margin-right: 15px;
						padding-top: 8px;
					}

					.imageupload .alert {
						margin-bottom: 10px;
					}

					.imageupload .btn-file {
						overflow: hidden;
						position: relative;
					}

					.imageupload .btn-file input[type="file"] {
						cursor: inherit;
						display: block;
						font-size: 100px;
						min-height: 100%;
						min-width: 100%;
						opacity: 0;
						position: absolute;
						right: 0;
						text-align: right;
						top: 0;
					}

					.imageupload .file-tab button {
						display: none;
					}

					.imageupload .file-tab .thumbnail {
						margin-bottom: 10px;
					}

					.imageupload .url-tab {
						display: none;
					}

					.imageupload .url-tab .thumbnail {
						margin: 10px 0;
					}
				</style>
			</head>

			<body>

				<a id="check" style="display: none; max-width: 45%; margin: auto; margin-top: 5%" class="btn btn-common btn-md btn-block mt-30"
				 data-fancybox data-src="#trueModal" data-modal="true" href="javascript:;">
					<i class="fa fa-link"></i>我要認養
				</a>



				<div style="display: none; width: 60%; border-radius: 20px" id="trueModal">
					<div id="loginbox" style="margin-top: 50px; margin: auto" class="mainbox col-md-12 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="panel panel-info" style="border: 1px">
							<div class="panel-heading" style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
								<div class="panel-title" style="font-size: 24px; font-weight: 900">
									<i class="fa fa-paw"></i> 新增動物資料
								</div>
								<div style="float: right; font-size: 80%; position: relative; top: -10px">
									<a href="#"></a>
								</div>
							</div>

							<div style="padding-top: 30px" class="panel-body">
								<div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>
								<form:form method="POST" enctype="multipart/form-data" modelAttribute="animal" id="addAnimal" name="addAnimal">
									<div class="form-row">
										<div class="form-group col-md-6">
											暱稱:
											<form:input type="text" class="form-control" id="name" path="name" name="name" required="required" />
										</div>
										<div class="form-group col-md-6">
											種類:
											<form:select path="specie" class="form-control" name="specie" id="specie">
												<form:option value="-1" label="請選擇種類" />
												<form:options items="${allSpecie}" />
											</form:select>
										</div>
										<!-- 錯誤訊息 -->
										<!--<div class="form-group">
								<div class='help-block'>欸欸真的這樣就可以了嗎</div>
							</div>-->
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											顏色:
											<form:input type="text" class="form-control" id="color" path="color" name="color" />
										</div>
										<div class="form-group col-md-6">
											性別:
											<br>
											<div class="form-check form-check-inline">
												<form:radiobutton path="gender" value="male" class="form-check-input" name="gender" /> 公
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="gender" value="female" class="form-check-input" /> 母
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="gender" value="unknown" class="form-check-input" /> 待確認
											</div>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											體型:
											<form:select path="size" class="form-control" name="size">
												<form:option value="-1" label="請選擇種類" />
												<form:options items="${allSize}" />
											</form:select>
										</div>
										<div class="form-group col-md-6">
											年齡:
											<form:select path="age" class="form-control" name="age">
												<form:option value="-1" label="請選擇種類" />
												<form:options items="${allAge}" />
											</form:select>
										</div>
									</div>
									<div class="form-group">
										發現日期:
										<form:input type="date" class="form-control" id="found" path="found" placeholder="ex:yyyy-MM-dd" name="found" />
										<span id="p3" class="correct"></span>
										<small id="passwordHelpBlock" class="form-text text-muted">(格式:西元年-月-日&nbsp yyyy-MM-dd) </small>
										<div class="st1"></div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											縣市:
											<form:select path="city" class="form-control" name="city">
												<form:option value="-1" label="請選擇縣市" />
												<form:options items="${allCity}" />
											</form:select>
										</div>
										<div class="form-group col-md-6">
											鄉鎮市區:
											<form:input type="text" class="form-control" id="district" path="district" name="district" />
										</div>
									</div>
									<div class="form-row align-items-center">
										<div class="form-group col-md-4">
											就醫紀錄(預設為無):
											<br>
											<div class="form-check form-check-inline">
												<form:radiobutton path="hospitalized" value="false" class="form-check-input" name="hospitalized" /> 無
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="hospitalized" value="true" class="form-check-input" name="hospitalized" /> 有
											</div>
										</div>
										<div class="form-group col-md-4">
											結紮(預設為無):
											<br>
											<div class="form-check form-check-inline">
												<form:radiobutton path="neuter" value="false" class="form-check-input" name="neuter" /> 無
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="neuter" value="true" class="form-check-input" name="neuter" /> 有
											</div>
										</div>
										<div class="form-group col-md-4">
											動物晶片號碼(非必填):
											<form:input type="text" class="form-control form-control-sm" id="cardNum" path="cardNum" name="cardNum" />
										</div>
									</div>
									<div class="form-group">
										備註:
										<form:textarea class="form-control" id="remark" path="remark" rows="2" name="remark" />
									</div>
									<div class="form-group" id="imgur">
										<input id="avatar" name="images" type="hidden" value="" />
										<!-- <form id="imgur"> -->
										請上傳動物大頭貼:
										<input name="file" type="file" class="imgur" multiple="multiple" accept="image/*" data-max-size="5000" />
										<!-- </form> -->

									</div>

									<input type="button" class="btn btn-common" value="送出" id="submit">
									<input type="reset" class="btn btn-common" value="清除">
									<a href="/halfway" class="btn btn-common"> 取消</a>
									<form:hidden id="id" path="id" />
									<form:hidden id="member" path="member" />
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>
				<script type="text/javascript" src="/js/bootstrap-imgupload.js"></script>


				<script>
					$(document).ready(function () {
						uploadImgur();

						$("#check").click();

						$("#submit").click(add);

						function add() {
							//alert("有被呼叫")
							var data = new FormData(document.getElementById("addAnimal"));
							// data.append("sss", "qqq");
							console.log(data);

							//https://stackoverflow.com/questions/17066875/how-to-inspect-formdata
							for (var pair of data.entries()) {
								console.log(pair[0] + ', ' + pair[1]);
							}

							//var json = toJson(data);

							$.ajax({
								url: '/halfway/animal',
								type: 'POST',
								data: data,
								//data: json,
								//dataType: 'json',
								//processData: false,
								//contentType: "application/json",
								//contentType: "multipart/form-data",
								//enctype: 'multipart/form-data',
								contentType: false,
								processData: false,

							}).done(function () {
								window.location = "/halfway";
							});
						}

						function toJson(formData) {
							var object = {};
							formData.forEach(function (value, key) {
								if (key == 'city') {
									var object1 = {};
									object1['id'] = value;
									object[key] = object1;
								} else {
									object[key] = value;
								}
							});
							var json = JSON.stringify(object, null);
							console.log(json);
							return json;
						};

						function uploadImgur() {
							$('input[type=file]').on("change", function () {

								$('#submit').prop("disabled", "disabled");
								var $files = $(this).get(0).files;

								if ($files.length) {

									// Reject big files
									if ($files[0].size > $(this).data("max-size") * 1024) {
										console.log("Please select a smaller file");
										return false;
									}

									// Begin file upload
									console.log("Uploading file to Imgur..");

									// Replace ctrlq with your own API key
									var apiUrl = 'https://api.imgur.com/3/image';
									var apiKey = 'de46ec271aa99c3';

									var settings = {
										// async: false,
										crossDomain: true,
										processData: false,
										contentType: false,
										type: 'POST',
										url: apiUrl,
										headers: {
											Authorization: 'Client-ID ' + apiKey,
											Accept: 'application/json'
										},
										mimeType: 'multipart/form-data'
									};

									var formData = new FormData();
									formData.append("image", $files[0]);

									// var ins = $files.length;
									// for (var x = 0; x < ins; x++) {
									// 	formData.append("images[]", $files[x]);
									// }

									// for(var pair of formData.entries()){
									// 	console.log(pair[0]+','+pair[1]);
									// }
									settings.data = formData;

									// Response contains stringified JSON
									// Image URL available at response.data.link
									$.ajax(settings).done(function (response) {
										var jsonObj = JSON.parse(response)
										console.log(jsonObj.data.link);
										$("#avatar").val(jsonObj.data.link);
										$('#submit').removeAttr("disabled");

										var template1 = `<div class=" wow fadeIn" data-wow-delay="0.3s" id="clients" style="padding:0px">
											<div id="clients-scroller">
												<img style="width:30%; margin:0px" src="`+ jsonObj.data.link + `" alt="">
											</div>
										</div>`;

										$('#imgur').append(template1);

										callVisionApi(jsonObj.data.link);
									});

								}
							});
						}

						function callVisionApi(imageUrl) {

							$.ajax({
								url: '/vision',
								type: 'GET',
								data: { "imageUrl": imageUrl },
								//data: json,
								//dataType: 'json',
								//processData: false,
								//contentType: "application/json",
								//contentType: "multipart/form-data",
								//enctype: 'multipart/form-data',
								//contentType: false,
								//processData: false,
							}).done(function (datas) {
								var flag = false;
								var parsed = JSON.parse(datas);
								var speciechoose = $("#specie option:selected").text();
								//console.log(datas);
								console.log(parsed.responses);
								$.each(parsed.responses[0].labelAnnotations, function (idx, label) {
									console.log(label.description + "----------" + label.score)

									//alert(typeof (label.description));
									//alert(label.description.includes("dog"))
									// if (speciechoose == "狗") {
									if ((label.description.includes("dog"))) {
										flag = true;
									}
									// }

								});
								//alert(flag)
								if (!flag) {
									var template = `<div class="form-group">
								<div class='help-block'>"您上傳的圖片可能沒有包含"`+ speciechoose + `"，建議您重新選擇圖片！"</div>
							</div>`;
									$("#imgur").append(template);
									$(".imgur").val("");
									flag = false;
								}
							});
						}
					});
				</script>
			</body>

			</html>