<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML>
<html class="no-js">
<head>
<!-- Basic Page Needs
  ================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ZNA LawFirm</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="format-detection" content="telephone=no">
<!-- CSS
  ================================================== -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="../css/bootstrap-theme.css" rel="stylesheet" type="text/css">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<link href="../vendor/magnific/magnific-popup.css" rel="stylesheet" type="text/css">
<link href="../vendor/owl-carousel/css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="../vendor/owl-carousel/css/owl.theme.css" rel="stylesheet" type="text/css">
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" /><![endif]-->
<link href="../css/custom.css" rel="stylesheet" type="text/css"><!-- CUSTOM STYLESHEET FOR STYLING -->
<!-- Color Style -->
<link href="../colors/color9.css" rel="stylesheet" type="text/css">
<!-- SCRIPTS
  ================================================== -->
<script src="../js/modernizr.js"></script><!-- Modernizr -->
</head>
<body class="home header-style1">
<!--[if lt IE 7]>
	<p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
<![endif]-->
<div class="body">
    <tiles:insertAttribute name = "header"/>
    <!-- Start Hero Area -->
    <tiles:insertAttribute name = "heroArea"/>
    <!-- Main Content -->
    <tiles:insertAttribute name="body"/>
    <!-- Site Footer -->
    <tiles:insertAttribute name="footer"/>
</div>
<script src="../js/jquery-2.2.3.min.js"></script> <!-- Jquery Library Call -->
<script src="../vendor/magnific/jquery.magnific-popup.min.js"></script> <!-- Maginific Popup Plugin -->
<script src="../js/ui-plugins.js"></script> <!-- UI Plugins -->
<script src="../js/helper-plugins.js"></script> <!-- Helper Plugins -->
<script src="../vendor/owl-carousel/js/owl.carousel.min.js"></script> <!-- Owl Carousel -->
<script src="../js/bootstrap.js"></script> <!-- UI -->
<script src="../js/init.js"></script> <!-- All Scripts -->
<script src="../vendor/flexslider/js/jquery.flexslider.js"></script> <!-- FlexSlider -->
</body>
</html>