<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/6
  Time: 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="doInsert.jsp" method="post">
  用户名：  <input type="text" name="username" value=""><br>
    密码：<input type="password" name="password" value=""><br>
    <select name="type">
        <option value="ptuser">普通用户</option>
        <option value="admit">管理员</option>
    </select><br>
    <input type="submit" value="submit">
</form>


</body>
</html>
