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
    	<div class="page-header text-align-center" style="background-image:url(images/bg_map.jpg);">
        	<div class="container">
            	<h1>DỊCH VỤ</h1>
                <ol class="breadcrumb">
                    <li><a href="trangChu">Trang chủ</a></li>
                    <li>Dịch vụ</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Main Content -->
    <div id="main-container">
    	<div class="content">
        	<div class="container">
            	<div class="row">
                	<div class="col-lg-12 col-md-12">
                    	<div class="row">
                        	<ul class="isotope-grid">
                        		<s:iterator value="lstBaiViet" var="b">
                                <li class="blog-grid-item grid-item blog-item col-md-6 col-sm-6 format-standard">
                               		<a href="<s:url action="/home/chiTietDichVu?maDichVu=%{id}"/>" class="media-box"><img style="height: 200px; width: 100%" src="../images/<s:property value="avatar"/>" alt=""></a>
                                    <div class="grid-item-inner">
                                        <div class="post-item-meta">
                                            <div class="pull-right"><a href="#"><i class="fa fa-comments-o"></i> </a></div>
                                            <i class="fa fa-clock-o"></i> <s:property value="ngayTao"/>
                                        </div>
                                      	<h4><a href="single-news.html"></a><s:property value="tieuDe"/></h4>
                                        <p><s:property value="tieuDe"/></p>
                                        <a href="<s:url action="/home/chiTietDichVu?maDichVu=%{id}"/>" class="btn btn-default btn-ghost btn-dark btn-sm">Chi Tiết</a>
                                    </div>
                                </li>
                                </s:iterator>
                          	</ul>
                      	</div>
                 	</div>
                    
               	</div>
            </div>
        </div>
  	</div>
</body>
</html>