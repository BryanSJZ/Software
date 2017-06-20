<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">

	<link rel="Bookmark" href="favicon.ico">
	<link rel="Shortcut Icon" href="favicon.ico" />

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/h-ui.admin/css/style.css" />


	<title>后台管理</title>

</head>

<body>
	<!--_header 作为公共模版分离出去-->
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="index.html.shtml">后台管理</a>
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav">
				</nav>
				<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>超级管理员</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!--/_header 作为公共模版分离出去-->

	<!--_menu 作为公共模版分离出去-->
	<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<dl id="menu-article">
				<dt><i class="Hui-iconfont">&#xe616;</i> 模块管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a href="${pageContext.request.contextPath}/module?method=list">模块列表</a></li>
						<li><a href="${pageContext.request.contextPath}/module?method=toAdd">模块增加</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-picture">
				<dt><i class="Hui-iconfont">&#xe613;</i> 新闻管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a href="${pageContext.request.contextPath}/news?method=list">新闻列表</a></li>
						<li><a href="${pageContext.request.contextPath}/news?method=toNewNews">新闻增加</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product">
				<dt><i class="Hui-iconfont">&#xe620;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a href="${pageContext.request.contextPath}/user?method=list" title="">用户列表</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-comments">
				<dt><i class="Hui-iconfont">&#xe622;</i> 评论管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a href="comment-list.html" title="评论列表">评论列表</a></li>
					</ul>
				</dd>
			</dl>




		</div>
	</aside>
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);" onclick="displaynavbar(this)"></a>
	</div>
	<!--/_menu 作为公共模版分离出去-->
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);" onclick="displaynavbar(this)"></a>
	</div>
	<!--/_menu 作为公共模版分离出去-->

	<section class="Hui-article-box">
		<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
			<span class="c-gray en">&gt;</span> 用户管理
			<span class="c-gray en">&gt;</span> 用户列表
			<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);"
			    title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="Hui-article">
			<article class="cl pd-20">
				<div class="mt-20">
					<table class="table table-border table-bordered table-bg table-hover table-sort">
						<thead>
							<tr class="text-c">
								<th width="80">ID</th>
								<th width="80">头像</th>
								<th width="80">用户</th>
								<th width="40">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list0}" var="user" varStatus="status">
								<tr class="text-c">
									<td>${status.count}</td>
									<td><img src="${pageContext.request.contextPath}/resources/photo/${user.photo}" style="width: 50px;height: 50px"></td>
									<td>${user.username}</td>
									<td class="f-14 td-manage">
										<a style="text-decoration:none" class="ml-5" href="${pageContext.request.contextPath}/user?method=delById&id=${user.id}" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
									</td>
								</tr>
							</c:forEach>
							<tr class="text-c">
								<td>10001</td>
								<td>我是用户</td>
								<td class="f-14 td-manage">
									<a style="text-decoration:none" class="ml-5" href="" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</article>
		</div>
	</section>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/h-ui.admin/js/H-ui.admin.page.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/laypage/1.2/laypage.js"></script>

	<!--/请在上方写此页面业务相关的脚本-->
</body>

</html>