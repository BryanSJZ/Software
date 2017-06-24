<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">

	<link rel="Bookmark" href="favicon.ico">
	<link rel="Shortcut Icon" href="favicon.ico" />

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/simditor-2.3.6/styles/simditor.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/simditor-2.3.6/scripts/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/simditor-2.3.6/scripts/module.js">
	</script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/simditor-2.3.6/scripts/hotkeys.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/simditor-2.3.6/scripts/uploader.js">
	</script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/simditor-2.3.6/scripts/simditor.js"></script>


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
						<li>${sessionScope.user.username},<a href="${pageContext.request.contextPath}/user?method=logout">注销</a></li>
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
			<span class="c-gray en">&gt;</span> 新闻管理
			<span class="c-gray en">&gt;</span> 新闻添加
			<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);"
			    title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="Hui-article">
			<article class="cl pd-20">
				<div class="mt-20">
					<form class="form form-horizontal" id="form-article-add" action="${pageContext.request.contextPath}/news">
						<input type="hidden" name="method" value="newNews">
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-2">文章标题：</label>
							<div class="formControls col-xs-8 col-sm-9">
								<input type="text" class="input-text" id="" name="title">
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-2">文章作者：</label>
							<div class="formControls col-xs-8 col-sm-9">
								<input type="text" class="input-text" id="" name="author" value="${sessionScope.user.username}" readonly>
							</div>
						</div>

						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-2">文章分类：</label>
							<div class="formControls col-xs-8 col-sm-9">
								<select name="type">
									<option selected>--请选择--</option>
									<c:forEach items="${moduleList}" var="module">
										<option value="${module.id}">${module.module}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-2">文章内容：</label>
							<textarea name="content" id="editor" placeholder="请在这里输入" autofocus style="width: 100px;height: 100px"></textarea>
							<script>
                                var editor = new Simditor({
                                    textarea: $('#editor')
                                    //optional options
                                })
							</script>
						</div>
						<div class="row cl">
							<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
								<button onclick="article_save_submit();" class="btn btn-primary radius" type="submit">提交</button>
								<button onclick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
							</div>
						</div>
					</form>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/jquery.validation/1.14.0/messages_zh.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/webuploader/0.1.5/webuploader.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
		$(function () {
			$('.skin-minimal input').iCheck({
				checkboxClass: 'icheckbox-blue',
				radioClass: 'iradio-blue',
				increaseArea: '20%'
			});


			$list = $("#fileList"),
				$btn = $("#btn-star"),
				state = "pending",
				uploader;

			var uploader = WebUploader.create({
				auto: true,
				swf: 'lib/webuploader/0.1.5/Uploader.swf',

				// 文件接收服务端。
				server: 'fileupload.php',

				// 选择文件的按钮。可选。
				// 内部根据当前运行是创建，可能是input元素，也可能是flash.
				pick: '#filePicker',

				// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
				resize: false,
				// 只允许选择图片文件。
				accept: {
					title: 'Images',
					extensions: 'gif,jpg,jpeg,bmp,png',
					mimeTypes: 'image/*'
				}
			});
			uploader.on('fileQueued', function (file) {
				var $li = $(
						'<div id="' + file.id + '" class="item">' +
						'<div class="pic-box"><img></div>' +
						'<div class="info">' + file.name + '</div>' +
						'<p class="state">等待上传...</p>' +
						'</div>'
					),
					$img = $li.find('img');
				$list.append($li);

				// 创建缩略图
				// 如果为非图片文件，可以不用调用此方法。
				// thumbnailWidth x thumbnailHeight 为 100 x 100
				uploader.makeThumb(file, function (error, src) {
					if (error) {
						$img.replaceWith('<span>不能预览</span>');
						return;
					}

					$img.attr('src', src);
				}, thumbnailWidth, thumbnailHeight);
			});
			// 文件上传过程中创建进度条实时显示。
			uploader.on('uploadProgress', function (file, percentage) {
				var $li = $('#' + file.id),
					$percent = $li.find('.progress-box .sr-only');

				// 避免重复创建
				if (!$percent.length) {
					$percent = $(
						'<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>'
					).appendTo($li).find('.sr-only');
				}
				$li.find(".state").text("上传中");
				$percent.css('width', percentage * 100 + '%');
			});

			// 文件上传成功，给item添加成功class, 用样式标记上传成功。
			uploader.on('uploadSuccess', function (file) {
				$('#' + file.id).addClass('upload-state-success').find(".state").text("已上传");
			});

			// 文件上传失败，显示上传出错。
			uploader.on('uploadError', function (file) {
				$('#' + file.id).addClass('upload-state-error').find(".state").text("上传出错");
			});

			// 完成上传完了，成功或者失败，先删除进度条。
			uploader.on('uploadComplete', function (file) {
				$('#' + file.id).find('.progress-box').fadeOut();
			});
			uploader.on('all', function (type) {
				if (type === 'startUpload') {
					state = 'uploading';
				} else if (type === 'stopUpload') {
					state = 'paused';
				} else if (type === 'uploadFinished') {
					state = 'done';
				}

				if (state === 'uploading') {
					$btn.text('暂停上传');
				} else {
					$btn.text('开始上传');
				}
			});

			$btn.on('click', function () {
				if (state === 'uploading') {
					uploader.stop();
				} else {
					uploader.upload();
				}
			});

			var ue = UE.getEditor('editor');

		});
	</script>

	<!--/请在上方写此页面业务相关的脚本-->
</body>

</html>