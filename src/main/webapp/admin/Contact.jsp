<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Khai báo sử dụng thẻ tag của struts -->
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<style>
.trChiTiet:hover {
cursor: pointer;
background: #f9f9fa;
font-weight: bold;
}
</style>
<meta charset="UTF-8">
<title>Danh Sách Contact</title>
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

	 </script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#checkAll').change(function() {
			$('.checkMe').prop('checked', this.checked);
		});
		// onclick checkbox
		$('.checkMe').change(function() {
			if ($('.checkMe:checked').length == $('.checkMe').length) {
				$('#checkAll').prop('checked', true);
			} else {
				$('#checkAll').prop('checked', false);
			}
		});
		//Xóa 
		$('#btnXoa').click(function() {

			var checkbox = document.getElementsByName('checkMe');
			var chuoiId = "";
			for (var i = 0; i < checkbox.length; i++) {
				if (checkbox[i].checked === true) {
					chuoiId += checkbox[i].value + ';';
				}
			}
			if (chuoiId.length == 0) {
				alert("bạn chưa chọn chủ đề cần xóa");
				return;
			}
			$.ajax({
				type : "GET",
				url : "xoaContact.action",
				dataType : "json",
				data : {
					chuoiId : chuoiId,
				},
				async : true,
				success : function(result) {
					if (result.ketQua != "") {
						alert(result.ketQua);
						//Reload lại thông tin
						window.location.reload();
					}
				}

			});
		});//kết thúc hàm xóa
		$('.thongTinChiTiet').click(function(){
			var idContact = $(this).attr('data-value');
			
			window.location.href="chiTietContact?idContact="+ idContact;
			
		});

	});
</script>
</head>
<body>
		<main class="app-content">
		<div class="app-title">
			<div>
				<h1>
					<i class="fa fa-th-list"></i> Danh sách bài viết
				</h1>
			</div>
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
				<li class="breadcrumb-item">Tables</li>
				<li class="breadcrumb-item active"><a href="#">Danh sách
						bài viết</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<s:form theme="simple">
							<table class="table table-hover table-bordered" id="sampleTable">
									<thead>
										<tr>
											<th><input class="check-all" type="checkbox"
												id="checkAll"></th>
											<th>Mã</th>
											<th>Người gửi</th>
											<th>Tiêu đề</th>
											<th>Ngày gửi</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="lstContact" var="b">
											<tr class="trChiTiet">
												<td><s:checkbox name="checkMe" class="checkMe"
														fieldValue="%{id}" /></td>
												<td class= "thongTinChiTiet" data-value= <s:property value="id" />><s:property value="id" /></td>
												<td class= "thongTinChiTiet" data-value= <s:property value="id" />><s:property value="hoTen" /></td>
												<td class= "thongTinChiTiet" data-value= <s:property value="id" />><s:property value="tieuDe" /></td>
												<td class= "thongTinChiTiet" data-value= <s:property value="id" />><s:property value="ngayTao" /></td>
											</tr>
										</s:iterator>
											
									</tbody>
								</table>
							<div class="row w3-res-tb" style="margin: 0px; padding-top: 10px">
								<input type="button" id="btnXoa" class="btn btn-sm btn-default"
									value="Xóa" style="float: right;" />
							</div>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</main>

</body>
</html>
