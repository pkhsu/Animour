<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

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
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Post New Article</title>
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
              <h2>Post New Article</h2>
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
          
	<div id="loginbox" style="margin-top: 50px; margin: auto"
		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-info" style="border: 1px">
			<div class="panel-heading"
				style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
				<div class="panel-title">新增文章</div>
				<div
					style="float: right; font-size: 80%; position: relative; top: -10px">
					<a href="#"></a>
				</div>
			</div>

			<div style="padding-top: 30px" class="panel-body">
				<div style="display: none" id="login-alert"
					class="alert alert-danger col-sm-12"></div>

				<form:form  action="/postArticle" method="Post" modelAttribute="article"
					enctype="multipart/form-data">
					<div class="form-row">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							標題: <form:input type="text" class="form-control" id="subject"
								placeholder="" path="subject" value="" />
						</div>
						<div class="form-group col-md-6">
							類別: <form:select id="category" class="form-control" path="category">
								<form:option  value="-1" label="請選擇類別" />					
								<form:options items="${categoryList}" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						內容:
						<form:textarea class="form-control" id="content" path="content"
							rows="4" style="height:400px;" />
					</div>
<!-- 					<div class="form-group"> -->
<!-- 						請上傳照片 <input type="file" class="form-control-file" id="image" -->
<!-- 							name="file"> -->
<!-- 					</div> -->
					<input type="submit" class="btn btn-common" value="送出"> 
					<input type="reset" class="btn btn-common" value="清除">
				</form:form>
			</div>
		</div>

	 </div>
	 </div>
      </div>
    </section>
</body>
</html>