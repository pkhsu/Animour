<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- adminNavbar Starts -->
	<jsp:include page="../adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
<!-- 每頁不同的內容從此開始 -->

<div class="row text-center mt-5">
  <div class="col-md-4 mb-4 mb-md-3">
    <div class="w-3 mx-auto">
      <canvas
        class="ex-graph"
        width="200" height="200"
        data-chart="doughnut"
        data-dataset="[230, 130]"
        data-dataset-options="{ backgroundColor: ['#1ca8dd', '#1bc98e'] }"
        data-labels="['Returning', 'New']">
      </canvas>
    </div>
    <strong class="text-muted">Traffic</strong>
    <h4>New vs Returning</h4>
  </div>
  <div class="col-md-4 mb-4 mb-md-3">
    <div class="w-3 mx-auto">
      <canvas
        class="ex-graph"
        width="200" height="200"
        data-chart="doughnut"
        data-dataset="[330, 30]"
        data-dataset-options="{ backgroundColor: ['#1ca8dd', '#1bc98e'] }"
        data-labels="['Returning', 'New']">
      </canvas>
    </div>
    <strong class="text-muted">Revenue</strong>
    <h4>New vs Recurring</h4>
  </div>
  <div class="col-md-4 mb-4 mb-md-3">
    <div class="w-3 mx-auto">
      <canvas
        class="ex-graph"
        width="200" height="200"
        data-chart="doughnut"
        data-dataset="[100, 260]"
        data-dataset-options="{ backgroundColor: ['#1ca8dd', '#1bc98e'] }"
        data-labels="['Referrals', 'Direct']">
      </canvas>
    </div>
    <strong class="text-muted">Traffic</strong>
    <h4>Direct vs Referrals</h4>
  </div>
</div>

<div class="hr-divider mt-5 mb-3">
  <h3 class="hr-divider-content hr-divider-heading">Quick stats</h3>
</div>

<div class="row statcards">
  <div class="col-md-6 col-xl-3 mb-3 mb-md-4 mb-xl-0">
    <div class="statcard statcard-success">
      <div class="p-3">
        <span class="statcard-desc">Page views</span>
        <h2 class="statcard-number">
          1,293
          <small class="delta-indicator delta-positive">5%</small>
        </h2>
        <hr class="statcard-hr mb-0">
      </div>
      <canvas id="sparkline1" width="378" height="94"
        class="sparkline"
        data-chart="spark-line"
        data-dataset="[[28,68,41,43,96,45,100]]"
        data-labels="['a','b','c','d','e','f','g']"
        style="width: 189px; height: 47px;"></canvas>
    </div>
  </div>
  <div class="col-md-6 col-xl-3 mb-3 mb-md-4 mb-xl-0">
    <div class="statcard statcard-danger">
      <div class="p-3">
        <span class="statcard-desc">Downloads</span>
        <h2 class="statcard-number">
          758
          <small class="delta-indicator delta-negative">1.3%</small>
        </h2>
        <hr class="statcard-hr mb-0">
      </div>
      <canvas id="sparkline1" width="378" height="94"
        class="sparkline"
        data-chart="spark-line"
        data-dataset="[[4,34,64,27,96,50,80]]"
        data-labels="['a','b','c','d','e','f','g']"
        style="width: 189px; height: 47px;"></canvas>
    </div>
  </div>
  <div class="col-md-6 col-xl-3 mb-3 mb-md-4 mb-xl-0">
    <div class="statcard statcard-info">
      <div class="p-3">
        <span class="statcard-desc">Sign-ups</span>
        <h2 class="statcard-number">
          1,293
          <small class="delta-indicator delta-positive">6.75%</small>
        </h2>
        <hr class="statcard-hr mb-0">
      </div>
      <canvas id="sparkline1" width="378" height="94"
        class="sparkline"
        data-chart="spark-line"
        data-dataset="[[12,38,32,60,36,54,68]]"
        data-labels="['a','b','c','d','e','f','g']"
        style="width: 189px; height: 47px;"></canvas>
    </div>
  </div>
  <div class="col-md-6 col-xl-3 mb-3 mb-md-4 mb-xl-0">
    <div class="statcard statcard-warning">
      <div class="p-3">
        <span class="statcard-desc">Downloads</span>
        <h2 class="statcard-number">
          758
          <small class="delta-indicator delta-negative">1.3%</small>
        </h2>
        <hr class="statcard-hr mb-0">
      </div>
      <canvas id="sparkline1" width="378" height="94" class="sparkline"
        data-chart="spark-line"
        data-dataset="[[43,48,52,58,50,95,100]]"
        data-labels="['a','b','c','d','e','f','g']"
        style="width: 189px; height: 47px;"></canvas>
    </div>
  </div>
