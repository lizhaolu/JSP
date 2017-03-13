<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/6
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    //com.mysql.cj.jdbc.Driver
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/jspclass?autoReconnect=true&useSSL=false";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";
%>

<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String types = request.getParameter("type");

    try {
        Class.forName(DRIVER);
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        if (connection!=null){
            System.out.println("success");
        }
        //language=SQL
        String sql = "SELECT * FROM user WHERE username=? AND password=? AND user.type=?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);
        statement.setString(3,types);
        statement.executeQuery();
        ResultSet set = statement.getResultSet();
        if (set.absolute(1)){
            out.print("欢迎"+username+"登录");
        }else {
            out.print("用户名或密码错误");
        }

        set.close();
        statement.close();
        connection.close();
    } catch (Exception e) {

        System.out.println(e);
    }
%>
</body>
</html>
