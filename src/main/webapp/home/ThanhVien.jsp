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
		<div class="page-header have-submenu">
			<div class="container">
				<h1>${objLuatSu.hoTen}</h1>
				<ol class="breadcrumb">
					<li><a href="trangChu">Trang Chủ</a></li>
					<li><a href="aboutUs">Luật sư thành viên</a></li>
					<li></li>
				</ol>
			</div>
		</div>
	</div>
	<!-- Main Content -->
	<div id="main-container">
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<img src="../images/${objLuatSu.anh}" alt="">
						<div class="spacer-20"></div>
						<a href="mailto:${objLuatSu.email}" class="basic-link pull-right">Email</a>
						<ul
							class="social-icons social-icons-colored social-icons-inverted">
							<li class="facebook"><a href="${objLuatSu.facebook}"><i
									class="fa fa-facebook"></i></a></li>
							<li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li class="linkedin"><a href="#"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
					<div class="col-md-8">
						<h3>
							<i class="accent-color">${objLuatSu.chucVu}</i> của ZNA LawFirm
						</h3>
						<p>${objLuatSu.noiDung}</p>
					</div>
				</div>
				<div class="spacer-50"></div>
				<div class="container">
					<h5 class="subhead margin-20">Các thành viên khác</h5>
					<div class="carousel-wrapper">
						<div class="row">
							<ul class="owl-carousel carousel-fw" id="team-slider"
								data-columns="4" data-autoplay="" data-pagination="no"
								data-arrows="yes" data-single-item="no" data-items-desktop="4"
								data-items-desktop-small="3" data-items-tablet="2"
								data-items-mobile="1">
								<s:iterator value="lstLuatSu" var="b">
									<li class="item">
										<div class="team-grid-item grid-item format-standard">
											<a
												href='<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>'
												class="media-box"><img
												src="../images/<s:property value="anh"/>" alt=""></a>
											<div class="grid-item-inner">
												<h4>
													<a
														href="<s:url action="/home/chiTietThanhVien?maLuatSu=%{id}"/>"><s:property
															value="hoTen" /></a>
												</h4>
												<span class="meta-data"><s:property value="chucVu" /></span>
												<a href="mailto:<s:property value="email"/>"
													class="basic-link pull-right">email</a>
												<ul class="social-icons">
													<li><a href="<s:property value="facebook"/>"><i
															class="fa fa-facebook"></i></a></li>
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
			</div>
		</div>
	</div>
</body>
</html>