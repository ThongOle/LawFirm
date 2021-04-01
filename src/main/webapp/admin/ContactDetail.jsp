<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Khai báo sử dụng thẻ tag của struts -->
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
					<s:form  id="commentForm"
						action="dscontact.action" method="post" theme="simple"
						enctype="multipart/form-data">
						<div>
							<s:hidden name="id" value="%{objContact.id}" />
						</div>

						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Người
								gửi</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.dienThoai" value="%{objContact.hoTen}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Điện
								thoại</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.dienThoai" value="%{objContact.dienThoai}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Email</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.email" value="%{objContact.email}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Địa chỉ</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.diaChi" value="%{objContact.diaChi}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Tiêu đề</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.tieuDe" value="%{objContact.tieuDe}" />
							</div>
						</div>
						<div class="form-group ">
							<label for="ccomment" class="control-label col-lg-3">Nội
								dung</label>
							<div class="col-lg-6">
								<s:textarea rows="12" class="form-control " id="ccomment"
									name="objContact.noiDung" value="%{objContact.noiDung}"></s:textarea>
							</div>
						</div>

						<div class="form-group ">
							<label for="cname" class="control-label col-lg-3">Ngày
								gửi</label>
							<div class="col-lg-6">
								<s:textfield class=" form-control" id="cname"
									name="objContact.ngayTao" value="%{objContact.ngayTao}" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-offset-3 col-lg-6">
								<s:submit cssClass="btn btn-primary" value="Xác Nhận"></s:submit>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
