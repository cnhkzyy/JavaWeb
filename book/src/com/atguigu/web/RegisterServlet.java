package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.pojo.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Author beck
 * Date 2020/3/20 15:56
 **/
public class RegisterServlet extends HttpServlet {

    private UserService userService = new UserServiceImpl();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. 获取请求的参数
        String username = req.getParameter("username");
        //System.out.println("username: " + username);
        String password= req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");
        //System.out.println("code: " + code);


        //2. 检查验证码是否正确  = = = 写死，要求验证码为: abcde
        if ("abcde".equalsIgnoreCase(code)) {
            //正确，检查用户名是否可用
            //不可用，调回注册页面
            if(userService.existsUsername(username)) {
                System.out.println("用户名[" + username + "]已存在!");
                req.getRequestDispatcher("/pages/user/regist.html").forward(req, resp);
            } else {
                //可用，调用Service保存到数据库
                userService.registerUser(new User(null, username, password, email));

            }
        } else {
            //不正确，调回注册页面
            System.out.println("验证码[" + code + "]错误");
            req.getRequestDispatcher("/pages/user/regist.html").forward(req, resp);
        }
    }
}
