<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
//        1. 值为null值的时候为空
        request.setAttribute("emptyNull", null);
//        2. 值为空串的时候为空
        request.setAttribute("emptyString", "");
//        3. 值是Object类型数组，长度为零的时候
        request.setAttribute("emptyArr", new Object[]{});
//        4. list集合，元素个数为零
        List<String> list = new ArrayList<>();
        request.setAttribute("emptyList", list);
//        5. map集合，元素个数为零
        Map<String, Object> map = new HashMap<String, Object>();
        request.setAttribute("emptyMap", map);
    %>
    ${ empty emptyNull }<br>
    ${ empty emptyString }<br>
    ${ empty emptyArr }<br>
    ${ empty emptyList}<br>
    ${ empty emptyMap}<br>

    <hr>

</body>
</html>
