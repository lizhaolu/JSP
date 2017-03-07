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
    <style>

        #nvayxh {
            width: 100%;
            height: 100px;
            background: url("img/nva.jpg");
        }

        #nvayxhxh ul {
            margin-left: 50px;
            padding-top: 50px;
            /*background-color: aquamarine;*/
        }

        #nvayxh li {
            align-content: center;
            list-style-type: none;
            padding-left: 80px;
            padding-top: 50px;
            float: left;
        }

        #headeryxh {
            width: 100%;
            height: 300px;
            background: url("img/header.jpg");
        }

        a {
            text-decoration: none;
        }

        #mainyxh {
            width: 100%;
            height: 600px;
        }

        #lyxh {
            width: 78%;
            float: left;
            height: 100%;
        }

        #lyxh img {
            margin: 20px;
            float: left;
        }

        #lyxh ul {
            float: right;
            margin-left: 50px;
            padding-left: 20px;
        }

        #lyxh li {

            margin: 5px;
            list-style-type: circle;

        }

        .fouryxh {
            float: left;
            width: 48%;
            height: 49%;
            /*border: solid;*/
            /*background-color: chocolate;*/
        }

        #ryxh {
            width: 20%;
            height: 100%;
            float: right;
            border: solid gray 1px;
            /*background-color: yellowgreen;*/
        }

        #footeryxh {
            width: 100%;
            height: 120px;
            font-size: medium;
            font-family: "Microsoft YaHei UI", serif;

            color: white;
            background-color: lightblue;
        }

        #footeryxh a {
            float: right;
        }
    </style>

</head>
<body>

<div id="nvayxh">
    <a name="label"></a>
    <ul>
        <li><a href="#">首页</a></li>
        <li><a href="#">test</a></li>
        <li><a href="#">test</a></li>
        <li><a href="#">test</a></li>
    </ul>

</div>
<div id="headeryxh">

</div>
<div id="mainyxh">
    <div id="lyxh">
        <div class="fouryxh">

            <img src="img/news1.jpg" alt="无法找到图片">
            <ol>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
            </ol>
        </div>
        <div class="fouryxh">
            <img src="img/new2.jpg" alt="无法找到图片">
            <ol>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
            </ol>
        </div>
        <div class="fouryxh">
            <img src="img/new3.jpg" alt="无法找到图片">
            <ol>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
            </ol>
        </div>
        <div class="fouryxh">
            <img src="img/new4.jpg" alt="无法找到图片">
            <ol>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
                <li><a href="#">news</a></li>
            </ol>
        </div>
    </div>
    <div id="ryxh">
        <form action="dologin.jsp" method="post">
            <table>
                <tr align="center">
                    <td>账户</td>
                    <td><input type="text" name="username" value=""></td>
                </tr>
                <tr align="center">
                    <td>密码</td>
                    <td><input type="password" value="" name="password"></td>
                </tr>
                <tr>
                    <td align="center">权限</td>
                    <td>
                        <select name="power">
                            <option>管理员</option>
                            <option>普通用户</option>
                        </select>
                    </td>
                </tr>
                <tr align="center">
                    <td><input type="submit" value="登录" name="submit"></td>
                    <td><a href="signUp.html" target="_blank"><input type="button" value="注册" name="signup"></a></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div id="footeryxh">
    <a href="#label"><img src="img/top.png" width="80px" height="80px"></a>
    <p align="center">杨晓辉</p>
    <p align="center">1514010631</p>
</div>
</body>
</html>