<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/13
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/jspclass?useUnicode=true&characterEncoding=utf8&" +
            "zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=UTC&autoReconnect=true&useSSL=false";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "1234";
%>
<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String type = request.getParameter("type");
    String id = request.getParameter("id");

    System.out.println(id+"  "+username+"  "+password+"  "+type);
    try {
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        //language=SQL
        String sql = "update jspclass.user set username = ?,password=?,type=? where id=?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1,username);
        ps.setString(2,password);
        ps.setString(3, type);
        ps.setString(4, id);
        int row=ps.executeUpdate();

        if (row!=0){
            out.println("修改成功");
            response.setHeader("refresh", "3;URL=selSql.jsp");
        }else {
            out.print("修改失败");
            response.setHeader("refresh", "3;URL=selSql.jsp");
        }

        ps.close();
        connection.close();

    } catch (SQLException e) {
        e.printStackTrace();
    }


%>


</body>
</html>
