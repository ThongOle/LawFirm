<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Start Hero Area -->
    <div class="hero-area">
       	<div id="contact-map"></div>
    </div>
    <!-- Main Content -->
    <div id="main-container">
    	<div class="content">
        	<div class="container">
                <div class="shadow-block contact-info-block">
                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <s:form theme="simple" method="post" id="contactform" action="themMoiContact">
                        		<div class="contact-form clearfix">
                        		<h4>Gửi tin nhắn cho chúng tôi</h4>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <label>Tên của bạn</label>
                                        <s:textfield type="text" name="objContact.hoTen" cssClass="form-control input-lg" value="%{objContact.hoTen}"/>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <label>Email</label>
                                        <s:textfield type="email" name="objContact.email" cssClass="form-control input-lg" value="%{objContact.email}"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <label>Điện thoại</label>
                                          <s:textfield type="text" name="objContact.dienThoai" cssClass="form-control input-lg" value="%{objContact.dienThoai}"/>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <label>Địa chỉ</label>
                                        <s:textfield type="text" name="objContact.diaChi" cssClass="form-control input-lg" value="%{objContact.diaChi}"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                    	<label>Tiêu đề</label>
                                    	<s:textfield name="objContact.tieuDe" cssClass="form-control input-lg" value="%{objContact.tieuDe}"/>
                                        <label>Tin nhắn</label>
                                        <s:textarea cssClass="form-control input-lg" rows="6" name="objContact.noiDung" value="%{objContact.noiDung}"/>
                                    </div>
                                </div>
                                <s:submit type="submit" cssClass="btn btn-primay btn-lg" value="Liên hệ ngay"></s:submit>
                                </div>
                            </s:form>
                            <div class="clearfix"></div>
                            <div id="message"></div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                        	<div class="accent-bg parallax-light padding-all40">
                            	<h4>Văn phòng làm việc của chúng tôi</h4>
                                <span class="label label-info">Trụ sở chính</span>
                            	<p>Số 28 ngách 3 ngõ 850 đường Láng<br>Đống Đa - Hà Nội<br><i class="fa fa-phone"></i> 1800-9090-8089</p>
                                <br>
                                <span class="label label-info">Chi Nhánh 1</span>
                            	<p>Tòa nhà M5 số 91 Nguyễn Chí Thanh<br>Đống Đa - Hà Nội<br><i class="fa fa-phone"></i> 1800-9090-8089</p>
                                <br>
                                <span class="label label-info">Chi nhánh 2</span>
                            	<p>Tầng 24 C14 đường Tố Hữu<br>Thanh Xuân - Hà Nội<br><i class="fa fa-phone"></i> 1800-9090-8089</p>
                                <ul class="social-icons">
                                    <li class="facebook"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="spacer-30 visible-xs"></div>
            </div>
        </div>
  	</div>
  	<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> <!-- Google maps api -->
	<script type="text/javascript">
	// When the window has finished loading create our google map below
	google.maps.event.addDomListener(window, 'load', init);

	function init() {
		// Basic options for a simple Google Map
		// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
		var mapOptions = {
			// How zoomed in you want the map to start at (always required)
			zoom: 13,

			scrollwheel: false,
			// The latitude and longitude to center the map (always required)
			
			center: new google.maps.LatLng(21.0217226,105.8091594), // New York

			// How you would like to style the map. 
			// This is where you would paste any style found on Snazzy Maps.
			styles: [{"featureType":"road","stylers":[{"hue":"#5e00ff"},{"saturation":-79}]},{"featureType":"poi","stylers":[{"saturation":-78},{"hue":"#6600ff"},{"lightness":-47},{"visibility":"off"}]},{"featureType":"road.local","stylers":[{"lightness":22}]},{"featureType":"landscape","stylers":[{"hue":"#6600ff"},{"saturation":-11}]},{},{},{"featureType":"water","stylers":[{"saturation":-65},{"hue":"#1900ff"},{"lightness":8}]},{"featureType":"road.local","stylers":[{"weight":1.3},{"lightness":30}]},{"featureType":"transit","stylers":[{"visibility":"simplified"},{"hue":"#5e00ff"},{"saturation":-16}]},{"featureType":"transit.line","stylers":[{"saturation":-72}]},{}]
		};

		// Get the HTML DOM element that will contain your map 
		// We are using a div with id="map" seen below in the <body>
		var mapElement = document.getElementById('contact-map');

		// Create the Google Map using our element and options defined above
		var map = new google.maps.Map(mapElement, mapOptions);

		// Let's also add a marker while we're at it
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(21.0217226,105.8091594),
			map: map,
			title: 'ZNA LawFirm'
		});
	}
</script>
</body>
</html>