<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--1. 遍历1-10的情况
        begin属性设置开始的索引
        end属性设置结束的索引
        var属性表示循环的变量（也是当前正在遍历到的数据）

        for (int i = 1; i < 10; i++)
    --%>
    <table>
        <c:forEach begin="1" end="10" var="i">
            <tr>
                <td>第${i}行</td>
            </tr>
        </c:forEach>
    </table>
    <hr>
    <%--2. 遍历Object数组
        for(Object : arr)
        items表示遍历的数据源（遍历的集合）
        var表示当前遍历到的数据
        --%>

    <%
        request.setAttribute("arr", new String[] {"123456", "234567", "3456789"});
    %>
    <c:forEach items="${requestScope.arr}" var="item">
        ${item}<br>
    </c:forEach>
    <hr>
    <%
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("key1", "value1");
        map.put("key2", "value2");
        map.put("key3", "value3");
        request.setAttribute("map", map);
       /* for (Map.Entry<String, Object> entry: map.entrySet()) {

        }*/

    %>
    <c:forEach items="${requestScope.map}" var="entry">
        <h1>${entry.key}</h1>          <%--调用getKey方法--%>
        <h1>${entry.value}</h1>        <%--调用getValue方法--%>
        <h1>${entry.key} = ${entry.value}</h1>

    </c:forEach>

</body>
</html>
