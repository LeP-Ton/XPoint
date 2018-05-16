<%--
  Created by IntelliJ IDEA.
  User: Angrykid
  Date: 2017/12/17
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>X点小游戏</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="/static/css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/static/js/index.js"></script>
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery-1.8.0.js"></script>
<body>

<div style="position: absolute;border-radius:0.5em;height: 300px;width: 200px;background-color: burlywood;margin-left: -100px;margin-top: -150px;top: 50%;left: 50%" class="login-container">
    <h3 align="center">X点小游戏</h3>

    <form id="form1" name="form1" action="${path}/mainController/doPoint" method="post" onsubmit="return check2(this)">
    <div align="center">
        <input type="text" id="cards" name="cards" validChar="(\d{1}\s)*\d{1}" isRequired="true" placeholder="请输入n张牌并且用空格隔开" value="${cards}"><br/>
        <span class="feedbackHide" id="cardsMsg">(请输入正确的起始点数)</span><br/>
        <input type="text" id="x" name="x" validChar="\d+" isRequired="true" placeholder="请输入目标点数" value="${x}"><br/>
        <span class="feedbackHide" id="xMsg">(请输入正确的目标点数)</span>
    </div>
    <div align="center">
        <input type="text" name="result" placeholder="结果" value="${result}"><br/><br/>
        <%--<button>计算结果</button>--%>
        <input id="calculate" type="submit" name="calculate" value="计算结果">
        <%--<input id="select" type="button" name="select" value="查看历史记录" onclick="select()">--%>
    </div>
</form>
<form id="form2" name="form2" action="/mainController/selectAll" method="post">
    <div align="center">
    <input id="select" type="submit" name="select" value="查看历史">
    </div>
</form>

</div>

<!--表单验证-->
<%--<script src="${path}/js/jquery.validate.min.js?var1.14.0"></script>--%>

</body>

</html>