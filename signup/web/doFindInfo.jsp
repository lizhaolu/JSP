<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/13
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>

<%!
    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/jspclass?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=UTC&autoReconnect=true&useSSL=false";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "1234";
%>

<%

    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    try {
        Class.forName(DRIVER);
        try {
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            //language=SQL
            String sql = "select * from jspclass.user WHERE id=?;";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet set = ps.executeQuery();

            if (set.next()) {
%>

<form action="doModifiy.jsp?id=<%=set.getInt("id")%>" method="post">
    <input type="text" value="<%=set.getString("username")%>" name="username">
    <input type="password" value="<%=set.getString("password")%>" name="password">
    <select name="type">
        <option value="管理员">管理员</option>
        <option value="普通用户">普通用户</option>
    </select>

    <input type="submit" value="提交">
    <input type="reset" value="清空">
</form>

<%
                set.close();
                ps.close();
                connection.close();
            } else {
                out.println("没有找到该用户");
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
