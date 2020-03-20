package com.atguigu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Author beck
 * Date 2020/3/20 9:50
 **/
public class ResponseIOServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //会报错，两个流只能拿一个
//        resp.getWriter();
//        resp.getOutputStream();

        //要求：往客户端回传字符串数据
        PrintWriter writer = resp.getWriter();
        writer.write("response's content");
    }
}
