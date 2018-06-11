<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<head>
<!-- AddEvent script -->
<script type="text/javascript" src="https://addevent.com/libs/atc/1.6.1/atc.min.js" async defer></script>


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
<title>Animour 活動詳情</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
  #map{
    height:400px;
    widht:100%;
  }
</style>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v3.0';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Header starts -->
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
							<h2 style="font-family:微軟正黑體">活動詳情</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
</header>
<!-- Header ends -->
<!-- Container starts -->
<div class="container" style="padding-top: 15px ">
	<div class="row">
		<form name="selectOneForm" action="/findOneEvent" method="GET">
		</form>
		<img class="card-img-top" src="${oneEvent.images}" width="100%" alt="" >
		<div class="col-md-9">
			<article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s">
				<h2 class="blog-post-title"  style="font-family:微軟正黑體; padding-top:15px">
                	<a href="/findOneEvent?id=${oneEvent.id}">${oneEvent.subject}</a>
              	</h2>
              	<div class="tag-posted-in">
               		<div>
               			<span style="font-family:微軟正黑體">
                    		<i class="icon icon-calendar" ></i>
                    		活動時間：${oneEvent.eventDate}
                  		</span>
                  	</div>
                </div>
                <!-- Add to Google Calendar starts -->
               	<!-- Button code -->
					<div title="Add to Calendar" class="addeventatc btn btn-outline btn-radius btn-xs" style="float:right; border:2px solid #9C3; font-family:微軟正黑體">
					    <a>新增活動到行事曆
					    <span class="start">${oneEvent.eventDate}</span>
					    <span class="end">${oneEvent.publishExpire}</span>
					    <span class="timezone">${oneEvent.eventDate}</span>
					    <span class="title">${oneEvent.subject}</span>
					    <span class="description">${oneEvent.content}</span>
					    </a>
					</div>
               	<!-- Add to Google Calendar ends -->
               	<!-- Timezone Getter -->
               	<script type="text/javascript">
					var d = new Date()
					var gmtHours = d.getTimezoneOffset()/60
					console.log("The local time zone is: GMT " + gmtHours)					
				</script>
				<div>
                  <span style="font-family:微軟正黑體">
                  <i class="icon icon-globe"></i>
<!--                     <i class="icon icon-globe"></i> -->
                    	活動地點：${oneEvent.address}
                  </span>
                 </div>
                 <div>
                  <span style="font-family:微軟正黑體">
                    <i class="icon icon-link" ></i>
                    	相關連結：<a href="https://pet-fair.top-link.com.tw/home">活動官網</a>
                  </span>
                  </div>
                  <section class="blog-post-content"><hr>
		          	<h2 style="padding: 10px; font-family:微軟正黑體" >活動簡介：</h2>
		              <div class="blog-post" style="border: 2px solid grey; font-family:微軟正黑體">
		                <p style="padding: 10px; font-family:微軟正黑體">${oneEvent.content}
		                </p>
		              </div>
		          </section>
		          <h2 style="padding: 10px; font-family:微軟正黑體">活動地點</h2>
				<div id="map"></div>                                    
			</article>
			 <!--Popular Event Slider-->
          <h2 style="font-family:微軟正黑體">熱門活動</h2>         
            <!-- Featured Content -->
            <section class="featured-wrapper">
              <div id="carousel-image-slider" class="owl-carousel" style="padding-bottom:20px">
                <div class="item">
                  <a href="/findOneEvent?id=10">
                  <img src="https://i.imgur.com/H4mSZKo.jpg" alt="">
                  </a>
                </div>
                <div class="item">
                  <a href="/findOneEvent?id=11">
                  <img src="https://i.imgur.com/6T10gMm.png" alt="">
                  </a>
                </div>
                <div class="item">
                  <a href="/findOneEvent?id=3">
                  <img src="https://i.imgur.com/SSyz021.jpg" alt="">
                  </a>
                </div>
                <div class="item">
                  <a href="/findOneEvent?id=9">
                  <img src="https://i.imgur.com/MXFdjAF.jpg" alt="">
                  </a>
                </div>
              </div>
            </section>
		</div>
		<!-- Event Sidebar Section starts -->
		<div class="col-md-3">
          <div class="sidebar-area">
          	<div class="subscribe-area" style="padding-top:15px">
          	<!-- Buttons trigger Modal -->
<!-- 			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button> -->
			
          		<a class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px" data-toggle="modal" data-target="#exampleModal" data-whatever="@Admin">聯絡我們</a>
          		<a href='/enrollOneNews?id=${oneEvent.id}' class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px">我要報名</a>