</div>

<hr class="mt-5">

<div class="row">
  <div class="col-md-6 mb-5">
    <div class="list-group mb-3">
      <h6 class="list-group-header">
        Countries
      </h6>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 62.4%;"></span>
          <span>United States</span>
          <span class="text-muted">62.4%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 15.0%;"></span>
          <span>India</span>
          <span class="text-muted">15.0%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 5.0%;"></span>
          <span>United Kingdom</span>
          <span class="text-muted">5.0%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 5.0%;"></span>
          <span>Canada</span>
          <span class="text-muted">5.0%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 4.5%;"></span>
          <span>Russia</span>
          <span class="text-muted">4.5%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 2.3%;"></span>
          <span>Mexico</span>
          <span class="text-muted">2.3%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 1.7%;"></span>
          <span>Spain</span>
          <span class="text-muted">1.7%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 1.5%;"></span>
          <span>France</span>
          <span class="text-muted">1.5%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 1.4%;"></span>
          <span>South Africa</span>
          <span class="text-muted">1.4%</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span class="list-group-progress" style="width: 1.2%;"></span>
          <span>Japan</span>
          <span class="text-muted">1.2%</span>
        </a>
      
    </div>
    <a href="#" class="btn btn-outline-primary px-3">All countries</a>
  </div>
  <div class="col-md-6 mb-5">
    <div class="list-group mb-3">
      <h6 class="list-group-header">
        Most visited pages
      </h6>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/ (Logged out)</span>
          <span class="text-muted">3,929,481</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/ (Logged in)</span>
          <span class="text-muted">1,143,393</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/tour</span>
          <span class="text-muted">938,287</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/features/something</span>
          <span class="text-muted">749,393</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/features/another-thing</span>
          <span class="text-muted">695,912</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/users/username</span>
          <span class="text-muted">501,938</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/page-title</span>
          <span class="text-muted">392,842</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/some/page-slug</span>
          <span class="text-muted">298,183</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/another/directory/and/page-title</span>
          <span class="text-muted">193,129</span>
        </a>
      
        <a class="list-group-item list-group-item-action justify-content-between" href="#">
          <span>/one-more/page/directory/file-name</span>
          <span class="text-muted">93,382</span>
        </a>
      
    </div>
    <a href="#" class="btn btn-outline-primary px-3">View all pages</a>
  </div>
</div>

<div class="list-group mb-3">
  <h6 class="list-group-header">
    Devices and resolutions
  </h6>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (1920x1080)</span>
      <span class="text-muted">3,929,481</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (1366x768)</span>
      <span class="text-muted">1,143,393</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (1440x900)</span>
      <span class="text-muted">938,287</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (1280x800)</span>
      <span class="text-muted">749,393</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Tablet (1024x768)</span>
      <span class="text-muted">695,912</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Tablet (768x1024)</span>
      <span class="text-muted">501,938</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Phone (320x480)</span>
      <span class="text-muted">392,842</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Phone (720x450)</span>
      <span class="text-muted">298,183</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (2560x1080)</span>
      <span class="text-muted">193,129</span>
    </a>
  
    <a class="list-group-item list-group-item-action justify-content-between" href="#">
      <span>Desktop (2560x1600)</span>
      <span class="text-muted">93,382</span>
    </a>
  
</div>
<a href="#" class="btn btn-outline-primary px-3">View all devices</a>

      </div>
    </div>
  </div>



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