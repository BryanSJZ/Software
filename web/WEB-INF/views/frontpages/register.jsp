<%--
  Created by IntelliJ IDEA.
  User: Bryan
  Date: 2017/5/9
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user?method=register" method="post" enctype="multipart/form-data">
    <%--<input type="hidden" name="method" value="register">--%>
    用户名：<input name="username" type="text"><br><br>
    密&nbsp;&nbsp;码：<input name="password" type="text"><br><br>
    头像：<input type="file" name="photo"><br><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
