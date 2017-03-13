<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/6
  Time: 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:300px xmlns:300px xmlns:300px>
<head>
    <meta charset="UTF-8">
    <title>welcome</title>
</head>
<body>
<form action="doInsert.jsp" method="post" >

    <table>

        <tr>
            <td>用户名：</td>
            <td><input type="text" value="" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" value="" name="password"></td>
        </tr>

    </table>
    <select name="type">
        <option name="admin" value="管理员">管理员</option>
        <option name="user" value="普通用户">普通用户</option>
    </select>
    <input type="submit" value="确认">
</form>
<a href="selSql.jsp">查看所有用户</a>
</body>
</html>