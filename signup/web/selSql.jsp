<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/8
  Time: 8:24
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
    public static final String URL = "jdbc:mysql://localhost:3306/jspclass?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=UTC&autoReconnect=true&useSSL=false";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "1234";
%>

<%
    try {
        Class.forName(DRIVER);
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        //language=SQL
        String sql = "SELECT * FROM user;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet set = ps.executeQuery();
%>

<table border="1">

    <tr>
        <td>id值</td>
        <td>用户</td>
        <td>类型</td>
        <td>操作</td>
    </tr>

    <%
        while (set.next()) {
    %>

    <%="<tr>" + "<td>" + set.getString("id") + "</td>"%>
    <%="<td>" + set.getString("username") + "</td>"%>
    <%="<td>" + set.getString("type") + "</td>" %>
    <td><a href=doDelete.jsp?id=<%=set.getInt("id")%>>删除</a></td>
    <td><a href=doFindInfo.jsp?id=<%=set.getInt("id")%>>修改</a></td>
    </tr>

    <%

            }
    } catch (Exception e) {

    }
    %>

</table>
</body>
</html>
