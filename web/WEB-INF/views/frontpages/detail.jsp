<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>东北师范大学信息与软件工程学院</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detail.css"/>
</head>

<body>
    <div id="header">
        <div id="banner-wrapper">
            <div id="banner">

            </div>
        </div>
        <div id="nav">
            <div id="nav-content">
                <ul>
                    <li class="first"><a href=""></a></li>
                    <li index="1"><a href="">学院概况</a></li>
                    <li index="2"><a href="">办学特色</a></li>
                    <li index="3"><a href="">学科专业</a></li>
                    <li index="4"><a href="">科学研究 </a></li>
                    <li index="5"><a href="">人才培养</a></li>
                    <li index="6"><a href="">招生信息</a></li>
                    <li index="7"><a href="">学生就业</a></li>
                    <li index="8"><a href="">合作交流</a></li>
                    <li index="9"><a href="">社会服务</a></li>
                    <li index="10"><a href="">党建工作</a></li>
                    <li index="11"><a href="">教职员工</a></li>
                    <li index="12"><a href="">学院资讯</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="main">
        <div id="pic">
            <img src="${pageContext.request.contextPath}/resources/img/list_banner.jpg" alt="信息与软件工程学院">
        </div>
        <div id="main-left">
            <h1>新闻浏览</h1>
            <ul>
                <%--<li><span></span><a href="">组织机构</a></li>--%>
                <%--<li><span></span><a href="">入党流程</a></li>--%>
                <%--<li><span></span><a href="">规章制度</a></li>--%>
                <%--<li><span></span><a href="">发展公示</a></li>--%>
                <%--<li><span></span><a href="">管理员登录</a></li>--%>
                <c:forEach items="${moduleList}" var="module">
                    <li><span></span><a href="${pageContext.request.contextPath}/newsf?method=list&module=${module.id}">${module.module}</a></li>
                </c:forEach>
            </ul>
            <img src="${pageContext.request.contextPath}/resources/img/left_banner.jpg" alt="pic">
        </div>
        <div id="main-right">
            <div id="main-right-header">
                <h1><span></span>入党流程</h1>
                <p>当前位置：<span class="now">党建工作 &gt; 入党流程</span></p>
            </div>
            <div id="main-right-content">
                <h2>${news.title}</h2>
                <p id="info">
                    作者来源：<span class="author">${news.author}</span>
                    点击数:<span class="click-number">95</span>
                    时间：<span class="date">${news.time}</span>
                </p>
                <div id="content">
                    ${news.content}
                </div>
            </div>
            <div id="show-comment">
                <div class="comments">
                    <p class=""></p>
                </div>
            </div>
            <hr />
            <%--<form id="comment">--%>
                <%--<input type="text" name="" value=""><br/>--%>
                <%--<input type="submit" name="" value="评论">--%>
            <%--</form>--%>
        </div>
    </div>
    <div id="footer">
        <div id="footer-left"></div>
        <div id="footer-right">
            <p>版权所有&copy;东北师范大学信息与软件工程学院 地址：吉林省长春市净月大街2555号 邮编：130117 &nbsp;&nbsp;&nbsp;&nbsp;联系我们|E-mail</p>
        </div>
    </div>

</body>

</html>