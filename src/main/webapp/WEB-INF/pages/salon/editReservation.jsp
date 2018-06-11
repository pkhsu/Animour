<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

      <!doctype html>
      <html lang="en">

      <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

        <title>會員清單</title>
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
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.16/datatables.min.css" />
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
              <div class="col-md-2">
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
                  <!-- Recent Post Widgets -->

                  <!-- Category -->
                  <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
                    <h2 class="widget-title">篩選項目</h2>
                    <ul class="category-menu">
                      <li>
                        <a href="#">#</a>
                      </li>
                      <li>
                        <a href="#"></a>
                      </li>
                      <li>
                        <a href="#"></a>
                      </li>
                      <li>
                        <a href="/login?logout">登出</a>
                      </li>
                    </ul>
                  </aside>
                  <!-- Subscribe Widget -->
                  <!-- Tag Cloud -->

                </div>
              </div>
              <!-- End -->

              <!-- BLog Article Section -->
              <div class="col-md-10">
                <!-- Single Blog Post -->
                <!-- 每頁不同的內容從這裡開始 -->

                <h3>Edit reservation sheet</h3>
                <sec:authorize access="hasRole('Member')">

                  <h3>你不是Admin!!</h3>

                </sec:authorize>

                <sec:authorize access="hasRole('Admin')">
                  <table id="table1" class="table table-bordered table-striped table-hover">

                    <thead>
                      <tr>
                        <th>編號</th>
                        <th>預約日期</th>
                        <th>時間</th>
                        <th>內容</th>
                        <th>設計師</th>
                        <th>總時數</th>
                        <th>價錢</th>
                        <th>付款狀態</th>
                        <th style="display: noen">member_id</th>
                        <th id="notNeed">編輯</th>

                      </tr>

                    </thead>

                  </table>
                </sec:authorize>
                <!-- 每頁不同的內容到這裡結束 -->


                <!-- Blog Pagination -->
                <!-- <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
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
            </div> -->
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
        <a href="#" class="back-to-top">
          <i class="fa fa-angle-up"> </i>
        </a>


        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
          crossorigin="anonymous"></script>
        <script>
          window.jQuery
            || document
              .write('<script src="/js/jquery-slim.min.js"><\/script>')
        </script>
        <script src="/js/popper.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <!-- 	<script src="/js/vendor/holder.min.js"></script> -->

        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="/js/jquery-3.3.1.min.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

        <script>
          var datas;
          var pageNo = 0;
          $(document).ready(function () {
            initSubmitForm();

          });


          var initSubmitForm = function () {
            $(document).ready(function () {
              $.getJSON('/reservations', { "pageNo": pageNo },
                function (datas) {
                  console.log(datas);
                  $.each(datas, function (i, reservation) {
                    var cell1 = $('<td id="NewEdit" class="inputContent"></td>').append(reservation.id);
                    var cell2 = $('<td id="" class="inputContent"></td>').append(reservation.reservationDate);
                    var cell3 = $('<td id="" class="inputContent"></td>').text(reservation.frontTime);
                    var cell4 = $('<td id="" class="inputContent"></td>').text(reservation.content);
                    var cell5 = $('<td id="" class="inputContent"></td>').text(reservation.designer);
                    var cell6 = $('<td id="" class="inputContent"></td>').text(reservation.totalTime);
                    var cell7 = $('<td id="" class="inputContent"></td>').text(reservation.price);
                    var cell8 = $('<td id="" class="inputContent"></td>').text(reservation.payment)
                    // var cell9 = $('<td id="" class="inputContent"></td>').text(reservation.member.account)
                    var button1 = $('<button></button>').attr({ 'style': "background-color: #dc3545", 'border-color': '#dc3545' }).addClass("btn btn-danger").append('<i class="fas fa-trash-alt"/>');
                    var button2 = $('<button><i class="fas fa-edit"></i></button>').addClass('btn btn-info');
                    var p = $('<p></p>')
                    var cell10 = $('<td id="addNewButton"></td>').append(button1, p, button2);


                    // var cell10 = $("<td></td>").html('<button  class="btn btn-danger" ; border-color: #dc3545"><i class="fas fa-trash-alt"/></button> <p> </p>  <button class="btn btn-info"></button>');

                    var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell10]);

                    $('#table1').append(row);


                  })



                }).done(function () {

                  pageNo++;
                  //判斷下一次取回的json是否為空(是否為最後一頁)
                  $.getJSON('/reservations', { "pageNo": pageNo }, function (datas) {
                    console.log(datas);
                    if (datas.length != 0) {
                      var buttonImport = $("<button></button>").attr({ 'type': 'button', 'id': 'importbutt', 'style': 'width: 100%' }).addClass('btn btn-common btn-sm mt-10').append("載入更多資料");
                      $('#table1').append(buttonImport);
                      document.getElementById("importbutt").addEventListener("click", importAgain);
                    }
                  })


                })

            })
          };





          $(document).ready(function () {

          })
          //表單更改按鈕
          $(document).on("click", '.btn-info', function () {
            $(this).attr({ 'hidden': 'hidden' });
            var button = $('<button id ="changing"><i class="fas fa-edit"></i></button>').addClass('class="btn btn-info').append('done');
            $(this).parent().append(button);

            //雙擊更改內容
            $(this).parents('tr').find('.inputContent').on("dblclick", function () {
              if (window.$currEditing)
                finishEditing($currEditing);
              var $cell = $(this);
              var $inp = $('<input type="text" style="width:100px;height:30px;"/>');
              $inp.val($cell.text());
              // $cell.attr('name', 'cellEditor').html('').append($inp);
              $inp[0].select();
              window.$currEditing = $inp;
            }).on('click', function () {
              if (window.$currEditing && $currEditing.parent()[0] != this)
                finishEditing($currEditing);
            });
            $('#NewEdit input').on('keydown', function (e) {
              if (e.which == 13 || e.which == 9)
                finishEditing($(this));

            })
            function finishEditing($inp) {
              $inp.parent().removeAttr('cellEditor').text($inp.val());
              window.$currEditing = null;
            }

          })


          function importAgain() {
            var buttonImport = $('#importbutt');
            $('#importbutt').remove();
            initSubmitForm();
          }
          //刪除表格和資料
          $(document).on("click", '.btn-danger', function () {

            var catchIdValue = $(this).parents('tr').find('#NewEdit').text();
            $(this).parents('tr').remove();
            // var catchId = $(this).parent().first().val;
            // console.log(catchId);

            $.ajax({
              url: '/reservations/reservation/' + catchIdValue,
              type: 'delete',
              success: function (result) {
                console.log("It's work")
              }

            })
          })

          //表單送出確認
          $(document).on("click", '#changing', function () {
            myRows = {};
            var headersText = [];
            var $headers = $("th").not('#notNeed');

            // Loop through grabbing everything
            var $rows = $("tbody tr:first-child").each(function () {

              $cells = $(this).find("td").not('#addNewButton');
              myRows = {};

              $cells.each(function (cellIndex) {
                // Set the header text
                if (headersText[cellIndex] === undefined) {
                  headersText[cellIndex] = $($headers[cellIndex]).text();
                }
                // Update the row object with the header/cell combo
                myRows[headersText[cellIndex]] = $(this).text();

              });
            });
            console.log(myRows)
            // Let's put this in the object like you want and convert to JSON (Note: jQuery will also do this for you on the Ajax request)
            // var reservation = { myRows };
            // function toJson(myRows) {
            //   var reservation = {};

            //   myRows.forEach(function (value, key) {

            //     reservation[key] = value;
            //   });
            //   console.log(json);
            //   return json;
            // };
            var json = JSON.stringify(myRows);
            console.log(json);

            var catchIdValue = $(this).parents('tr').find('#NewEdit').text();


            console.log(catchIdValue);
            $.ajax({
              url: '/reservations/reservation/' + catchIdValue,
              type: 'put',
              contentType: "application/json",
              data: json,
              dataType: "json",
              success: function (result) {
                console.log("It changed")
              }

            }).done(function (data) {
              alert("更改成功")
              // window.location.href = "http://localhost:8080/reservation";
            });
            //formDate.forEach 把資料改成[array]:values格式再轉成jason
            // function toJson(formData) {
            //   var object = {};
            //   formData.forEach(function (value, key) {
            //     // if (key == 'city') {
            //     // 	var object1 = {};
            //     // 	object1['id'] = value;
            //     // 	object[key] = object1;
            //     // } else {
            //     // }
            //     object[key] = value;
            //   });
            //   var json = JSON.stringify(object, null);
            //   console.log(json);
            //   return json;
            // };


          })







        </script>
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
      </body>

      </html>