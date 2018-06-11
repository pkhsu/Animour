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
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
 <title>
      
        後台管理 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="../admin/assets/css/toolkit-light.css" rel="stylesheet">
    
    
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
  <nav class="iconav">
    <a class="iconav-brand" href="/" title="回首頁">
      <span class="icon icon-leaf iconav-brand-icon" alt="Animour"></span>
    </a>
    <div class="iconav-slider">
      <ul class="nav nav-pills iconav-nav flex-md-column">
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#" title="後臺首頁" data-toggle="tooltip" data-placement="right" data-container="body"> -->
<!--             <span class="icon icon-home"></span> -->
<!--             <small class="iconav-nav-label hidden-md-up">後台管理</small> -->
<!--           </a> -->
<!--         </li> -->
        <li class="nav-item">
          <a class="nav-link" href="/admin/member" title="會員管理" data-toggle="tooltip" data-placement="right" data-container="body">
            <span class="icon icon-users"></span>
            <small class="iconav-nav-label hidden-md-up">會員管理</small>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/news/manage" title="活動管理" data-toggle="tooltip" data-placement="right" data-container="body">
            <span class="icon icon-globe"></span>
            <small class="iconav-nav-label hidden-md-up">活動管理</small>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/animal" title="寵物管理" data-toggle="tooltip" data-placement="right" data-container="body">
            <span class="icon icon-baidu"></span>
            <small class="iconav-nav-label hidden-md-up">寵物管理</small>
          </a>
        </li>
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#" title="市集管理" data-toggle="tooltip" data-placement="right" data-container="body"> -->
<!--             <span class="icon icon-shopping-cart"></span> -->
<!--             <small class="iconav-nav-label hidden-md-up">市集管理</small> -->
<!--           </a> -->
<!--         </li> -->
<li class="nav-item">
          <a class="nav-link" href="/salonAdminReservation" title="沙龍管理" data-toggle="tooltip" data-placement="right" data-container="body">
            <img src="https://cdn0.iconfinder.com/data/icons/housicon/512/bathroom-512.png" width="18"/></span>
            <small class="iconav-nav-label hidden-md-up">沙龍管理</small>
          </a>
        </li>





        <li class="nav-item">
          <a class="nav-link" href="/admin/forum" title="部落格管理" data-toggle="tooltip" data-placement="right" data-container="body">
            <span class="icon icon-text-document"></span>
            <small class="iconav-nav-label hidden-md-up">部落格管理</small>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/chart" title="統計圖表" data-toggle="tooltip" data-placement="right" data-container="body">
            <span class="icon icon-pie-chart"></span>
            <small class="iconav-nav-label hidden-md-up">統計圖表</small>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" title="以管理員身分登入" data-toggle="tooltip" data-placement="right" data-container="body">
            <img src="../admin/assets/img/avatar-mdo.png" alt="" class="rounded-circle">
            <small class="iconav-nav-label hidden-md-up">admin</small>
          </a>
        </li>        
      </ul>
    </div>
  </nav>
 
<!-- 每頁不同的內容從此開始 -->


<!-- 每頁不同內容從此結束 -->


    <script src="../admin/assets/js/jquery.min.js"></script>
    <script src="../admin/assets/js/tether.min.js"></script>
    <script src="../admin/assets/js/chart.js"></script>
    <script src="../admin/assets/js/tablesorter.min.js"></script>
    <script src="../admin/assets/js/toolkit.js"></script>
    <script src="../admin/assets/js/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
    </script>
  </body>
</html>