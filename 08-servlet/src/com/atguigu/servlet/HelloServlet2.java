package com.atguigu.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Author beck
 * Date 2020/3/19 11:05
 **/
public class HelloServlet2 extends HttpServlet {


    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        //一定要注意写super.init()，否则会报空指针异常
        super.init(servletConfig);
        System.out.println("重写了init初始化方法，做了一些工作");
    }

    /**
     * doGet()  在get请求的时候调用
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
        System.out.println("HelloServlet2 的doGet方法");

        //也可以使用
        ServletConfig servletConfig = getServletConfig();
        System.out.println(servletConfig);
        //2. 获取初始化参数init-param
        System.out.println("初始化参数username的值是: " + servletConfig.getInitParameter("username"));
        System.out.println("初始化参数url的值是: " + servletConfig.getInitParameter("url"));
        //3. 获取ServletContext对象
        System.out.println(servletConfig.getServletContext());
    }


    /**
     * doPost() 在post请求的时候调用
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        System.out.println("HelloServlet2 的doPost方法");
    }
}
