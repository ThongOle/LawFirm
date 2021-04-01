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
					<i class="fa fa-edit"></i> Thêm mới Bài Viết
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
					<s:form action="themMoiCapNhatBaiViet" method="post"
						enctype="multipart/form-data" theme="simple">
						<div class="tile-body">
							<div class="form-group">
								<label class="control-label">Tiêu đề</label>
								<s:hidden name="maBaiViet" value="%{objBaiViet.id}" />
								<s:textfield cssClass="form-control" type="text"
									placeholder="Nhập tiều đề" name="objBaiViet.tieuDe"
									value="%{objBaiViet.tieuDe}" />
							</div>
							<div class="form-group">
								<label class="control-label">Ảnh</label> <img alt="Ảnh bài viết"
									src="../images/<s:property value="objBaiViet.avatar"/>"
									width="150" height="150">
								<s:hidden name="objBaiViet.avatar" value="%{objBaiViet.avatar}" />
								<s:file name="fileUpload" label="Chọn 1 file cần upload"
									size="40" />
								<s:property value="fileUploadFileName" />
								<s:property value="fileUploadContentType" />
								<br>
							</div>
							<div class="form-group">
								<label class="control-label">Mô Tả</label>
								<s:textarea cssClass="form-control" rows="3"
									placeholder="Nhập Mô tả" name="objBaiViet.moTa"
									value="%{objBaiViet.moTa}" />
							</div>
							<div class="form-group">
								<label class="control-label">Từ Khóa</label>
								<s:textarea cssClass="form-control" rows="3"
									placeholder="Nhập từ khóa" name="objBaiViet.tuKhoa"
									value="%{objBaiViet.tuKhoa}" />
							</div>
							<div class="form-group">
								<label class="control-label">Tags</label>
								<s:textarea cssClass="form-control" rows="3"
									placeholder="Nhập Tags" name="objBaiViet.tags"
									value="%{objBaiViet.tags}" />
							</div>
							<div class="form-group">
								<label class="control-label">Chủ Đề</label>
								<s:select cssClass="form-control" list="lstChuDe"
									name="objBaiViet.maChuDe" value="%{objBaiViet.maChuDe}"
									listKey="maChuDe" listValue="tenChuDe" headerKey="0"
									headerValue="--Chọn Chủ Đề" />
							</div>
							<div class="form-group">
								<label class="control-label">Loại Tin</label>
								<s:select cssClass="form-control" list="lstLoaiTin"
									name="objBaiViet.loaiTinId" value="%{objBaiViet.loaiTinId}"
									listKey="id" listValue="tenLoai" headerKey="0"
									headerValue="--Chọn Loại tin--" />
							</div>
							<div class="form-group">
								<label class="control-label">Nội Dung</label>
								<s:textarea cssClass="form-control" rows="10" id="noiDung"
									placeholder="Nhập Nội Dung" name="objBaiViet.noiDung"
									value="%{objBaiViet.noiDung}" />
							</div>
							<div class="form-group">
								<label class="control-label">Tác giả</label>
								<s:textfield cssClass="form-control"
									placeholder="Nhập Tên tác giả" name="objBaiViet.tacGia"
									value="%{objBaiViet.tacGia}" />
							</div>
							<div class="form-group">
								<label class="control-label">Ngày Tạo</label>
								<s:textfield readonly="true" cssClass="form-control"
									name="objBaiViet.ngayTao" value="%{objBaiViet.ngayTao}" />
							</div>
							<div class="form-group">
								<label class="control-label">Người tạo Id</label>
								<s:textfield readonly="true" cssClass="form-control"
									name="objBaiViet.nguoiTaoId" value="%{objBaiViet.nguoiTaoId}" />
							</div>
							<div class="form-group">
								<label class="control-label">Ngày cập nhật</label>
								<s:textfield readonly="true" cssClass="form-control"
									name="objBaiViet.ngayCapNhat" value="%{objBaiViet.ngayCapNhat}" />
							</div>
							<div class="form-group">
								<label class="control-label">Người duyệt</label>
								<s:textfield readonly="true" cssClass="form-control"
									value="%{objBaiViet.nguoiDuyetId}" />
							</div>
						</div>
						<div class="tile-footer">
							<s:submit cssClass="btn btn-primary" type="button">
								<i class="fa fa-fw fa-lg fa-check-circle"></i>Xác nhận</s:submit>
							&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary"
								href="danhSachBaiViet.action"><i
								class="fa fa-fw fa-lg fa-times-circle"></i>Trở về</a>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</main>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
	<script>
		ClassicEditor.create(document.querySelector('#noiDung'));
	</script>
</body>
</html>