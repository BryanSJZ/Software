<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/resources/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/static/h-ui/css/H-ui.login.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />

    <title>注册</title>

</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
    <div id="loginform" class="loginBox">
        <form class="form form-horizontal" action="${pageContext.request.contextPath}/user?method=register" method="post" enctype="multipart/form-data">
            <input type="hidden" name="method" value="login">
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-xs-8">
                    <input id="" name="username" type="text" placeholder="账户" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input id="" name="password" type="password" placeholder="密码" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input type="file" name="photo">
                </div>
            </div>

            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">
                    <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                </div>
            </div>
        </form>
    </div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/h-ui/js/H-ui.js"></script>
</body>
</html>