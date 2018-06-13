<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="/jxspp/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/jxspp/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/jxspp/css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="/jxspp/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="/jxspp/AmazeUI-2.4.2/assets/js/amazeui.js"></script>			
	</head>

	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
								<#if user??&&user.userName??>
								欢迎您,<a href="/jxspp/person/userDetail?id=${user.id }&userName=${user.userName }" style="color:blue">${user.userName }</a>
								<a href="/jxspp/logout/" style="color:red">注销</a>
							<#else>
								亲，请<a href="/jxspp/login" target="_top" class="h" style="color:blue">登录</a>
								<a href="/jxspp/register" target="_top" style="color:pink">注册</a>
							</#if>
								</div>
							</div>
						</ul>
						<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="/jxspp/index" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<#if user??&&user.userName??>
							<div class="menu-hd MyShangcheng"><a href="/jxspp/person/userDetail?id=${user.id }&userName=${user.userName }" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
						<#else>
							<div class="menu-hd MyShangcheng"><a href="/jxspp/login" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
						</#if>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd">
							<#if user??>
								<a id="mc-menu-hd" href="/jxspp/cart/toCart?userName=${user.userName }" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h"></strong></a>
							<#else>
								<a id="mc-menu-hd" href="/jxspp/login" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a>
							</#if>
						</div>
					</div>
					
				</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">
							<div class="logoBig">
								<li><img src="/jxspp/images/logobig.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form action="/jxspp/searchBar/search">
							<input id="searchInput" name="productName" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="/jxspp/index">首页</a></li>
                                <li class="qc"><a href="/jxspp/cart/toCart?userName=${user.userName }">购物车</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="/jxspp/images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${user.userName }</i></b></div>
								<div class="vip">
                                      <span></span><a href="#">会员专享</a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal" action="/jxspp/person/update">

								<div class="am-form-group">
									<label for="user-name2" class="am-form-label">昵称</label>
									<div class="am-form-content">
										<#if userDetail?? && userDetail.nickName??>
										<input type="text" name="nickName" id="user-name2" value=${userDetail.nickName}>
										<#else>
										<input type="text" name="nickName" id="user-name2" placeholder="无">
										</#if>
                                          <small>昵称长度不能超过40个汉字</small>
									</div>
								</div>
								<!-- 隐藏标签，传递用户名 -->
								<input type="hidden" name="userName" value=${user.userName } />
								<div class="am-form-group">
									<label for="user-name" class="am-form-label">姓名</label>
									<div class="am-form-content">
										<#if userDetail?? && userDetail.name??>
											<input type="text" id="user-name2" name="name" value=${userDetail.name }>
										<#else>
											<input type="text" id="user-name2" name="name" placeholder="无">
										</#if>
									</div>
								</div>

								<div class="am-form-group">
									<label class="am-form-label">性别</label>
									<div class="am-form-content sex">
										<label class="am-radio-inline">
											<#if userDetail?? && userDetail.sex?? && userDetail.sex=="male">
											<input type="radio" name="sex" value="male" checked="true"> 男
											<#else>
											<input type="radio" name="sex" value="male" data-am-ucheck> 男
											</#if>
										</label>
										<label class="am-radio-inline">
											<#if userDetail?? && userDetail.sex?? && userDetail.sex=="female">
											<input type="radio" name="sex" value="female" checked="true"> 女
											<#else>
											<input type="radio" name="sex" value="female" data-am-ucheck> 女
											</#if>
										</label>
										<label class="am-radio-inline">
											<#if userDetail?? && userDetail.sex?? && userDetail.sex=="secret">
											<input type="radio" name="sex" value="secret" checked="true"> 保密
											<#else>
											<input type="radio" name="sex" value="secret" data-am-ucheck> 保密
											</#if>
										</label>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-birth" class="am-form-label">生日</label>
									<div class="am-form-content">
										<#if userDetail?? && userDetail.birthday??>
										<input type="date" value=${userDetail.birthday }/>
										<#else>
										<input type="date" />
										</#if>
									</div>
							
								</div>
								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">电话</label>
									<div class="am-form-content">
										<#if userDetail?? && userDetail.phone??>
										<input type="tel" id="user-phone" name="phone" value=${userDetail.phone} >
										<#else>
										<input id="user-phone" name="phone" placeholder="无" type="tel">
										</#if>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-email" class="am-form-label">电子邮件</label>
									<div class="am-form-content">
										<#if userDetail?? && userDetail.email??>
										<input type="text" id="user-email" name="email" value=${userDetail.email } >
										<#else>
										<input type="text" id="user-email" name="email" placeholder="无" >
										</#if>
									</div>
								</div>
								<div class="info-btn">
									<input type="submit" value="保存修改" />
								</div>

							</form>
						</div>

					</div>

				</div>
				<!--底部-->
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
			</div>
			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="index.html"><i class="am-icon-user"></i>个人中心</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>个人资料</p>
						<ul>
							<li> <a href="/jxspp/person/userDetail?userName=${user.userName }&id=${user.id }">个人信息</a></li>
							<li> <a href="/jxspp/address/address?userName=${user.userName }&id=${user.id }">地址管理</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>我的交易</p>
						<ul>
							<li> <a href="/jxspp/comment/toComment?userName=${user.userName }">评价商品</a></li>
						</ul>
					</li>

				</ul>
			</aside>
		</div>

	</body>

</html>