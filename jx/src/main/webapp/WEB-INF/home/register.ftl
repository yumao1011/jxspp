<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet"
	href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="/jxspp/css/dlstyle.css" rel="stylesheet" type="text/css">
<script src="/jxspp/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="/jxspp/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
<script src="/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function check(){
		var pwd = $("#password").val();
		var pwd2 = $("#passwordRepeat").val();
		if(pwd != pwd2){
			alert("两次密码不一致！");
		}
	}
</script>


</head>

<body>

	<div class="login-boxtitle">
		<a href="home/demo.html"><img alt=""
			src="/jxspp/images/logobig.png" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img src="/jxspp/images/big.jpg" />
			</div>
			<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">邮箱注册</a></li>
						<li><a href="">手机号注册</a></li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form action="/jxspp/register/register" method="post">
								<#if emailegisterMessage??>
									<div class="user-email">
										<input type="text" style="color:red" value="${emailegisterMessage}" >
s									</div>
								</#if>
								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input
										type="email" name="email" id="email" placeholder="请输入邮箱账号">
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password" placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="password2" id="passwordRepeat"
										placeholder="确认密码" onblur="check()">
								</div>
								
									
								
								<div class="am-cf">
									<input type="submit" name="" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form>
						</div>

						<div class="am-tab-panel">
							<form action="/jxspp/register/register" method="post">
								<div class="user-phone">
									<label for="phone"><i
										class="am-icon-mobile-phone am-icon-md"></i></label> <input type="tel"
										name="phone" id="phone" placeholder="请输入手机号">
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password" placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="password2" id="passwordRepeat"
										placeholder="确认密码" onblur="check()">
								</div>
								<#if phoneRegisterMessage??>
									<label style="color:red">${phoneRegisterMessage}</label>
								</#if>
								<div class="am-cf">
									<input type="submit" name="" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form>
							<hr>
						</div>

						<script>
							$(function() {
								$('#doc-my-tabs').tabs();
							})
						</script>

					</div>
				</div>

			</div>
		</div>

		<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="/jxspp/index">江西特产</a>
							<b>|</b>
							<a href="/jxspp/index">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="# ">关于江西特产</a>
								<a href="# ">联系我们</a>
								<a href="# ">QQ:1696081719</a>
						</p>
					</div>
				</div>
</body>

</html>