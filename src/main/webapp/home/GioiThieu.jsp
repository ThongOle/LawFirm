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
    	<div class="page-header have-submenu" style="background-image:url(../images/noidung/header2.jpg)">
        	<div class="container">
            	<h1>Về Chúng tôi</h1>
                <ol class="breadcrumb">
                    <li>Về chúng tôi</li>
                    <li><a href="trangChu.action">Trang chủ</a></li>
                </ol>
            </div>
        </div>
    </div>
<!-- Main Content -->
    <div id="main-container">
    	<div class="content">
        	<div class="container">
            	<div class="row">
                	<div class="col-md-12 col-sm-12">
                    	<a href="../images/<s:property value="%{objBaiViet.avatar}"/>" class="magnific-image"><img src="../images/<s:property value="%{objBaiViet.avatar}"/>" alt="" class="img-thumbnail"></a>
                        <h4><s:property value="%{objBaiViet.tieuDe}" escapeHtml="false"/></h4>
                        <p><s:property value="%{objBaiViet.noiDung}" escapeHtml="false"/></p>
                    </div>
                </div>
          	</div>
           	<div class="spacer-60"></div>
            
            <div class="dgray-bg call-to-action">
                <div class="container">
                	<div class="call-to-action-text">
                        <div>Cùng tham gia cộng đồng 1500 khách hàng của chúng tôi</div>
                    </div>
                    <div class="call-to-action-btn">
                    	<a href="#" class="btn btn-primary btn-rounded btn-lg">Liên hệ với chúng tôi</a>
                    </div>
                </div>
            </div>
            <div class="spacer-60"></div>
            <div class="container">
                <div class="spacer-60"></div>
               	<h5 class="subhead">Meet the talent</h5>
            	<h2>Thành viên của chúng tôi</h2>
                <div class="carousel-wrapper">
                    <div class="row">
                    
                        <ul class="owl-carousel carousel-fw" id="team-slider" data-columns="5" data-autoplay="" data-pagination="no" data-arrows="yes" data-single-item="no" data-items-desktop="4" data-items-desktop-small="3" data-items-tablet="2" data-items-mobile="1">
                            <s:iterator value="lstLuatSu" var="b">
                            <li class="item">
                                <div class="team-grid-item grid-item format-standard">
                                    <a href="<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>" class="media-box"><img src="../images/<s:property value="anh"/>"  alt=""></a>
                                    <div class="grid-item-inner">
                                        <h4><a href="<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>"><s:property value="hoTen"/></a></h4>
                                        <span class="meta-data"><s:property value="chucVu"/></span>
                                        <a href="mailto:<s:property value="email"/>" class="basic-link pull-right">Email</a>
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
                <div class="spacer-60"></div>
            </div>
        </div>
  	</div>
</body>
</html>