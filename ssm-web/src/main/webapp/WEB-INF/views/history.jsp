<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/5 0005
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>X点小游戏</title>
    <style>
        /**{margin: 0;padding: 0}*/
        table{border-spacing: 0;border-collapse: collapse;text-align: center}
        table tbody{font-size: x-small;display: block;height: 180px;overflow-y: scroll;overflow-x: hidden}
        table thead,tbody tr{display: table;width: 100%;table-layout: fixed;}
        table thead{font-size: x-small;width: calc(100% - 1.2em)}
        table thead th{background: burlywood;
        }
    </style>
</head>
<body>
<div style="position: absolute;border-radius:0.5em;height: 300px;width: 500px;background-color: burlywood;margin-left: -250px;margin-top: -150px;top: 50%;left: 50%" class="login-container">
<h3 align="center">历史记录</h3>
<div align="center">
<table border="1" width="80%">
<thead>
<tr>
    <th>创建时间</th>
    <th>目标点数</th>
    <th>起始点数</th>
    <th>输出结果</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="list">
<tr>
    <td>${list.create_time}</td>
    <td><center>${list.aim_point}</center></td>
    <td><center>${list.input}</center></td>
    <td><center>${list.output}</center></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</body>
</html>
