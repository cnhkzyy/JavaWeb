package com.atguigu.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ContextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 获取web.xml中配置的上下文参数context-param
        ServletContext servletContext = getServletConfig().getServletContext();
        String username = servletContext.getInitParameter("username");
        System.out.println("context-param参数username的值是: " + username);
        System.out.println("context-param参数password的值是: " + servletContext.getInitParameter("password"));
        //2. 获取当前的工程路径，格式：/工程路径
        System.out.println("当前工程路径: " + servletContext.getContextPath());
        //3. 获取工程部署后在服务器硬盘上的绝对路径
        /**
         * / 被服务器解析地址为: http://ip:port/工程名，映射到IDEA代码的web目录
         */
        System.out.println("工程部署的路径是: " + servletContext.getRealPath("/"));
        System.out.println("工程下css目录的绝对路径是: " + servletContext.getRealPath("/css"));        System.out.println("工程下css目录的绝对路径是: " + servletContext.getRealPath("/css"));
        System.out.println("工程下imgs目录下的1.jpg的绝对路径是: " + servletContext.getRealPath("/imgs/1.jpg"));
        //4. 像Map一样存取数据
    }
}
