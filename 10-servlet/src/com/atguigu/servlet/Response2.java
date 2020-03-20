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
public class Response2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //key1=null，不共享请求域中的数据
        System.out.println(req.getAttribute("key1"));
        resp.getWriter().write("response2's result!");

    }
}
