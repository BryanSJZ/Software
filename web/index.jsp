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
    <form action="/user?method=register" method="post" enctype="multipart/form-data">
      <%--<input type="hidden" name="method" value="register">--%>
      <input name="username" type="text"><br>
      <input name="password" type="text"><br>
      <input type="file" name="photo">
      <input type="submit">
    </form>
  </body>
</html>
