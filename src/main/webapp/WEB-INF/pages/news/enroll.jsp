<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
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
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animour</title>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Animour</title>
<style>

body * {
  box-sizing: border-box;
   /* background-color: #91ced4; */
}

.header {
  background-color: #327a81;
  color: white;
  font-size: 1.5em;
  padding: 1rem;
  text-align: center;
  text-transform: uppercase;
}



.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 800px;
}

table {
  width: 100%;
}
table td, table th {
  color: #2b686e;
  padding: 10px;
  text-align: center;
}
table td {
  text-align: center;
  vertical-align: middle;
}
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: center;
}
table th {
  background-color: #daeff1;
  font-weight: 300;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table, tr, td {
    display: block;
  }

  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: center;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
  td:nth-child(2):before {
    content: '票券名稱:';
  }
  td:nth-child(3):before {
    content: '票價:';
  }
  td:nth-child(4):before {
    content: '張數:';
  }

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 3em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }


  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: 2em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
  }

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}

.refund{
width: 800px;
margin: auto;
padding: auto;
}

.btn-enroll{
width:100px;
margin: auto;
padding: auto;
}

</style>
</head>
<body>

	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
		<!-- Page Header -->
      <div class="page-header-section">
        <div class="container">
          <div class="row">
            <div class="page-header-area">
              <div class="page-header-content">
                <h2 style="font-family:微軟正黑體">報名活動</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page Header End -->
	</header>	
	<!-- Container Starts -->
	
<div class="container">
<div class="row">
<div class="table-users">
   <div class="header" >票券資訊</div>
   
   <table cellspacing="0">
      <tr >         
         <th style="font-family:微軟正黑體">票券名稱</th>
         <th style="font-family:微軟正黑體">票價</th>
         <th style="font-family:微軟正黑體">張數</th>
         <th style="font-family:微軟正黑體">小計</th>
         <th style="font-family:微軟正黑體"></th>
      </tr>

      <tr>         
         <td style="font-family:微軟正黑體">${news.subject}</td>
         <td style="font-family:微軟正黑體">${news.ticketPrice}</td>
         <td style="font-family:微軟正黑體"><input id="number" type="number" value="1" min="1"></td>
         <td style="font-family:微軟正黑體">${news.ticketPrice}</td>
      </tr>
   </table>
   </div>
   </div>
 
   <!-- 訪客需登入 -->
   <sec:authorize access="isAnonymous()">
   <div class="btn-enroll">
   <a href="/news/confirmbuy2?id=${news.id}" class="btn btn-outline btn-radius btn-xs" style="margin: auto">立即報名</a>
   </div>
   </sec:authorize>
   <sec:authorize access="hasRole('Member')">
   <div class="btn-enroll">
   <a href="/news/ticket" class="btn btn-outline btn-radius btn-xs" style="margin: auto">立即報名</a>
   </div>
   </sec:authorize>
   
   
<div class="refund">
   <hr>
<h2 style="font-family:微軟正黑體">退款須知</h2>
<h3 style="font-family:微軟正黑體">請撥打客服專線(02)1123-4567，週一至週五9:00-17:30，將由專人為您服務。
</div>
</div>
				
	<!-- Container Ends -->
	<!-- Footer Section -->
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
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
	<script>
	// jQuery function
	(function($) {
	  $.fn.heavyTable = function(params) {

	    params = $.extend( {
	      startPosition: {
	        x: 1,
	        y: 1
	      }
	    }, params);

	    this.each(function() {
	      var 
	        $hTable = $(this).find('tbody'),
	        i = 0,
	        x = params.startPosition.x,
	        y = params.startPosition.y,
	        max = {
	          y: $hTable.find('tr').length,
	          x: $hTable.parent().find('th').length
	        };
	        
	      //console.log(xMax + '*' + yMax);
	      
	      function clearCell () {    
	        content = $hTable.find('.selected input').val();
	        $hTable.find('.selected').html(content);
	        $hTable.find('.selected').toggleClass('selected');
	      }

	      function selectCell () {
	        if ( y > max.y ) y = max.y;
	        if ( x > max.x ) x = max.x;
	        if ( y < 1 ) y = 1;
	        if ( x < 1 ) x = 1;
	        currentCell = 
	         $hTable
	            .find('tr:nth-child('+(y)+')')
	            .find('td:nth-child('+(x)+')');
	        content = currentCell.html();
	        currentCell
	          .toggleClass('selected')
	        return currentCell;
	      }
	      
	      function edit (currentElement) {
	        var input = $('<input>', {type: "text"})
	          .val(currentElement.html())
	        currentElement.html(input)
	        input.focus(); 
	      }

	      $hTable.find('td').click( function () {
	        clearCell();
	        x = ($hTable.find('td').index(this) % (max.x) + 1);
	        y = ($hTable.find('tr').index($(this).parent()) + 1);
	        edit(selectCell());
	      });

	      $(document).keydown(function(e){
	        if (e.keyCode == 13) {
	          clearCell();
	          edit(selectCell());
	        } else if (e.keyCode >= 37 && e.keyCode <= 40  ) {

	          clearCell();
	          switch (e.keyCode) {
	            case 37: x--;
	            break;
	            case 38: y--;
	            break;
	            case 39: x++;
	            break;
	            case 40: y++;
	            break;
	          }
	          selectCell();
	          return false;
	        }
	      }); 
	    });
	  };
	})(jQuery);

	// call our jQuery function

	  $('.heavyTable').heavyTable({
	    xPosition: 2,
	    yPosition: 2
	  });
	</script>
	

</body>
</html>