package com.atguigu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

/**
 * Author beck
 * Date 2020/3/19 17:59
 **/
public class ParameterServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("---------doGet----------");
        //获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String hobby = req.getParameter("hobby");
        //多个值的时候使用getParameterValues
        String[] hobbys = req.getParameterValues("hobby");

        System.out.println("用户名: " + username);
        System.out.println("密码: " + password);
        System.out.println("兴趣爱好: " + hobby);
        System.out.println("兴趣爱好: " + Arrays.asList(hobbys));


    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("---------doPost----------");
        //设置请求体的字符集为UTF-8，从而解决post请求的中文乱码问题
        //setCharacterEncoding也要在获取请求参数之前调用才有效
        req.setCharacterEncoding("UTF-8");
        //获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String hobby = req.getParameter("hobby");
        //多个值的时候使用getParameterValues
        String[] hobbys = req.getParameterValues("hobby");

        System.out.println("用户名: " + username);
        System.out.println("密码: " + password);
        System.out.println("兴趣爱好: " + hobby);
        System.out.println("兴趣爱好: " + Arrays.asList(hobbys));
    }
}
