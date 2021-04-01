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
	<!-- Main Content -->
    <div id="main-container">
    	<div class="content">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-6">
                    	<div class="dgray-bg block-style1" style="background-image:url(../images/noidung/people1.png);">
                        	<h3>Chúng tôi tập trung<br>vào chất lượng dịch vụ<br>để đạt được<br>sự hài lòng<br>của khách hàng</h3>
                            <h5><em>Sự hài lòng của khách hàng<br>chính là mục tiêu phát triển của chúng tôi<br></em></h5>
                        </div>
                    </div>
                    <div class="spacer-30 visible-sm visible-xs"></div>
                	<div class="col-md-6">
                        <h2 class="accent-color">Chào mừng bạn đến với ZNA LawFirm</h2>
                        <p>Công ty Luật TNHH LAWPRO cung cấp dịch vụ tư vấn pháp luật kinh doanh và đại diện giải quyết tranh chấp trong hoạt động đầu tư, kinh doanh thương mại cho các doanh nghiệp và chủ doanh nghiệp.</p>
                        <div class="spacer-10"></div>
                        <div class="featured-block">
                        	<div class="featured-block-content fbb">
                                <div class="featured-block-info">
                                    <span class="subtitle">Tôn chỉ hoạt động</span>
                                    <p>Với tôn chỉ hoạt động là lấy chữ tín và niềm tin của khách hàng để gây dựng giá trị thương hiệu ZNA, ZNA luôn nhận được phản hồi tích cực và sự đánh giá cao từ phía các khách hàng, đối tác</p>
                                </div>
                                <div class="featured-block-more">
                                    <a href="#" class="basic-link">Tìm hiểu thêm về chúng tôi</a>
                                </div>
                            </div>
                        	<div class="featured-block-image fbb" style="background-image:url(../images/noidung/img1.jpg);"></div>
                        </div>
                    </div>
                </div>
                <div class="spacer-30"></div>
                <hr class="fw">
                <div class="spacer-20"></div>
              	<div class="text-align-center">
                	<h3>Tại sao lại chọn chúng tôi?</h3>
                	<hr class="sm">
               	</div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box ibox-center ibox-plain">
                            <div class="ibox-icon margin-0">
                                <i class="icon icon-dialogue-happy"></i>
                            </div>
                            <h3>Tư vấn linh hoạt</h3>
                            <p>Chúng tôi sử dụng đa nền tảng mạng xã hội để đem đến cho khách hàng trải nghiệm tư vấn tốt nhất</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box ibox-center ibox-plain">
                            <div class="ibox-icon margin-0">
                                <i class="icon icon-check"></i>
                            </div>
                            <h3>Kinh nghiệm</h3>
                            <p>Chúng tôi các luật sư với nhiều năm kinh nghiệm thực hiện các dự án lớn trong và ngoài nước</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box ibox-center ibox-plain">
                            <div class="ibox-icon margin-0">
                                <i class="icon icon-diamond"></i>
                            </div>
                            <h3>Chất lượng</h3>
                            <p>Dịch vụ của chúng tôi luôn nhận được sự khách hàng từ các khách hàng</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box ibox-center ibox-plain">
                            <div class="ibox-icon margin-0">
                                <i class="icon icon-music-random"></i>
                            </div>
                            <h3>Các tiếp cận khác biệt</h3>
                            <p>Chúng tôi luôn tiếp cận khách hàng với tâm thế đảm bảo quyền lợi cao nhất cho khách hàng</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spacer-50"></div>
            <div class="parallax parallax1 parallax-light padding-tb125" style="background-image:url(../images/noidung/parallax1.jpg);">
            	<div class="container">
                    <h5 class="subhead">Chúng tôi luôn lắng nghe</h5>
                    <h2>Tạo một cuộc gặp gỡ với chúng tôi</h2>
                 	<p>Chúng tôi sẽ lẵng nghe và tư vấn đối với với từng vấn đề của khách hàng<br>Các luật sư có kinh nghiệm sẽ trực tiếp tư vấn cho quý khách hàng<br>Thông tin khách hàng cung cấp sẽ được giữ bí mật</p>
                    <div class="spacer-75"></div>
                </div>
            </div>
            
            <div class="container">
            	<div class="row">
                	<div class="col-md-4">
                    	<div class="shadow-block">
                        	<h3 class="accent-color">Đặt lịch hẹn</h3>
                        	<p>Xin quý khách vui lòng đầy đủ thông tin vào ô dưới đây, chúng tôi sẽ liên hệ với quý khách trong thời gian sớm nhất</p>
                            <form method="post" id="meetingform" name="meetingform" class="meeting-form clearfix" action="mail/meeting.php">
                            	<input name="mname" id="mname" type="text" placeholder="Name" class="form-control input-lg">
                            	<input name="memail" id="memail" type="email" placeholder="Email" class="form-control input-lg">
                            	<input name="mphone" id="mphone" type="text" placeholder="Phone" class="form-control input-lg">
                                <select name="mcase" id="mcase" class="selectpicker form-control input-lg">
                                	<option>Case type</option>
                                	<option>Business</option>
                                	<option>Family</option>
                                	<option>Civil</option>
                                	<option>Other</option>
                                </select>
                                <button name="msubmit" id="msubmit" type="submit" class="btn btn-primary btn-block btn-lg margin-20"><i class="fa fa-send-o"></i> Submit</button>
                            </form>
                            <div class="clearfix"></div>
                            <div id="mmessage"></div>
                            <p class="small margin-0">Ghi chú: Các thông tin của quý khách sẽ được chúng tôi giữ bí mật.</p>
                        </div>
                    </div>
                    
                    <div class="col-md-8">
                    <div class="spacer-40"></div>
                    	<a href="services.html" class="btn btn-primary pull-right">Tất cả dịch vụ</a>
                    	<h3>Khu vực tư vấn</h3>
                    	<div class="spacer-20"></div>
                        <div class="row">
                        	<div class="col-md-12">
                                <div class="accordion" id="toggleArea">
                                    <div class="accordion-group panel">
                                        <div class="accordion-heading togglize">
                                        	<a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseOne">
                                            	Bankruptcy &amp; Reorganization
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                          	</a>
                                       	</div>
                                        <div id="collapseOne" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                            	<div class="row">
                                                    <ul class="carets col-md-6">
                                                    	<li>Bankruptcy Trustees</li>
                                                    	<li>Creditors Committees</li>
                                                    	<li>Executory Contracts</li>
                                                    	<li>Mortgage Warehouse Financing Workouts</li>
                                                    </ul>
                                                    <ul class="carets col-md-6">
                                                    	<li>SEC Receiverships</li>
                                                    	<li>Workouts &amp; Restructuring</li>
                                                    	<li>Secured Creditors</li>
                                                    	<li>Chapter 11 Debtors</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group panel">
                                        <div class="accordion-heading togglize">
                                        	<a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapse2">
                                            	Corporate
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                          	</a>
                                       	</div>
                                        <div id="collapse2" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                            	<div class="row">
                                                    <ul class="carets col-md-6">
                                                    	<li>Bankruptcy Trustees</li>
                                                    	<li>Creditors Committees</li>
                                                    	<li>Executory Contracts</li>
                                                    	<li>Mortgage Warehouse Financing Workouts</li>
                                                    </ul>
                                                    <ul class="carets col-md-6">
                                                    	<li>SEC Receiverships</li>
                                                    	<li>Workouts &amp; Restructuring</li>
                                                    	<li>Secured Creditors</li>
                                                    	<li>Chapter 11 Debtors</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group panel">
                                        <div class="accordion-heading togglize">
                                        	<a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapse3">
                                            	Real Estate
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                          	</a>
                                       	</div>
                                        <div id="collapse3" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                            	<div class="row">
                                                    <ul class="carets col-md-6">
                                                    	<li>Bankruptcy Trustees</li>
                                                    	<li>Creditors Committees</li>
                                                    	<li>Executory Contracts</li>
                                                    	<li>Mortgage Warehouse Financing Workouts</li>
                                                    </ul>
                                                    <ul class="carets col-md-6">
                                                    	<li>SEC Receiverships</li>
                                                    	<li>Workouts &amp; Restructuring</li>
                                                    	<li>Secured Creditors</li>
                                                    	<li>Chapter 11 Debtors</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group panel">
                                        <div class="accordion-heading togglize">
                                        	<a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapse4">
                                            	Consumer Financial Services
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                          	</a>
                                       	</div>
                                        <div id="collapse4" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                            	<div class="row">
                                                    <ul class="carets col-md-6">
                                                    	<li>Bankruptcy Trustees</li>
                                                    	<li>Creditors Committees</li>
                                                    	<li>Executory Contracts</li>
                                                    	<li>Mortgage Warehouse Financing Workouts</li>
                                                    </ul>
                                                    <ul class="carets col-md-6">
                                                    	<li>SEC Receiverships</li>
                                                    	<li>Workouts &amp; Restructuring</li>
                                                    	<li>Secured Creditors</li>
                                                    	<li>Chapter 11 Debtors</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group panel">
                                        <div class="accordion-heading togglize">
                                        	<a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapse5">
                                            	Fraud &amp; Recovery
                                                <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>
                                          	</a>
                                       	</div>
                                        <div id="collapse5" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                            	<div class="row">
                                                    <ul class="carets col-md-6">
                                                    	<li>Bankruptcy Trustees</li>
                                                    	<li>Creditors Committees</li>
                                                    	<li>Executory Contracts</li>
                                                    	<li>Mortgage Warehouse Financing Workouts</li>
                                                    </ul>
                                                    <ul class="carets col-md-6">
                                                    	<li>SEC Receiverships</li>
                                                    	<li>Workouts &amp; Restructuring</li>
                                                    	<li>Secured Creditors</li>
                                                    	<li>Chapter 11 Debtors</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               	</div>
                                <!-- End Toggle -->
                            </div>
                        </div>
                    </div>
                </div>
           	</div>
            <div class="spacer-60"></div>
            <div class="padding-tb45 parallax parallax2 parallax-light" style="background-image:url(../images/noidung/parallax2.jpg)">
                <div class="overlay-accent"></div>
                <h3 class="text-align-center margin-0">Mỗi quan hệ giữa luật sư và khách hàng<br>chính là chìa khóa của sự thành công</h3>
            </div>
            <div class="spacer-60"></div>
            <div class="container">
            	<h2 class="accent-color">ĐỘI NGŨ CỦA CHÚNG TÔI</h2>
                <div class="carousel-wrapper">
                    <div class="row">
                        <ul class="owl-carousel carousel-fw" id="team-slider" data-columns="4" data-autoplay="" data-pagination="no" data-arrows="yes" data-single-item="no" data-items-desktop="4" data-items-desktop-small="3" data-items-tablet="2" data-items-mobile="1">
                            <s:iterator value="lstLuatSu" var="b">
                            <li class="item">
                                <div class="team-grid-item grid-item format-standard">
                                    <a href='<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>' class="media-box"><img src="../images/<s:property value="anh"/>" alt=""></a>
                                    <div class="grid-item-inner">
                                        <h4><a href="<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>"><s:property value="hoTen"/></a></h4>
                                        <span class="meta-data"><s:property value="chucVu"/></span>
                                        <a href="mailto:<s:property value="email"/>" class="basic-link pull-right">email</a>
                                        <ul class="social-icons">
                                        	<li><a href="<s:property value="facebook"/>"><i class="fa fa-facebook"></i></a></li>
                                        	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        	<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            </s:iterator>
                        </ul>
                    </div>
                </div>
          	</div>
            <div class="spacer-60"></div>
            
            <div class="clients">
            	<div class="container">
                	<div class="row">
                    	<div class="col-md-3 col-sm-3">
                        	<div class="spacer-55 hidden-sm"></div>
                        	<div class="spacer-40 visible-sm"></div>
                        	<h4 class="margin-0">Một số khách hàng của chúng tôi</h4>
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="carousel-wrapper">
                                <div class="row">
                                    <ul class="owl-carousel carousel-fw" id="partners-slider" data-columns="4" data-autoplay="4000" data-pagination="no" data-arrows="no" data-single-item="no" data-items-desktop="4" data-items-desktop-small="3" data-items-tablet="3" data-items-mobile="2">
                                        <li class="item"><img src="../images/logo3.png" alt=""></li>
                                        <li class="item"><img src="../images/logo5.png" alt=""></li>
                                        <li class="item"><img src="../images/logo1.png" alt=""></li>
                                        <li class="item"><img src="../images/logo2.png" alt=""></li>
                                        <li class="item"><img src="../images/logo4.png" alt=""></li>
                                        <li class="item"><img src="../images/logo6.png" alt=""></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </div>
  	</div>
</body>
</html>