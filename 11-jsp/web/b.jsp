<%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/20
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=utf-8"
         errorPage="/error500.jsp"
         isErrorPage="true"
         language="java" %>

<%--
errorPage表示错误后自动跳转去的路径
这个路径一般都是以斜杠打头，它表示请求地址为http://ip:port/工程路径/
映射到代码的web目录
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--练习：
1. 声明类的属性
--%>
    <%!
        private Integer id;
        private String name;
        private static Map<String, Object> map;
    %>

<%-- 2. 声明static静态代码块--%>
    <%!
        static {
            map = new HashMap<String, Object>();
            map.put("key1", "value1");
            map.put("key2", "value2");
            map.put("key3", "value3");
        }
    %>

<%--3. 声明类的方法 --%>
    <%!
        public int abc() {
            return 12;
        }
    %>

<%--4. 生成内部类--%>

    <%!
        public static class A {
            private Integer id = 12;
            private String abc = "abc";
        }
    %>

<%--1. 练习：输出整型
2. 输出浮点型
3. 输出字符串
4. 输出对象
--%>
    <%=12 %><br>
    <%=12.12 %><br>
    <%="我是字符串" %><br>
    <%=map %><br>
    <%=request.getParameter("username")%><br>



</body>
</html>
