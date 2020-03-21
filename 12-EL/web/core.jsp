<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
    <c:set />   set标签可以往域中保存数据

    域对象.setAttribute(key, value)
    scope设置保存到哪个域
        page表示pageContext域（默认值）
        request表示Request域
        session表示Session域
        application表示ServletContext域
    var属性设置key是多少
    value属性设置值
    --%>
    保存之前: ${requestScope.abc}<br>
    <c:set scope="request" var="abc" value="abcValue"/><br>
    保存之后: ${requestScope.abc}<br>

</body>
</html>
