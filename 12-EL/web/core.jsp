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
    <hr>
    <%--
    <c:if />  if标签用来做if判断

        test属性表示判断的条件（使用EL表达式输出）
    --%>
    <c:if test="${ 12 == 12}">
        <h1>12等于12</h1>
    </c:if>
    <hr>
    <%--
        <c:choose> <c:when> <c:otherwise>标签
        多路判断，跟switch...case...default非常接近

        choose标签开始选择判断
        when标签表示每一种判断情况
            test属性表示当前这种判断情况的值
        otherwise标签表示剩下的情况

        使用时需要注意的点:
        1. 标签里不能使用html注释，要使用jsp注释
        2. when标签的父标签一定要是choose标签


    --%>
    <%
        request.setAttribute("height", 130);
    %>
    <c:choose>
        <c:when test="${ requestScope.height > 190}" >
            <h2>小巨人</h2>
        </c:when>
        <c:when test="${ requestScope.height > 180}" >
            <h2>很高</h2>
        </c:when>
        <c:when test="${ requestScope.height > 170}"  >
            <h2>还可以</h2>
        </c:when>
        <c:otherwise>
            <c:choose>
                <c:when test="${ requestScope.height > 160}" >
                    <h3>大于160</h3>
                </c:when>
                <c:when test="${ requestScope.height > 150}" >
                    <h3>大于150</h3>
                </c:when>
                <c:otherwise>
                    <h3>其他小于150</h3>
                </c:otherwise>
            </c:choose>

<%--
            <h2>剩下小于170的情况</h2>
--%>
        </c:otherwise>
    </c:choose>

</body>
</html>
