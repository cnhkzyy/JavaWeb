<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--URL: http://127.0.0.1:8099/12_EL_war_exploded/other_el.jsp?username=zhaiyy&password=66666&hobby=java&hobby=cpp--%>

    输出请求参数username的值: ${ param.username }<br>
    输出请求参数password的值: ${ param.password }<br>
    输出请求参数hobby的值: ${ param.hobby }<br>  <%--多个值时param只能得到其中的一个值--%>

    输出请求参数username的值: ${ paramValues.username[0] }<br>
    输出请求参数hobby的值: ${ paramValues.hobby[1] }<br>

    <hr>
    输出请求头【user-agent】的值: ${header["user-agent"]}<br>
    输出请求头【Connection】的值: ${header.Connection}<br>
    <hr>
    输出请求头【user-agent】的值: ${headerValues["user-agent"][0]}<br>
    <hr>
    输出Cookie的名称: ${cookie.JSESSIONID.name}<br>
    输出Cookie的值 ${cookie.JSESSIONID.value}<br>
    <hr>
    输出&lt;Context-param&gt;的username的值: ${initParam.username}<br>
    输出&lt;Context-param&gt;的url的值: ${initParam.url}<br>

</body>
</html>
