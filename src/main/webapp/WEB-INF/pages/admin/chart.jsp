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
		<link href="https://cdnjs.com/libraries/Chart.js">
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
							<h1 class="dashhead-title">圖表統計</h1>
						</div>

						<div class="btn-toolbar dashhead-toolbar">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" value="2018/06/01" class="form-control" data-provide="datepicker">
								<span class="icon icon-calendar"></span>
							</div>
						</div>
					</div>

					<div class="flextable table-actions">
						<div class="flextable-item flextable-primary">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" class="form-control input-block" placeholder="">
								<span class="icon icon-magnifying-glass"></span>
							</div>
						</div>


					</div>
					<div class="chart-container" style="position: relative; height:500px; width:50%; float:left;">
								<h3>寵物啟示統計:</h3>
						<!-- <canvas id="myChart"></canvas> -->
					<div id="animalChart" style="height: 450px; width: 100%;"></div>
					</div>
					
					<div class="chart-container" style="position: relative; height:500px; width:50%; float:right;">
							<h3>寵物沙龍統計:</h3>
						<!-- <canvas id="myChart"></canvas> -->
						<div id="designerChart" style="height: 450px; width: 100%;"></div>
					</div>

					<h3>部落客統計:</h3>
					<div class="chart-container" style="position: relative; height:500px; width:100%">
						<!-- <canvas id="myChart"></canvas> -->
						<div id="myChart" style="height: 450px; width: 100%;"></div>
					</div>
					<div>

					<h3>會員好友數統計:</h3>
					<div class="chart-container" style="position: relative; height:500px; width:100%">
						<!-- <canvas id="myChart"></canvas> -->
						<div id="friendChart" style="height: 450px; width: 100%;"></div>
					</div>
					<h3>活動售票統計:</h3>
					<div class="chart-container" style="position: relative; height:500px; width:100%">
						<!-- <canvas id="myChart"></canvas> -->
						<div id="newsChart" style="height: 450px; width: 100%;"></div>
					</div>
					<!-- <h3>商品上架類別統計:</h3> -->
					<div class="chart-container" style="position: relative; height:500px; width:100%">
						<!-- <canvas id="myChart"></canvas> -->
						<h3>寵物市集統計:</h3>
						<div id="productChart" style="height: 450px; width: 45%; float:left;"></div>
						<!-- <h3>商品購買類別統計:</h3> -->
						<div id="ordersChart" style="height: 450px; width: 45%; float:right;"></div>
					</div>
					<!-- <h3>商品購買類別統計:</h3>
					<div class="chart-container" style="position: relative; height:500px; width:100%">
						<div id="ordersChart" style="height: 450px; width: 100%;"></div>
					</div> -->
				</div>
			</div>
		</div>
		<!-- Modal Starts -->

		<!-- Modal Ends -->

		<!-- 每頁不同內容從此結束 -->
		<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
		<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>

		<script src="../admin/assets/js/jquery.min.js"></script>
		<script src="../admin/assets/js/tether.min.js"></script>
		<script src="../admin/assets/js/chart.js"></script>
		<script src="../admin/assets/js/tablesorter.min.js"></script>
		<script src="../admin/assets/js/toolkit.js"></script>
		<script src="../admin/assets/js/application.js"></script>
		<script>


			$(document).ready(function () {
				$.getJSON('/articles/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var thumbArray = new Array();
					var clickArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);
						thumbArray.push({ 'label': key, 'y': obj[key][0] });
						clickArray.push({ 'label': key, 'y': obj[key][1] });
					});
					// console.log(ticketArray);
					// console.log(priceArray);
					var options = {
						animationEnabled: true,
						title: {
							text: "部落客統計",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: [
							{
								title: "按讚",
								lineColor: "#2E8B57",
								tickColor: "#2E8B57",
								labelFontColor: "#2E8B57",
								titleFontColor: "#2E8B57",
								lineThickness: 2
							},
							{
								title: "點擊",
								lineColor: "#4169E1",
								tickColor: "#4169E1",
								labelFontColor: "#4169E1",
								titleFontColor: "#4169E1",
								lineThickness: 2
							}
						],
						axisX: {
							title: "部落客",
							interval: 1,
							labelAngle: -40
						},
						data: [  //array of dataSeries     
							{ //dataSeries - first quarter
								type: "column",
								color:"#2E8B57",
								name: "First Quarter",
								dataPoints: thumbArray
							},
							{ //dataSeries - second quarter
								type: "column",
								color:"#4169E1",
								name: "Second Quarter",
								axisYIndex: 1,
								dataPoints: clickArray
							}
						]
						
					};
					$("#myChart").CanvasJSChart(options);
				});

				$.getJSON('/halfway/animal/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var animalArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);

						animalArray.push({ 'legendText': key + ':' + obj[key], 'indexLabel': key, 'y': obj[key] });
					});

					var options = {
						animationEnabled: true,
						title: {
							text: "寵物送養",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: {
							title: "rows",
							suffix: "",
							includeZero: false
						},
						axisX: {
							title: "Specie"
						},
						data: [{
							indexLabelFontSize: 20,
							indexLabelFontFamily: "Garamond",
							indexLabelFontColor: "darkgrey",
							indexLabelLineColor: "darkgrey",
							indexLabelPlacement: "outside",
							type: "doughnut",
							showInLegend: true,
							dataPoints: animalArray
						}]
					};
					$("#animalChart").CanvasJSChart(options);
				});

				$.getJSON('/api/member/all/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var friendArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);

						friendArray.push({ 'label': key, 'y': obj[key] });
					});

					var options = {
						animationEnabled: true,
						title: {
							text: "會員交友",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: {
							title: "好友數",
							suffix: "",
							interval: 1,
							includeZero: false
						},
						axisX: {
							title: "會員",
							interval: 1,
							labelAngle: -70
						},
						data: [{
							type: "column",
							// yValueFormatString: "#,##0.0#" % "",
							dataPoints: friendArray
						}]
					};
					$("#friendChart").CanvasJSChart(options);
				});
				//設計師紅牌統計
				$.getJSON('/reservations/reservation/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var designerArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);

						designerArray.push({ 'label': key, 'y': obj[key] });
					});

					var options = {
						animationEnabled: true,
						title: {
							text: "紅牌統計",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: {
							title: "被預約次數",
							suffix: "",
							includeZero: false
						},
						axisX: {
							title: "設計師",
							interval: 1,
							labelAngle: -70
						},
						data: [{
							type: "column",
							// yValueFormatString: "#,##0.0#" % "",
							dataPoints: designerArray
						}]
					};
					$("#designerChart").CanvasJSChart(options);
				});
				//

				$.getJSON('/news/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var ticketArray = new Array();
					var priceArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);
						ticketArray.push({ 'label': key, 'y': obj[key][0] });
						priceArray.push({ 'label': key, 'y': obj[key][1] });
					});
					// console.log(ticketArray);
					// console.log(priceArray);
					var options = {
						animationEnabled: true,
						title: {
							text: "活動售票",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: [
							{
								title: "售出票券",
								lineColor: "#4682B4",
								tickColor: "#4682B4",
								labelFontColor: "#4682B4",
								titleFontColor: "#4682B4",
								lineThickness: 2
							},
							{
								title: "收益",
								prefix: "NT$",
								lineColor: "#66CDAA",
								tickColor: "#66CDAA",
								labelFontColor: "#66CDAA",
								titleFontColor: "#66CDAA",
								lineThickness: 2
							}
						],
						axisX: {
							title: "活動",
							interval: 1,
							labelAngle: -40
						},
						data: [  //array of dataSeries     
							{ //dataSeries - first quarter
								type: "column",
								color:"#4682B4",
								name: "First Quarter",
								dataPoints: ticketArray
							},
							{ //dataSeries - second quarter
								type: "column",
								color:"#66CDAA",
								name: "Second Quarter",
								axisYIndex: 1,
								dataPoints: priceArray
							}
						]
						
					};
					$("#newsChart").CanvasJSChart(options);
				});
				
				$.getJSON('/shopping/product/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var productArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);

						productArray.push({ 'legendText': key + ':' + obj[key], 'indexLabel': key, 'y': obj[key] });
					});

					var options = {
						animationEnabled: true,
						title: {
							text: "上架商品",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: {
							title: "rows",
							suffix: "",
							includeZero: false
						},
						axisX: {
							title: "Classify"
						},
						data: [{
							indexLabelFontSize: 20,
							indexLabelFontFamily: "Garamond",
							indexLabelFontColor: "darkgrey",
							indexLabelLineColor: "darkgrey",
							indexLabelPlacement: "outside",
							type: "pie",
							showInLegend: true,
							dataPoints: productArray
						}]
					};
					$("#productChart").CanvasJSChart(options);
				});
				
				$.getJSON('/shopping/orders/chart', {}, function (data) {
					console.log(data);
					//obj轉型Map
					var ordersArray = new Array();
					const map = new Map();
					let obj = data;
					Object.keys(obj).forEach(key => {
						map.set(key, obj[key]);

						ordersArray.push({ 'legendText': key + ':' + obj[key], 'indexLabel': key, 'y': obj[key] });
					});

					var options = {
						animationEnabled: true,
						title: {
							text: "成交訂單",
							fontWeight: "bolder",
							fontColor: "#008B8B",
							fontfamily: "tahoma",
							fontSize: 25,
							padding: 10
						},
						axisY: {
							title: "rows",
							suffix: "",
							includeZero: false
						},
						axisX: {
							title: "Classify"
						},
						data: [{
							indexLabelFontSize: 20,
							indexLabelFontFamily: "Garamond",
							indexLabelFontColor: "darkgrey",
							indexLabelLineColor: "darkgrey",
							indexLabelPlacement: "outside",
							type: "pie",
							showInLegend: true,
							dataPoints: ordersArray
						}]
					};
					$("#ordersChart").CanvasJSChart(options);
				});


			});
		</script>
		<!-- <div id="chartContainer" style="height: 370px; width: 100%;"></div> -->
		<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
		<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
	</body>

	</html>