<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/2/28
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>dologin</title>
</head>
<body>
<%
    String Driver = "com.mysql.jdbc.Driver";
    String username = request.getParameter("username");
    System.out.println(session.getAttribute("username"));

    Class.forName(Driver);
    String url = "jdbc:mysql://localhost:3306/jspclass?useSSL=false";
    String user = "root";
    String paw = "1234";

    try {
        Connection connection = DriverManager.getConnection(url, "root", "1234");
        System.out.println("yse");
    } catch (SQLException e) {
        System.out.println(e);
    }
%>
</body>
</html>
