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

        //默认字符集ISO-8859-1
        System.out.println(resp.getCharacterEncoding());
//        //设置服务器字符集为UTF-8
//        resp.setCharacterEncoding("UTF-8");
//        //通过响应头，设置浏览器也使用UTF-8字符集
//        resp.setHeader("Content-Type", "text/html; charset=UTF-8");

        //它会同时设置服务器和客户端都使用UTF-8字符集，还设置了响应头
        //此方法一定要获取流对象之前调用才有效
        resp.setContentType("text/html; charset=UTF-8");
        System.out.println(resp.getCharacterEncoding());
        //要求：往客户端回传字符串数据
        PrintWriter writer = resp.getWriter();
        writer.write("哈哈哈哈哈");
    }
}
