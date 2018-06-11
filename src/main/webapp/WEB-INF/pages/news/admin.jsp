<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Icon Tags start -->
<link rel="apple-touch-icon" sizes="57x57"
	href="/images/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/images/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/images/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/images/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/images/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/images/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/images/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/images/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/icon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/images/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/images/icon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/icon/favicon-16x16.png">
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
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/bootstrap-table/src/bootstrap-table.css">
    <link rel="stylesheet" href="../assets/examples.css">
    <script src="../assets/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/bootstrap-table/src/bootstrap-table.js"></script>
    <script src="../assets/bootstrap-table/src/extensions/export/bootstrap-table-export.js"></script>
    <script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
    <script src="../ga.js"></script>
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
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
<script language="JavaScript"> 
function saveToExcel(str) { 
   try { 
      var xls = new ActiveXObject("Excel.Application"); 
      xls.Visible = true; 
   } 
   catch(e) { 
      alert("開啟失敗，請確定你的電腦已經安裝excel，且瀏覽器必須允許ActiveX控件執行"); 
      return; 
   } 
   var objTable = document.getElementById(str); 
   var xlBook = xls.Workbooks.Add; 
   var xlsheet = xlBook.Worksheets(1); 
   for (var i=0;i<objTable.rows.length;i++) 
      for (var j=0;j<objTable.rows[i].cells.length;j++) 
         xlsheet.Cells(i+1,j+1).value = objTable.rows[i].cells[j].innerHTML; 
} 
</script>
<!-- adminNavbar Starts -->
		<jsp:include page="../admin/adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
 
<!-- 每頁不同的內容從此開始 -->
<!-- Show All News Col -->
    <div class="container">
		<div class="row">	
			<h3>查詢所有活動</h3>
				<form name="selectAllForm" action="findAllNewsCol" method="GET">
					<input type="submit" value="查詢所有">
				</form>
			<hr>
		</div>
		<!-- Show All News starts -->
		<div class="row">
			<c:forEach var="news" items="${allNewsCol}">
				<h2>活動名稱：${news.subject}</h2>
				<h4>活動日期：${news.eventDate}</h4>
				<h4>活動地點：${news.address}</h4>
				<h4>活動簡介：${news.content}</h4>
			</c:forEach>
		</div>						
	</div>
	<!-- Show All News ends -->


<div class="container">
    <div class="row">

<div class="col-md-12 content">
	<div class="dashhead">
		<div class="dashhead-titles">
			<h2 class="dashhead-title">活動紀錄</h2>
		</div>

		<div class="btn-toolbar dashhead-toolbar">
			<div class="btn-toolbar-item input-with-icon">
				<input type="text" value="01/01/15 - 01/08/15" class="form-control"
					data-provide="datepicker"> <span class="icon icon-calendar"></span>
			</div>
		</div>
	</div>

	<div class="flextable table-actions">
		<div class="flextable-item flextable-primary">
			<div class="btn-toolbar-item input-with-icon">
				<input type="text" class="form-control input-block"
					placeholder="搜尋活動"> <span
					class="icon icon-magnifying-glass"></span>
			</div>
		</div>
		<!-- Export Excel starts -->
		<div class="flextable-item">
			<div class="btn-group">
						<!--   給使用者按的下載按鈕，點擊後呼叫tableToExcel
						傳入參數為(要匯出的Table的Id, 定義一個名字, 匯出後的Excel檔名)-->
				<button  type="button" class="btn btn-outline-primary" title="匯出成Excel檔"
						       onclick="tableToExcel('myTableId', 'myTableId', '活動紀錄表單.xls')">
					<span class="icon icon-upload"></span>
						<!-- 需要一個隱藏的超連結，id="dlink" -->
					<a id="dlink" style="display:none;"></a>
				</button>
			</div>
		</div>
		<!-- Export Excel ends -->
	</div>
	</div>
	<!-- Table Starts  -->
	<!-- //要匯出的Table，記得訂id -->
		<table class="table" data-sort="table" id="myTableId">
		<div class="table-responsive container">
		    <div class="row">
			<thead>
				<tr>
					<th><input type="checkbox" class="select-all" id="selectAll"></th>
					<th>活動編號</th>
					<th>活動名稱</th>
					<th>活動介紹</th>
					<th>活動日期</th>
					<th>費用</th>
					<th>人數</th>
					<th>編輯</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10001</a></td>
					<td>活動名稱1</td>
					<td>活動介紹1</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>70</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10002</a></td>
					<td>活動名稱2</td>
					<td>活動介紹2</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>20</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10003</a></td>
					<td>活動名稱3</td>
					<td>活動介紹3</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>55</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10004</a></td>
					<td>活動名稱4</td>
					<td>活動介紹4</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>30</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10005</a></td>
					<td>活動名稱5</td>
					<td>活動介紹5</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>30</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10006</a></td>
					<td>活動名稱6</td>
					<td>活動介紹6</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>25</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10007</a></td>
					<td>活動名稱7</td>
					<td>活動介紹7</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>200</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10008</a></td>
					<td>活動名稱8</td>
					<td>活動介紹8</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>250</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10009</a></td>
					<td>活動名稱9</td>
					<td>活動介紹9</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>300</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10010</a></td>
					<td>活動名稱10</td>
					<td>活動介紹10</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>90</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- Table Ends -->

