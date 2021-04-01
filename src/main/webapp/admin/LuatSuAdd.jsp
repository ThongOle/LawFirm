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
					<i class="fa fa-edit"></i> Thêm mới Luật sư
				</h1>
			</div>
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
				<li class="breadcrumb-item">Forms</li>
				<li class="breadcrumb-item"><a href="#">Thêm mới Luật sư</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<s:form action="themMoiCapNhatLuatSu" method="post"
							enctype="multipart/form-data" theme="simple">
					<div class="tile-body">
							<div class="form-group">
								<label class="control-label">Họ Tên</label>
								<s:hidden name="maLuatSu" value="%{objLuatSu.id}"/>
								<s:textfield cssClass="form-control" type="text"
									placeholder="Nhập họ tên" name="objLuatSu.hoTen" value="%{objLuatSu.hoTen}"/>
							</div>
							<div class="form-group">
								<label class="control-label">Ảnh</label> <img
									alt="Ảnh thành viên"
									src="../images/<s:property value="objLuatSu.anh"/>" width="150"
									height="150">
								<s:hidden name="objLuatSu.anh" value="%{objLuatSu.anh}" />
								<s:file name="fileUpload" label="Chọn 1 file cần upload"
									size="40" />
								<s:property value="fileUploadFileName" />
								<s:property value="fileUploadContentType" />
								<br>
							</div>
							<div class="form-group">
								<label class="control-label">Chức vụ</label>
								<s:textfield cssClass="form-control" placeholder="Nhập Chức vụ" name="objLuatSu.chucVu" value="%{objLuatSu.chucVu}"/>
							</div>
							<div class="form-group">
								<label class="control-label">Email</label>
								<s:textfield cssClass="form-control" placeholder="Nhập email" name="objLuatSu.email" value="%{objLuatSu.email}"/>
							</div>
							<div class="form-group">
								<label class="control-label">Facebook</label>
								<s:textfield cssClass="form-control" placeholder="Nhập facebook" name="objLuatSu.facebook" value="%{objLuatSu.facebook}"/>
							</div>
							<div class="form-group">
								<label class="control-label">Nội dung</label>
								<s:textarea class="form-control" id="noiDung" name="objLuatSu.noiDung" value="%{objLuatSu.noiDung}"></s:textarea>
							</div>
							<div class="form-group">
								<label class="control-label">Sắp xếp</label>
								<s:textfield cssClass="form-control" placeholder="Nhập thứ tư xuất hiện" name="objLuatSu.sapXep" value="%{objLuatSu.sapXep}"/>
							</div>
						</div>	
						<div class="tile-footer">
						<s:submit cssClass="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Xác nhận</s:submit>
						&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="dsLuatSu.action"><i
							class="fa fa-fw fa-lg fa-times-circle"></i>Trở về</a>
					</div>	
						</s:form>
				</div>
			</div>
		</div>
	</main>
	<script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
	<script>ClassicEditor.create(document.querySelector('#noiDung'));</script>
	
</body>
</html>