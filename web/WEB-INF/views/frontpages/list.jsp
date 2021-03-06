<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>东北师范大学信息与软件工程学院</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css" />
</head>

<body>
    <div id="header">
        <div id="banner-wrapper">
            <div id="banner">
                    <a href="${pageContext.request.contextPath}/user?method=toRegister" id="register">注册管理员</a>
                    <a href="${pageContext.request.contextPath}/back" id="login">后台</a>
            </div>
        </div>
        <div id="nav">
            <div id="nav-content">
                <ul>
                    <li class="first">
                        <a href=""></a>
                    </li>
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
                    <li index="13"><a href="${pageContext.request.contextPath}/user?method=toRegister">申请成为管理员</a></li>
                    <li index="14"><a href="${pageContext.request.contextPath}/back">登录后台</a></li>

                </ul>
            </div>
        </div>
    </div>
    <%--<a href="${pageContext.request.contextPath}/user?method=toRegister" id="register">注册管理员</a>--%>
    <%--<a href="${pageContext.request.contextPath}/back" id="login">后台</a>--%>
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
                <p>当前位置：<span class="now">新闻浏览 </span></p>
            </div>
            <div id="main-right-content">
                <ul>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <%--<li><span class="icon"></span><a href="" class="title">入党申请书</a><span class="date">2015-05-01</span></li>--%>
                    <c:forEach items="${newsList}" var="news">
                        <li><span class="icon"></span><a href="${pageContext.request.contextPath}/newsf?method=detail&id=${news.id}" class="title">${news.title}</a><span class="date">${news.time}</span></li>
                    </c:forEach>
                </ul>
                <div id="page">
                    共<span class="all">${splitPage.totalRows}</span>条
                    <span class="now">${splitPage.currentPage}/</span><span class="total">${splitPage.totalPage}</span>
                    <a href="${pageContext.request.contextPath}/newsf?method=list&flag=first&current=${splitPage.currentPage}&module=${module}">首页</a>
                    <a href="${pageContext.request.contextPath}/newsf?method=list&flag=previous&current=${splitPage.currentPage}&module=${module}">上页</a>
                    <a href="${pageContext.request.contextPath}/newsf?method=list&flag=next&current=${splitPage.currentPage}&module=${module}">下页</a>
                    <a href="${pageContext.request.contextPath}/newsf?method=list&flag=last&current=${splitPage.currentPage}&module=${module}">尾页</a>
                </div>
                <div align="center">
                    <c:forEach begin="1" end="${splitPage.totalPage}" var="page">
                        <a href="${pageContext.request.contextPath}/newsf?method=list&flag=${page}&current=${splitPage.currentPage}&module=${module}">${page}</a>
                    </c:forEach>
                </div>
            </div>
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