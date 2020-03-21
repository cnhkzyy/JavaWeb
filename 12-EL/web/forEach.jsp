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
</body>
</html>
