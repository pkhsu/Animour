<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <title>
        Animal Shelter
      </title>
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
    </head>

    <body>

      <!-- Header area wrapper starts -->
      <header id="header-wrap">
        <!-- Navbar Starts -->
        <jsp:include page="../navbar.jsp"></jsp:include>
        <!-- Navbar ends -->
      </header>
      <!-- Header-wrap Section End -->

      <!-- Page Header -->
      <div class="page-header-section">
        <div class="container">
          <div class="row">
            <div class="page-header-area">
              <div class="page-header-content">
                <h2>部落格</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page Header End -->

      <!-- Classic Blog Section -->
      <section class="classic-blog-section section">
        <div class="container">
          <div class="row">
            <!-- Blog Sidebar Section -->
            <jsp:include page="forumSideBar.jsp"></jsp:include>
            <!-- End -->

            <!-- BLog Article Section -->
            <div id="bloglist" class="col-md-9">
              <!-- Single Blog Post -->

              <div id="show"></div>
              <!-- Slider Post -->


              <!-- Blog Pagination -->
              <!--           <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s"> -->
              <!-- 							<nav aria-label="..." class=""> -->
              <!-- 								<ul class="pagination"> -->
              <%-- 									<li class="page-item"><a class="page-link" href="?${categoryQueryString}pageNo=${page.number}"  --%>
                <!-- 									tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁  -->
                <!-- 									<span class="sr-only">Previous</span></a></li> -->
                <%-- 									<li class="page-item active"><a class="page-link" href="">第 ${page.number+1}/${page.totalPages} 頁 --%>
                  <!-- 											<span class="sr-only">(current)</span></a></li> -->
                  <%-- 									<li class="page-item"><a class="page-link" href="?${queryString}pageNo=${page.number+2}" --%>
                    <!-- 										aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i> -->
                    <!-- 										<span class="sr-only">Next</span></a></li> -->
                    <!-- 								</ul> -->
                    <!-- 							</nav> -->
                    <!-- 						</div> -->
            </div>
            <!-- End -->
          </div>
        </div>
      </section>
      <!-- Classic Blog Section End -->

      <!-- Footer Section -->
      <footer>
        <jsp:include page="../footer.jsp"></jsp:include>
      </footer>
      <!-- Footer Section End-->

      <!-- Go To Top Link -->
      <a href="#" class="back-to-top">
        <i class="fa fa-angle-up">
        </i>
      </a>

      <!-- JavaScript & jQuery Plugins -->
      <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
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

      <script>
        var pageNo = 1;
        var articlesString = "";
        var scroll = true;
        var flag = 0;
        var categoryId = 0;
        var search = "";

        $(document).ready(function () {
          refresh();
        });

      </script>
    </body>

    </html>