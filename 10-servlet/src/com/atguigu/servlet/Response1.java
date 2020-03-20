package com.atguigu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Author beck
 * Date 2020/3/20 10:20
 **/
public class Response1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("曾到此一游 Response1");

        req.setAttribute("key1", "value1");

        //设置响应状态码302，表示重定向（已搬迁）
        //resp.setStatus(302);

        //设置响应头，说明新的地址在哪里
        //resp.setHeader("Location", "http://localhost:8099/10_servlet_war_exploded/response2");
        //浏览器不能访问WB-INF
        //resp.setHeader("Location", "http://localhost:8099/10_servlet_war_exploded/WEB-INF/form.html");
        //可以访问工程外的资源
        //resp.setHeader("Location", "http://www.baidu.com");


        //方案二，推荐使用
        resp.sendRedirect("http://localhost:8099/10_servlet_war_exploded/response2");
    }
}
