<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //往四个域中都保存了相同的key的数据
        request.setAttribute("key", "request");
        session.setAttribute("key", "session");
        application.setAttribute("key", "application");
        pageContext.setAttribute("key", "pageContext");

    %>
    ${ key }
</body>
</html>
