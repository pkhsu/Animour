<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
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
                  <h2>${article.subject}</h2>
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
                <div id="show" class="col-md-12 wow fadeIn" data-wow-delay="0.3s">
                  <!-- Single Blog Post -->
                  <article class="blog-post-wrapper">
                    <!-- Author Info -->
                    <header class="author-info">
                      <h2 class="blog-post-title">
                        <a href="#">${article.subject}</a>
                      </h2>
                      <div class="tag-posted-in">
                        <ul class="list-unstyled">
                          <li>
                            <i class="fa fa fa-calendar"></i>
                            <a href="#">${article.updateTime}</a>
                          </li>
                          <li>
                            <i class="fa fa-user"></i>
                            <a href="#">${article.member.account}</a>
                          </li>
                          <li>
                            <i class="fa fa-pencil-square-o"></i>
                            <a href="#">${article.category.name}</a>
                          </li>
                          <li>
                            <i class="fa fa-comments"></i>
                            <a href="#showcomment">${article.commentLength} 則留言</a>
                          </li>
                          <li>
                            <i class="fa fa-thumbs-up"></i>
                            <a id="thumb" style="cursor:pointer;">${article.thumbsQuantity} Like!</a>
                          </li>
                        </ul>
                      </div>
                    </header>
                    <!-- Featured Content -->
                    <section class="featured-wrapper">
                      <a href="#">
                        <img src="${article.images}" alt="">
                      </a>
                    </section>
                    <!-- Post Content -->
                    <section class="blog-post-content">
                      <div class="blog-post clearfix">
                        <p>${article.content}</p>
                      </div>
                      <a href="http://localhost:8080/updateArticle?id=${article.id}">
                        <button id="btn2" class="btn btn-common" style="float:right">編輯</button>
                      </a>
                      <div id="articleId" style="display:none">${article.id}</div>
                    </section>
                  </article>
                  <!-- About Author -->
                  <section class="about-author-section mt-5">
                    <div class="media wow fadeIn" data-wow-delay="0.3s">
                      <div class="media-left">
                        <a href="#">
                          <img class="img-circle img-responsive" style="width:100px;" src="${article.member.images}" alt="">
                        </a>
                      </div>
                      <div class="media-body">
                        <h4>關於作者</h4>
                        <p>${article.member.signature}</p>
                      </div>
                    </div>
                    <div class="author-footer text-sm-center">
                      <a class="wow bounceIn" data-wow-delay="0.4s" href="#">
                        <i class="fa fa-facebook icon-box icon-sm"></i>
                      </a>
                      <a class="wow bounceIn" data-wow-delay="0.5s" href="#">
                        <i class="fa fa-twitter icon-box icon-sm"></i>
                      </a>
                      <a class="wow bounceIn" data-wow-delay="0.6s" href="#">
                        <i class="fa fa-google-plus icon-box icon-sm"></i>
                      </a>
                      <a class="wow bounceIn" data-wow-delay="0.7s" href="#">
                        <i class="fa fa-github icon-box icon-sm"></i>
                      </a>
                      <a class="wow bounceIn" data-wow-delay="0.8s" href="#">
                        <i class="fa fa-dribbble icon-box icon-sm"></i>
                      </a>
                      <a class="wow bounceIn" data-wow-delay="0.9s" href="#">
                        <i class="fa fa-behance icon-box icon-sm"></i>
                      </a>
                    </div>
                  </section>
                  <div class="similar-post mt-3 clearfix">
                    <h3 class="small-title mb-4 wow fadeIn" data-wow-delay="0.3s">你可能會喜歡:</h3>
                    <div class="row">
                      <c:forEach var="article" items="${thumbsArticle}">
                        <div class="col-md-3 wow fadeIn" data-wow-delay="0.4s">
                          <a href="/forum/findOne?id=${article.id}">
                            <img src="${article.images}" alt="" class="img-responsive">
                          </a>
                          <a href="/forum/findOne?id=${article.id}">
                            <h2>${article.subject}</h2>
                          </a>
                        </div>
                      </c:forEach>
                    </div>
                  </div>
                  <a name="comment"></a>
                  <div class="comments-area clearfix mt-5 wow fadeIn" data-wow-delay="0.3s">
                    <h3 class="small-title">
                      <i class="fa fa-comment"></i> 留言:</h3>
                    <ul class="media-left comment-list mt-30">
                      <div id="showcomment"></div>
                      <c:forEach var="comment" items="${comments}">
                        <li class="media">
                          <div class="media-left">
                            <a href="#">
                              <img class="img-responsive img-circle" src="/images/blog/comment_avatar/avatar1.jpg" alt="">
                            </a>
                          </div>
                          <div class="media-body">
                            <div class="commentor-info">
                              <div class="comment-author">
                                <a href="#">${comment.member.account}</a>
                                <span class="published-time">
                                  <i class="fa fa-calendar"></i>${comment.updateTime}</span>
                              </div>
                              <p>
                                <c:out value="${comment.detail}" />
                              </p>
                            </div>
                            <!--                     <div class="media reply"> -->
                            <!--                       <div class="media-body"> -->
                            <!--                         <div class="commentor-info"> -->
                            <!--                           <div class="comment-author"> -->
                            <!--                             <a href="#">Saifuddin</a> -->
                            <!--                             <span class="published-time"><i class="fa fa-calendar"></i> 18 hrs ago</span> -->
                            <!--                           </div> -->
                            <!--                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos fuga, et maiores, veniam ipsa quod soluta nam, deleniti assumenda magnam sint sapiente voluptatem commodi eos.</p> -->
                            <!--                         </div> -->
                            <!--                       </div> -->
                            <!--                       <div class="media-right"> -->
                            <!--                         <a href="#"><img class="img-responsive img-circle" src="/images/blog/comment_avatar/avatar2.jpg" alt=""></a> -->
                            <!--                       </div> -->
                            <!--                     </div> -->
                          </div>
                        </li>
                      </c:forEach>
                    </ul>
                    <div class="new-comment mt-5">
                      
                      <form id="comment" class="mt-30" name="commentForm">
                        <input name="article" type="hidden" value="${article.id}" />
                        <div class="row">
                          <sec:authorize access="hasRole('Member')">
                            <h5><sec:authentication property="principal.username" />:</h5>
                          </sec:authorize>
                        </div>
                        <div class="form-group">
                          <label class="sr-only" for="usermessage">留言</label>
                          <textarea name="detail" placeholder="Type here message" id="usermessage" rows="4" required="" class="form-control"></textarea>
                        </div>
                        <button id="btn1" class="btn btn-common">
                          <i class="fa fa-comment"></i>發表留言</button>
                      </form>
                    </div>
                  </div>
                </div>
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
          var commentString = "";
          var scroll = false;
          $(document).ready(function () {
            getComment();
            $('#btn1').click(function () {
              console.log("haha");
              var formData = new FormData(document.getElementById("comment"));

              console.log(formData);


              $.ajax({
                type: "POST",
                url: "/articles/comment",
                data: formData,
                contentType: false,
                processData: false
              }).done(function () {
                window.location.reload();
                // alert("ajax post");
              });
            });

            $(document).on('click', '#thumb', function () {
              var formData = new FormData(document.getElementById('comment'));
              $.ajax({
                type: "POST",
                url: "/articles/thumbsUp",
                data: formData,
                contentType: false,
                processData: false
                // async:false
              }).done(function (data) {
                $.each(data, function (idx, thumbsUp) {
                  console.log(thumbsUp);
                  $('#thumb').text(thumbsUp.article.thumbsQuantity + ' Like!');
                });
              });
            });

          });

          function getComment() {
            var url = "/articles/comment/" + $('#articleId').text();
            $.getJSON(url, {}, function (datas) {
              if (datas != null) {
                console.log(datas);
                $.each(datas, function (idx, comment) {
                  var commentStr =
                    '<li class="media"><div class="media-left"><a href="/user/'+comment.member.account+'"><img class="img-responsive img-circle" style="width:73px;" src="'
                    + comment.member.images + '" alt=""></a></div><div class="media-body"><div class="commentor-info"><div class="comment-author"><a href="/user/'+comment.member.account+'">'
                    + comment.member.account
                    + '</a><span class="published-time"><i class="fa fa-calendar"></i>'
                    + formatDate(new Date(comment.updateTime))
                    + '</span></div><p>' + comment.detail + '</p></div></div></li>'

                  commentString += commentStr;
                });
                $("#showcomment").html(commentString);

              }
            });
          }
        </script>
      </body>

      </html>