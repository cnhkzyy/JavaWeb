package com.atguigu.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ContextServlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取ServletContext对象
        ServletContext servletContext = getServletContext();
        System.out.println(servletContext);
        System.out.println("保存之前Context1中获取域数据Key1的值是: " + servletContext.getAttribute("key1"));
        servletContext.setAttribute("key1", "value1");
        System.out.println("Context1中获取域数据Key1的值是: " + servletContext.getAttribute("key1"));
        System.out.println("Context1中获取域数据Key1的值是: " + servletContext.getAttribute("key1"));
        System.out.println("Context1中获取域数据Key1的值是: " + servletContext.getAttribute("key1"));
    }
}
