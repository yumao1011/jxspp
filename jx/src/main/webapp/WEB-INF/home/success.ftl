<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet"  type="text/css" href="/jxspp/AmazeUI-2.4.2/assets/css/amazeui.css"/>
<link href="/jxspp/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
<link href="/jxspp/basic/css/demo.css" rel="stylesheet" type="text/css" />

<link href="/jxspp/css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/jxspp/basic/js/jquery-1.7.min.js"></script>

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
     </div></div>
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
	<div class="logo"><img src="/jxspp/images/logo.png" /></div>
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



<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em>¥9.90</em></li>
       <div class="user-info">
         <p>收货人：艾迪</p>
         <p>联系电话：15871145629</p>
         <p>收货地址：湖北省 武汉市 武昌区 东湖路75号众环大厦</p>
       </div>
             请认真核对您的收货信息，如有错误请联系客服
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="/jxspp/person/order.html" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
        <a href="/jxspp/person/orderinfo.html" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>


<div class="footer" >
 <div class="footer-hd">
 <p>
 <a href="#">恒望科技</a>
 <b>|</b>
 <a href="#">商城首页</a>
 <b>|</b>
 <a href="#">支付宝</a>
 <b>|</b>
 <a href="#">物流</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>
 <a href="#">关于恒望</a>
 <a href="#">合作伙伴</a>
 <a href="#">联系我们</a>
 <a href="#">网站地图</a>
 <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
 </p>
 </div>
</div>


</body>
</html>
