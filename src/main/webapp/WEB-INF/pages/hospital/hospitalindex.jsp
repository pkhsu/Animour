<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<title>醫院清單列表</title>
	
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


      <!-- Color CSS Styles  -->
      <link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->

<!-- style/css -->
<style>
</style>
<!-- style/css:end -->
</head>

<body>
	<!-- Header area wrapper starts -->
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>

<!-- Page Header -->
      <div class="page-header-section">
        <div class="container">
          <div class="row">
            <div class="page-header-area">
              <div class="page-header-content">
                <h2>醫院列表</h2>
              </div>
            </div>
          </div>
        </div>
      </div>

<!-- Classic Blog Section -->
  <section class="classic-blog-section section">
    <div class="container">
      <div class="row">
        <!-- Blog Sidebar Section -->
        <div class="col-md-3">
          <div class="sidebar-area">
            <!-- Search Bar -->
            <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
              <form>
                <input type="text" placeholder="Search" class="form-control">
                <button type="submit">
                  <i class="fa fa-search"></i>
                </button>
              </form>
            </aside>
            <!-- Text Widgets -->
            
            <!-- Category -->
           
            <!-- Tag Cloud -->
          
          </div>
        </div>
        <!-- End -->

        <!-- BLog Article Section -->
        <div class="col-md-9">
          <!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
					<table id="table1"
						class="table table-bordered table-striped table-hover">
						<thead>
							<tr>
								<th>醫院名稱</th>
								<th>電話</th>
								<th>地址</th>
<!-- 								<th>預約</th> -->
								
							</tr>
						</thead>
						<tbody>
					<c:forEach var="hosp" items="${alllist}">
					<tr>
					<td>${hosp.name}</td>
					<td>${hosp.tel}</td>
					<td>${hosp.address}</td>
<!-- 					<td> -->
<!-- 					<form method="POST" action="/hospital/appointmentdate"> -->
<%-- 					<input type="hidden" name="id" value="${hosp.id}" /> --%>
<!-- 					<input type="submit" value="預約" name="id"/> -->
			
<!-- 					</form> -->
					
					
<!-- 					</td> -->
					</tr>
					</c:forEach>
						</tbody>
					</table>
					<!-- 每頁不同的內容到這裡結束 -->

        </div>
 <!-- Blog Pagination -->
          
        </div>
        <!-- End -->
      </div>
    </div>
  </section>
  <!-- Classic Blog Section End -->

	
	<!-- Footer Section -->
	<!-- (footer.jsp) -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script src="/js/jquery-min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.mixitup.js"></script>
	<script src="/js/smoothscroll.js"></script>
	<script src="/js/wow.js"></script>
	<script src="/js/owl.carousel.js"></script>
	<script src="/js/waypoints.min.js"></script>
	<script src="/js/jquery.counterup.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/jquery.appear.js"></script>
	<script src="/js/form-validator.min.js"></script>
	<script src="/js/contact-form-script.min.js"></script>
	<script src="/js/main.js"></script>
	<!-- Placed at the end of the document so the pages load faster -->
	<script>
		window.jQuery
				|| document
						.write('<script src="/js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

</body>
</html>