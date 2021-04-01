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
	<main class="app-content">
		<div class="app-title">
			<div>
				<h1>
					<i class="fa fa-edit"></i> Chủ Đề
				</h1>
			</div>
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
				<li class="breadcrumb-item">Forms</li>
				<li class="breadcrumb-item"><a href="#">Thêm mới bài viết</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<s:form action="/admin/themMoiCapNhatChuDe" method="post"
							enctype="multipart/form-data" theme="simple">
					<div class="form-group ">
						<label for="cname" class="control-label col-lg-3">Mã Chủ Đề</label>
						<div class="col-lg-6">
										<s:textfield class=" form-control" id="cname" name="objChuDe.maChuDe" value="%{objChuDe.maChuDe}" />
										<s:hidden name="maChuDe" value="%{objChuDe.maChuDe}" />
										</div>
									</div>

									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Tên Chủ Đề</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objChuDe.tenChuDe" value="%{objChuDe.tenChuDe}" />
										</div>
									</div>
									

									<div class="form-group">
										<s:submit cssClass="btn btn-primary" value="Xác Nhận"></s:submit>
									</div>
						</s:form>
				</div>
			</div>
		</div>
	</main>
</body>
</html>