<!--                   <a class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px"> -->
<!--                   	<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" width="15 px" style="margin-right: 10px"/>分享至臉書</a> -->
		
		<!-- Share Page to Facebook starts -->

            <!--Facebook Url-->
              	<div 
              		class="fb-share-button" 
              		data-href="http://localhost:8080/news/event" 
              		data-layout="button" 
              		data-size="large" 
              		data-mobile-iframe="true">
              			<a 
              				target="_blank" 
              				href="javascript:void(0);"
              				onclick="window.open('http://www.facebook.com/sharer/sharer.php?u='+fbhtml_url);return false;"
              				class="fb-xfbml-parse-ignore btn btn-outline btn-radius mt-20 btn-lg btn-block"
              				style="margin:10px">
              					<img 
              						src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" 
              						width="15 px" 
              						style="margin-right: 10px"/>
              							分享至臉書
              			</a>
              	</div>
              </div>
              <!-- Share Page to Facebook ends -->
          	</div>
          </div>
         </div>
		<!-- Event Sidebar Section ends -->
	</div>
<!-- Container ends -->
			
			<!-- Modal starts -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">編寫訊息</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form>
			          <div class="form-group">
			            <label for="recipient-name" class="col-form-label">收件人:</label>
			            <input type="text" class="form-control" id="recipient-name">
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="col-form-label">訊息內容:</label>
			            <textarea class="form-control" id="message-text"></textarea>
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-primary">取消</button>
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">送出</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- Modal ends -->
	<!-- 重複的內容結束 -->

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
	<!-- Facebook Url starts-->
		<script>
		var fbhtml_url=window.location.toString();
		</script>
	<!-- Facebook Url ends-->
	<!-- Modal JS starts -->
	<script>
	$('#exampleModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var recipient = button.data('whatever') // Extract info from data-* attributes
		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		  var modal = $(this)
		  modal.find('.modal-title').text('New message to ' + recipient)
		  modal.find('.modal-body input').val(recipient)
		})
	</script>
	<!-- Modal JS ends -->
	<!-- Google Map Callback starts-->
	<script>
      function initMap() {    	  
    	//Map options
      	var options ={
    		  zoom:15,
    		  center: {lat: 25.0340, lng: 121.5645}
      }
    	
    	// New map
        var map = new google.maps.Map(document.getElementById('map'), options); 
       
    	
    	// Listen for click on map
    	google.maps.event.addListener(map, 'click', function(event){
    		//Add marker
    		addMarker({coords:event.latLng});
    	});
    /*
       //Add marker
       var marker = new google.maps.Marker({
    	   position:{lat: 25.0340, lng: 121.5645},
    	   map:map
       });
       
       //Add infoWindow
       var infoWindow = new google.maps.InfoWindow({
    	  content:'<h1 style="font-family: 微軟正黑體">世貿三館</h1>' 
       });
       
       marker.addListener('click', function(){
    	   infoWindow.open(map, marker);
       });
       */
       
       //Array of markers
       var markers = [
    	   {
        	   coords:{lat: 25.0333, lng: 121.5623},
           	   iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
           	   content:'<h1 style="font-family:微軟正黑體">世貿三館</h1>'
           },
//            {
//         	   coords:{lat: 25.033128, lng: 121.552768},
//         	   content:'<h1 style="font-family:微軟正黑體">捷運信義安和站</h1>'
//         	},
//         	{coords:{lat: 25.0231, lng: 121.511}
//         	}
       ];
       
       //Loop through markers
       for(var i = 0; i < markers.length; i++){
    	   //Add marker
       addMarker(markers[i]);
    	   
       }
       
       //Add Marker Function
       function addMarker(props){
    	   var marker = new google.maps.Marker({
        	   position:props.coords,
        	   map:map,
        	   //icon:props.iconImage
           });
    	   
    	   //Check for customicon
    	   if(props.iconImage){
    		   //Set icon image
    		   marker.setIcon(props.iconImage);
    	   }
    	   
    	   //Check content
    	   if(props.content){
    		   var infoWindow = new google.maps.InfoWindow({
    		    	  content:props.content 
    		       });
    		       
    		       marker.addListener('click', function(){
    		    	   infoWindow.open(map, marker);
    		       });
    		   
    	   }
    	   
       }
      }
    </script>

	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxMrZCxle4RWMLbJ0TXmafreHWxOFhmso&callback=initMap"
    async defer></script>
<!-- Google Map Callback ends -->
<!-- Add Events to Google Calendar starts-->
<script type="text/javascript">
window.addeventasync = function(){
    addeventatc.settings({
        appleical  : {show:false, text:"Apple Calendar"},
        google     : {show:true, text:"Google日曆"},
        outlook    : {show:false, text:"Outlook"},
        outlookcom : {show:false, text:"Outlook.com <em>(online)</em>"},
        yahoo      : {show:false, text:"Yahoo <em>(online)</em>"}
    });
};
</script>
<!-- Add Event to Google Calendar ends -->
</body>

</html>
