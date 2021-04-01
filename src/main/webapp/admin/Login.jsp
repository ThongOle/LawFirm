<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="../css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login - ZNA LawFirm</title>
<script type="text/javascript">
	function InvalidMsg(textbox) {
		if (textbox.value === '') {
			textbox.setCustomValidity('Hãy nhập tài khoản');
		} else {
			textbox.setCustomValidity('');
		}

		return true;
	}
	function InvalidMsg1(textbox) {
		if (textbox.value === '') {
			textbox.setCustomValidity('Hãy nhập mật khẩu');
		} else {
			textbox.setCustomValidity('');
		}

		return true;
	}
</script>
</head>
<body>
	<section class="material-half-bg">
		<div class="cover"></div>
	</section>
	<section class="login-content">
		<div class="logo">
			<h1>ZNA LawFirm</h1>
		</div>
		<div class="login-box">
			<s:form cssClass="login-form" action="dangNhapHeThong.action"
				theme="simple">
				<h3 class="login-head">
					<i class="fa fa-lg fa-fw fa-user"></i>ĐĂNG NHẬP
				</h3>
				<div class="form-group">
					<label class="control-label">TÀI KHOẢN</label>
					<s:textfield cssClass="form-control" type="text" required="required"
						oninvalid="InvalidMsg(this);" oninput="InvalidMsg(this);"
						placeholder="Email" id="taiKhoan" name="tenDangNhap"></s:textfield>
				</div>
				<div class="form-group">
					<label class="control-label">MẬT KHẨU</label>
					<s:textfield cssClass="form-control" type="password" 
						required="required" oninvalid="InvalidMsg1(this);" oninput="InvalidMsg1(this);" placeholder="Email" name="matKhau"></s:textfield>
				</div>
				<div class="form-group">
					<div class="utility">
						<div class="animated-checkbox">
							<label> <input type="checkbox"><span
								class="label-text">Lưu đăng nhập</span>
							</label>
						</div>
						<p class="semibold-text mb-2">
							<a href="#" data-toggle="flip">Quên mật khẩu?</a>
						</p>
					</div>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block">
						<i class="fa fa-sign-in fa-lg fa-fw"></i>ĐĂNG NHẬP
					</button>
				</div>
			</s:form>
			<form class="forget-form" action="index.html">
				<h3 class="login-head">
					<i class="fa fa-lg fa-fw fa-lock"></i>QUÊN MẬT KHẨU?
				</h3>
				<div class="form-group">
					<label class="control-label">EMAIL</label> <input
						class="form-control" type="text" placeholder="Email">
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block">
						<i class="fa fa-unlock fa-lg fa-fw"></i>LẤY LẠI MẬT KHẨU
					</button>
				</div>
				<div class="form-group mt-3">
					<p class="semibold-text mb-0">
						<a href="#" data-toggle="flip"><i
							class="fa fa-angle-left fa-fw"></i>Trờ về trang đăng nhập</a>
					</p>
				</div>
			</form>
		</div>
	</section>
	<!-- Essential javascripts for application to work-->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/main.js"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="../js/plugins/pace.min.js"></script>
	<script type="text/javascript">
		// Login Page Flipbox control
		$('.login-content [data-toggle="flip"]').click(function() {
			$('.login-box').toggleClass('flipped');
			return false;
		});
	</script>
</body>
</html>