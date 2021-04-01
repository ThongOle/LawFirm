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
					<s:form action="/admin/dsNhatKy" method="post"
							enctype="multipart/form-data" theme="simple">
					<div>
										<s:hidden name="id" value="%{objNhatKy.id}" />
									</div>

									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Hành
											Động</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objNhatKy.hanhDong" value="%{objNhatKy.hanhDong}" />
										</div>
									</div>
									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Tên
											Chức Năng</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objNhatKy.tenChucNang"
												value="%{objNhatKy.tenChucNang}" />
										</div>
									</div>
									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Địa
											chỉ Ip</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objNhatKy.diaChiIP" value="%{objNhatKy.diaChiIp}" />
										</div>
									</div>
									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Ngày
											tạo</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objNhatKy.ngayTao" value="%{objNhatKy.ngayTao}" />
										</div>
									</div>
									<div class="form-group ">
										<label for="cname" class="control-label col-lg-3">Người
											tạo</label>
										<div class="col-lg-6">
											<s:textfield class=" form-control" id="cname"
												name="objNhatKy.nguoiTaoId" value="%{objNhatKy.nguoiTaoId}" />
										</div>
									</div>
									<div class="form-group ">
										<label for="ccomment" class="control-label col-lg-3">Nội
											dung</label>
										<div class="col-lg-6">
											<s:textarea rows="12" class="form-control " id="ccomment"
												name="objNhatKy.noiDung" value="%{objNhatKy.noiDung}"></s:textarea>
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