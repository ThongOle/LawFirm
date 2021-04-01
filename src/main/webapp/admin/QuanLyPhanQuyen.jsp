<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#btnCapNhat')
								.click(
										function() {
											var checkboxDanhSach = document
													.getElementsByName('danhSach');
											var checkboxThem = document
													.getElementsByName('them');
											var checkboxSua = document
													.getElementsByName('sua');
											var checkboxXoa = document
													.getElementsByName('xoa');
											var chucNangId = document
													.getElementsByClassName('idTenChucNang');
											var id = document
													.getElementsByClassName('idPhanQuyen');
											var vaiTroId = $(
													".vaiTroId option:selected")
													.val();

											
											var strPhanQuyen="";
											for (var i = 0; i < checkboxDanhSach.length; i++) {
												var objPhanQuyen = new Object();

												objPhanQuyen.id = id[i]
														.getAttribute('data-value');
												objPhanQuyen.vaiTroId = vaiTroId;
												objPhanQuyen.chucNangId = chucNangId[i]
														.getAttribute('data-value');
												objPhanQuyen.danhSach = checkboxDanhSach[i].value;
												objPhanQuyen.them = checkboxThem[i].value;
												objPhanQuyen.sua = checkboxSua[i].value;
												objPhanQuyen.xoa = checkboxXoa[i].value;

												phanQuyenArray.push(objPhanQuyen);
											}
											
											
											  $.ajax({
													type : "POST",
													url : "test.action",
													data : lstPhanQuyen1 : lstPhanQuyen1,
													contentType: "application/json; charset=utf-8",
													dataType: "json",
													success : window.location.reload()
											
												});
											

										});
					});
</script>

</head>
<body>
	<main class="app-content">
		<div class="app-title">
			<div>
				<h1>
					<i class="fa fa-th-list"></i> Basic Tables
				</h1>
				<p>Basic bootstrap tables</p>
			</div>
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
				<li class="breadcrumb-item">Tables</li>
				<li class="breadcrumb-item active"><a href="#">Simple
						Tables</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12" style="margin-left: auto; margin-right: auto" >
				<div class="tile">
					<h3 class="tile-title" style="text-align: center">Phần quyền theo vai trò</h3>
					<div class="row">
						<div class="col-md-3">
							<h5 style="text-align: center">Vai trò</h5>
							<s:select name="id" id="exampleFormControlSelect1" multiple="true" cssClass=" form-control" size="20px" 
							list="lstVaiTro" value="%{id}" listKey="id" listValue="tenVaiTro"/>
						</div>
							
						<div class="col-md-3">
							<h5 style="text-align: center">Quyền chưa được cấp</h5>
							<s:select name="colorN" multiple="true" cssClass=" form-control" size="20px" 
							list="#{1:'blue', 2:'pink', 3:'green', 4:'purple', 5:'crimson', 6:'indigo'}"
							value="%{{4, 6}}" />
						</div>
						<div class="col-md-2">
							<h5></h5>
							<button class="col-md-12 form-control" style="margin: auto; margin-top: 50px">></button>
							<button class="col-md-12 form-control" style="margin: auto; margin-top: 10px">>></button>
							<button class="col-md-12 form-control" style="margin: auto; margin-top: 10px"><</button>
							<button class="col-md-12 form-control" style="margin: auto; margin-top: 10px"><<</button>
							<div class="col-md-12" style="margin: auto; margin-top: 5px; margin-left: auto; margin-right: auto">
							<input type="checkbox" class="form-check-input">
								<label class="col-md-12 form-check-label">Thêm</label>
							</div>
							<div class="col-md-12" style="margin: auto; margin-top: 5px; margin-left: auto; margin-right: auto">
								<input type="checkbox" class="form-check-input">
								<label class="col-md-12 form-check-label">Sửa</label>
							</div>
							<div class="col-md-12" style="margin: auto; margin-top: 5px; margin-left: auto; margin-right: auto">
								<input type="checkbox" class="form-check-input">
								<label class="col-md-12 form-check-label">Xóa</label>
							</div>
							<div class="col-md-12" style="margin: auto; margin-top: 5px; margin-left: auto; margin-right: auto">
								<input type="checkbox" class="form-check-input">
								<label class="col-md-12 form-check-label">Danh Sách</label>
							</div>
						</div>
						<div class="col-md-3">
							<h5 style="text-align: center">Quyền được cấp</h5>
							<s:select name="colorN" multiple="true" cssClass="col-md-12 form-control" size="20px" 
							list="#{1:'blue', 2:'pink', 3:'green', 4:'purple', 5:'crimson', 6:'indigo'}"
							value="%{{4, 6}}" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

</body>
</html>