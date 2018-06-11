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

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>填寫預約資料</title>
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
<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
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
            <aside class="widget text-widgets wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Text Widget</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dolorem fuga ad corrupti, ullam, eos natus,
                repellat officiis sit labore a aspernatur quisquam. In, unde.</p>
            </aside>
            <!-- Recent Post Widgets -->
            <aside class="widget popular-post wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Popular Post</h2>
              <ul>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar1.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Principles of UX Design</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 18 hrs ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar2.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">The unknown mystery of Momy</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 5 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar3.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">IMDM top 250 Movies</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 6 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar4.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Meteor.JS Fundamentals</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 7 Days ago</span>
                    </div>
                  </div>
                </li>
              </ul>
            </aside>
            <!-- Category -->
            <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Category</h2>
              <ul class="category-menu">
                <li>
                  <a href="#">UX Design (21)</a>
                </li>
                <li>
                  <a href="#">Photography (19)</a>
                </li>
                <li>
                  <a href="#">Video Editing (16)</a>
                </li>
                <li>
                  <a href="#">Works (7)</a>
                </li>
              </ul>
            </aside>
            <!-- Subscribe Widget -->
            <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Subscribe</h2>
              <div class="subscribe-area">
                <p>Subscribe to our news latter to get regular update and blog posts.</p>
                <form class="form-group">
                  <div class="input-group">
                    <input type="email" class="form-control input-block-level" placeholder="hello@youremail.com">
                  </div>
                  <button type="submit" class="mt-10 btn btn-common btn-block">Subscribe</button>
                </form>
              </div>
            </aside>
            <!-- Tag Cloud -->
            <aside class="widget tag-cloud wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Tag clouds</h2>
              <div class="clearfix">
                <ul>
                  <li>
                    <a href="#">Download</a>
                  </li>
                  <li>
                    <a href="#">PSD</a>
                  </li>
                  <li>
                    <a href="#">Coding</a>
                  </li>
                  <li>
                    <a href="#">UI</a>
                  </li>
                  <li>
                    <a href="#">Sublime</a>
                  </li>
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">Hosting</a>
                  </li>
                  <li>
                    <a href="#">Design</a>
                  </li>
                  <li>
                    <a href="#">Arts</a>
                  </li>
                  <li>
                    <a href="#">Marketing</a>
                  </li>
                  <li>
                    <a href="#">Technology</a>
                  </li>
                </ul>
              </div>
            </aside>
          </div>
        </div>
        <!-- End -->

        <!-- BLog Article Section -->
        <div class="col-md-9">
          <!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
		<form name="insertdateForm" action="/insert_app_date" method="POST">
			<h3>填寫預約資料</h3>
			<table id="table1"
						class="table table-bordered table-striped table-hover">
				<tbody>
					<tr>
						<td width="120" height="40">醫院:</td>
						<td width="600" height="40" align="left">${onehospital.id} , ${onehospital.name}</td>
					</tr>
					
					<tr>
						<td width="120" height="40">姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">手機:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="cell" value="${param.cell}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">信箱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="email" value="${param.email}" type="text"
							size="14" style="text-align: left"></td>
					</tr>				
					<tr>
						<td width="120" height="40">時間:</td>
						<td width="600" height="40" align="left">
						<input id='num'
							name="targetTime" value="${param.targetTime}" type="text"
							size="14" style="text-align: left"></td>
					</tr>


				</tbody>
			</table>
			<input type="hidden" name="hospital_id" value="${onehospital.id}"/>

			<input type="submit" value="送出"> 
			<input type="reset"  value="清除"> <br>
			<hr>
			<br>
		</form>
					<!-- 每頁不同的內容到這裡結束 -->

        </div>
 <!-- Blog Pagination -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
            <nav aria-label="..." class="">
              <ul class="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-label="Previous">
                    <i class="fa fa-angle-left"></i>
                    Prev
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                  </a>
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
                  <a class="page-link" href="#" aria-label="Next">
                    Next
                    <i class="fa fa-angle-right"></i>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
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
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/vendor/holder.min.js"></script>

</body>
</html>