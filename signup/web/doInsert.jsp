<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/6
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>charushuju</title>
</head>
<body>
<%!
    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/jspclass";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "1234";
%>

<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String type = request.getParameter("type");

    System.out.println("username"+username+"password"+password+"type"+type);
    try {
        Class.forName(DRIVER);
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        //language=SQL
        String sql = "INSERT INTO user (username, password, type) VALUES ('" + username + "','" + password + "','" + type + "')";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.executeUpdate();
        statement.close();
        connection.close();
        out.print("您("+username+")已经注册成功,3秒后跳转到登录界面");
        response.setHeader("refresh", "3;URL=index.jsp");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        System.out.println("file");
    }

%>

</body>
</html>
