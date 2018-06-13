<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>地址管理</title>

		<link href="/jxspp/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/jxspp/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/jxspp/css/addstyle.css" rel="stylesheet" type="text/css">
		<script src="/jxspp/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="/jxspp/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		<script src="/js/jquery.js" type="text/javascript" charset="utf-8"></script>
		

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
								<li><img src="/jxspp//images/logobig.png" /></li>
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
					<li class="index"><a href="#">首页</a></li>
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

					<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
							<#if addressList??>
								<#list addressList as address>
									<#if address_index==0 >
										<li class="user-addresslist defaultAddr">
									<#else>
										<li class="user-addresslist">
									</#if>
											<span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
											<p class="new-tit new-p-re">
												<span class="new-txt">${address.name }</span>
												<span class="new-txt-rd2">${address.phone }</span>
											</p>
											<div class="new-mu_l2a new-p-re">
												<p class="new-mu_l2cw">
													<span class="title">地址：</span>
													<span class="province">${address.province }</span>省
													<span class="city">${address.city }</span>市
													<span class="dist">${address.district }</span>区
													<span class="street">${address.fullAddress }</span></p>
											</div>
											<div class="new-addr-btn">
												<a href="/jxspp/address/deleteAddress?id=${address.id }&userName=${user.userName }" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
											</div>
										</li>
									</#list>
							</#if>
						</ul>
						<div class="clear"></div>
						<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form class="am-form am-form-horizontal" action="/jxspp/address/addAddress">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">收货人</label>
											<div class="am-form-content">
												<input type="text" id="user-name" name="name" placeholder="收货人">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-form-label" >手机号码</label>
											<div class="am-form-content">
												<input id="user-phone" name="phone" style="font-size:8px" placeholder="手机号必填" type="number">
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-address" class="am-form-label">所在地</label>
											<div class="am-form-content address">
												<select data-am-selected name="province">
													<option value="" selected>-请选择-</option>
													<option value="江西">江西省</option>
													<option value="广东">广东省</option>
													<option value="贵州">贵州省</option>
													<option value="山西">山西省</option>
													<option value="辽宁">辽宁省</option>
													<option value="四川">四川省</option>
												</select>
												<select data-am-selected name="city">
													<option value="" selected>-请选择-</option>
													<option value="温州市">温州市</option>
													<option value="武汉市">武汉市</option>
													<option value="上饶市">上饶市</option>
													<option value="赣州市">赣州市</option>
													<option value="南昌市">南昌市</option>
													<option value="深圳市">深圳市</option>
												</select>
												<select data-am-selected name="district">
													<option value="" selected>-请选择-</option>
													<option value="广丰">广丰</option>
													<option value="婺源">婺源</option>
													<option value="信州">信州</option>
													<option value="新国">新国</option>
												</select>
											</div>
										</div>
										<input type="hidden" name="userName" value=${user.userName } />
										<div class="am-form-group">
											<label for="user-intro" class="am-form-label">详细地址</label>
											<div class="am-form-content">
												<textarea class="" rows="3" id="user-intro" name="fullAddress" placeholder="输入详细地址"></textarea>
												<small>100字以内写出你的详细地址...</small>
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<input class="am-btn am-btn-danger" type="submit" value="保存" />
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>

					</div>

					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script>

					<div class="clear"></div>

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