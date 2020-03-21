<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        pageContext.setAttribute("key1", "pageContext1");
        pageContext.setAttribute("key2", "pageContext2");
        request.setAttribute("key2", "request");
        session.setAttribute("key2", "session");
        application.setAttribute("key2", "application");

    %>
<%--    ${ pageScope.key1 }--%>
    ${ key2 }<br>   <%--输出的是最小的域pageScope域中的key2值--%>
    ${ pageScope.key2 }<br>
    ${ requestScope.key2 }<br>
    ${ sessionScope.key2 }<br>
    ${ applicationScope.key2 }<br>



</body>
</html>