</div>


<script>
function tableToExcel(table, name, filename) {
  var uri = 'data:application/vnd.ms-excel;base64,';
  //定義格式及編碼方式

  var template = '<html xmlns:o="urn:schemas-microsoft-com:office:office"'
               + '      xmlns:x="urn:schemas-microsoft-com:office:excel"'
               + '      xmlns="http://www.w3.org/TR/REC-html40">'
               + '<head>'
               + '<!--[if gte mso 9]>'
               + '<xml>'
               + '  <x:ExcelWorkbook>'
               + '    <x:ExcelWorksheets>'
               + '      <x:ExcelWorksheet>'
               + '        <x:Name>{worksheet}</x:Name>'
               + '        <x:WorksheetOptions>'
               + '          <x:DisplayGridlines/>'
               + '        </x:WorksheetOptions>'
               + '      </x:ExcelWorksheet>'
               + '    </x:ExcelWorksheets>'
               + '  </x:ExcelWorkbook>'
               + '</xml>'
               + '<![endif]-->'
               + '</head>'
               + '<body>'
               + '  <table>{table}</table>'
               + '</body>'
               + '</html>';
  //Excel的基本框架

  if (!table.nodeType)
    table = document.getElementById(table)

  var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }

  document.getElementById("dlink").href = uri + base64(format(template, ctx));
  //將超連結指向Excel內容
  document.getElementById("dlink").download = filename;
  //定義超連結下載的檔名
  document.getElementById("dlink").click();
  //執行點擊超連結的動作來下載檔案
  
}

function base64(s) {
  return window.btoa(unescape(encodeURIComponent(s)))
}
//將文字編譯成Base64格式

function format(s, c) {
  return s.replace(/{(\w+)}/g, function (m, p) { return c[p]; })
}
//將文字裡的{worksheet}和{table}替換成相對應文字
//把Table內容塞進Excel框架內

</script>

<!-- 每頁不同內容從此結束 -->


<script src="../admin/assets/js/jquery.min.js"></script>
<script src="../admin/assets/js/tether.min.js"></script>
<script src="../admin/assets/js/chart.js"></script>
<script src="../admin/assets/js/tablesorter.min.js"></script>
<script src="../admin/assets/js/toolkit.js"></script>
<script src="../admin/assets/js/application.js"></script>
<script src="../admin/assets/js/bootstrap-table-export.js"></script>
<script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
</script>
<script src="extensions/export/bootstrap-table-export.js"></script>
</body>
</html>