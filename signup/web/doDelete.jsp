<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/8
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delet</title>
</head>
<body>
<%!

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/jspclass?autoReconnect=true&useSSL=false";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

%>

<%
    try {
        String username = request.getParameter("username");
        Class.forName(DRIVER);
        Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        //language=SQL
        String sql = "DELETE  FROM user WHERE username=?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        int row = ps.executeUpdate();
        if (row == 1) {
            out.print("删除成功");
            response.setHeader("refresh", "3;URL=selSql.jsp");
        } else {
            System.out.println(username);

        }
    } catch (Exception e) {

    }


%>
end
</body>
</html>
