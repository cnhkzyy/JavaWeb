<%@ page import="com.atguigu.pojo.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: beck
  Date: 2020/3/21
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Person person = new Person();
        person.setName("zyy");
        person.setPhones(new String[] {"123456", "23456", "676767"});
        List<String> cities = new ArrayList<String>();
        cities.add("北京");
        cities.add("上海");
        cities.add("深圳");
        person.setCities(cities);

        Map<String, Object> map = new HashMap<>();
        map.put("key1", "value1");
        map.put("key2", "value2");
        map.put("key3", "value3");

        person.setMap(map);

        pageContext.setAttribute("person", person);
    %>

    输出Person: ${ person }<br>
    输出Person的name属性: ${ person.name }<br>
    输出Person的phones数组属性值: ${ person.phones[2] }<br>
    输出Person的cities集合中的元素值: ${ person.cities }<br>
    输出Person的List集合中的个别元素值: ${ person.cities[0] }<br>
    输出Person的map集合: ${ person.map }<br>
    输出Person的map的某个key的值: ${ person.map.key1 }<br>
    输出Person的age属性: ${ person.age }<br>



</body>
</html>
