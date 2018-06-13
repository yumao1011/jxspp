<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet"
	href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.css" />
<link href="/jxspp/css/dlstyle.css" rel="stylesheet" type="text/css">
</head>

<body>

	<div class="login-boxtitle">
		<a href="home.html"><img alt="logo"
			src="/jxspp/images/logobig.png" /></a>
	</div>

	<div class="login-banner">
		<div class="login-main">
			<div class="login-banner-bg">
				<span></span><img src="/jxspp/images/big.jpg" />
			</div>
			<div class="login-box">

				<h3 class="title">欢迎登录江西特产购物平台</h3>

				<div class="clear"></div>
				<form action="/jxspp/login/login">
					<div class="login-form">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label> <input
								type="text" name="userName" id="user" placeholder="邮箱/手机/用户名">
						</div>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label> <input
								type="password" name="password" id="password"
								placeholder="请输入密码">
						</div>

					</div>
				<div class="login-links">
					
					<a href="/jxspp/register" class="zcnext am-fr am-btn-default">注册</a> <br />
				</div>
				<div class="am-cf">
					<input type="submit" name="" value="登 录"
						class="am-btn am-btn-primary am-btn-sm">
				</div>
				</form>
				<#if message??>
					<div>
						<label style="color:red">${message }</label>
					</div>
				</#if>
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