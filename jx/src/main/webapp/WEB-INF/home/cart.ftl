<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>购物车页面</title>

<link href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/jxspp/basic/css/demo.css" rel="stylesheet" type="text/css" />
<link href="/jxspp/css/cartstyle.css" rel="stylesheet" type="text/css" />
<link href="/jxspp/css/optstyle.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/jxspp/js/jquery.js"></script>

</head>

<body>

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
		<div class="logo">
			<img src="/jxspp/images/logo.png" />
		</div>
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

	<!--购物车 -->
	<div class="concent">
		<div id="cartTable">
			<div class="cart-table-th">
				<div class="wp">
					<div class="th th-chk">
						<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
					</div>
					<div class="th th-item">
						<div class="td-inner">商品信息</div>
					</div>
					<div class="th th-price">
						<div class="td-inner">单价</div>
					</div>
					<div class="th th-amount">
						<div class="td-inner">数量</div>
					</div>
					<div class="th th-sum">
						<div class="td-inner">金额</div>
					</div>
					<div class="th th-op">
						<div class="td-inner">操作</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>

			<tr class="item-list">
				<div class="bundle  bundle-last ">
					<div class="bundle-hd">
						<div class="bd-promos">
							<div class="act-promo">
								<a href="#" target="_blank"><span class="gt">再看看有没有喜欢的</span></a>
							</div>
							<span class="list-change theme-login"></span>
						</div>
					</div>
					<div class="clear"></div>
					<div class="bundle-main">
						<#list productList as product>
						<ul class="item-content clearfix">
							<li class="td td-chk">
								<div class="cart-checkbox ">
								</div>
							</li>
							<li class="td td-item">
								<div class="item-pic">
									<a href="#" target="_blank" data-title="" class="J_MakePoint"
										data-point="tbcart.8.12"> <img src="${product.image }"
										class="itempic J_ItemImg"></a>
								</div>
								<div class="item-info">
									<div class="item-basic-info">
										<a href="#" target="_blank" title=""
											class="item-title J_MakePoint" data-point="tbcart.8.11">${product.productName
											}</a>
									</div>
								</div>
							</li>
							<li class="td td-info">
								<div class="item-props item-props-can">
									<span class="sku-line">${product.introduce }</span>
								</div>
							</li>
							<li class="td td-price">
								<div class="item-price price-promo-promo">
									<div class="price-content">
										<div class="price-line">
											<em class="J_Price price-now" tabindex="0">${product.price
												}</em>
										</div>
									</div>
								</div>
							</li>
							<li class="td td-amount">
								<div class="amount-wrapper ">
									<div class="item-amount ">
										<div class="sl">
											<input type="hidden" class="productId" value="${product.id }" />
											<input type="hidden" class="price" value="${product.price }" />
											<input class="min am-btn" name="" type="button" value="-" />
											<input class="text_box" name="" type="text" value="1"
												style="width: 30px;" /> <input class="add am-btn" name=""
												type="button" value="+" />
										</div>
									</div>
								</div>
							</li>
							<li class="td td-sum">
								<div class="td-inner">
									<em tabindex="0" class="J_ItemSum number"
										id="total${product.id }">${product.price }</em>
								</div>
							</li>
							<li class="td td-op">
								<div class="td-inner">
									<a
										href="/jxspp/cart/deleteCart?userName=${user.userName }&productId=${product.id }"
										data-point-url="#" class="delete"> 删除</a>
								</div>
							</li>
						</ul>
						</#list>

					</div>
				</div>
			</tr>
			<div class="clear"></div>

			<div class="float-bar-wrapper">
				<div class="operations">
					<a href="#" hidefocus="true" class="deleteAll"></a> <a href="#"
						hidefocus="true" class="J_BatchFav"></a>
				</div>
				<div class="float-bar-right">
					<div class="price-sum">
						<span class="txt">合计:</span> <strong class="price">¥<em
							id="J_Total">0.00</em></strong>
					</div>
					<div class="btn-area">
						<a href="/jxspp/pay/topay?userName=${user.userName }" id="J_Go"
							class="submit-btn submit-btn-disabled"
							aria-label="请注意如果没有选择宝贝，将无法结算"> <span>结&nbsp;算</span></a>
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

		</div>

		<!--操作页面-->

		<div class="theme-popover-mask"></div>

		<div class="theme-popover">
			<div class="theme-span"></div>
			<div class="theme-poptit h-title">
				<a href="javascript:;" title="关闭" class="close">×</a>
			</div>
			<div class="theme-popbod dform">
				<form class="theme-signin" name="loginform" action="" method="post">

					<div class="theme-signin-left">

						<li class="theme-options">
							<div class="cart-title">颜色：</div>
							<ul>
								<li class="sku-line selected">12#川南玛瑙<i></i></li>
								<li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
							</ul>
						</li>
						<li class="theme-options">
							<div class="cart-title">包装：</div>
							<ul>
								<li class="sku-line selected">包装：裸装<i></i></li>
								<li class="sku-line">两支手袋装（送彩带）<i></i></li>
							</ul>
						</li>
						<div class="theme-options">
							<div class="cart-title number">数量</div>
							<dd>
								<input class="min am-btn am-btn-default" name="" type="button"
									value="-" /> <input class="text_box" name="" type="text"
									value="1" style="width: 30px;" /> <input
									class="add am-btn am-btn-default" name="" type="button"
									value="+" /> <span class="tb-hidden">库存<span
									class="stock">1000</span>件
								</span>
							</dd>

						</div>
						<div class="clear"></div>
						<div class="btn-op">
							<div class="btn am-btn am-btn-warning">确认</div>
							<div class="btn close am-btn am-btn-warning">取消</div>
						</div>

					</div>
					<div class="theme-signin-right">
						<div class="img-info">
							<img src="/jxspp/images/kouhong.jpg_80x80.jpg" />
						</div>
						<div class="text-info">
							<span class="J_Price price-now">¥39.00</span> <span id="Stock"
								class="tb-hidden">库存<span class="stock">1000</span>件
							</span>
						</div>
					</div>

				</form>
			</div>
		</div>
		<!--引导 -->
		<div class="navCir">
			<li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li class="active"><a href="shopcart.html"><i
					class="am-icon-shopping-basket"></i>购物车</a></li>
			<li><a href="/jxspp/person/index.html"><i
					class="am-icon-user"></i>我的</a></li>
		</div>
		<script type="text/javascript">
		$(function(){
			function decimal(num,v){
				var vv = Math.pow(10,v);
				return Math.round(num*vv)/vv;
			}
			$(".add").click(function() {
				var id = $(this).siblings(".productId").val();
				var num = parseInt($(this).siblings(".text_box").val())+1;
				var price = $(this).siblings(".price").val();
				price=price.substring(1);
				var total = num*price;
				$('#total'+id).text("￥"+decimal(total,2));
				var _total = $(".J_ItemSum").text().split("￥");
				var Total = 0.0;
				for(var i = 1 ; i< _total.length;i++){
					Total =parseFloat(Total)+ parseFloat(_total[i]);
				}
				$("#J_Total").text(decimal(Total,2));
				var total = $("#J_Total").text();
			});
			$(".min").click(function() {
				var id = $(this).siblings(".productId").val();
				var num = parseInt($(this).siblings(".text_box").val())-1;
				var price = $(this).siblings(".price").val();
				price=price.substring(1);
				console.info(price);
				var total = num*price;
				$('#total'+id).text("￥"+decimal(total,2));
				var _total = $(".J_ItemSum").text().split("￥");
				var Total = 0.0;
				for(var i = 1 ; i< _total.length;i++){
					Total =parseFloat(Total)+ parseFloat(_total[i]);
				}
				$("#J_Total").text(decimal(Total,2));
			});
			$("#J_Go").click(function(){
				$.ajax({
					type:"POST",
					url:"/jxspp/pay/putTotal",
					data:{userName:${user.userName},total:$("#J_Total").text()},
					dataType:"json",
					success:function(data){
					}
				});
			});
			
		});
		</script>
</body>

</html>