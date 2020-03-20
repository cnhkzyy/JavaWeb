package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.pojo.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceImplTest {

    UserService userService = new UserServiceImpl();

    @Test
    public void registerUser() {
        userService.registerUser(new User(null, "bbj168", "666666", "bbj168@qq.com"));
        userService.registerUser(new User(null, "abc168", "666666", "abc168@qq.com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null, "bbj168", "666666", "bbj168@qq.com")));
    }

    @Test
    public void existsUsername() {
        if(userService.existsUsername("admin123")) {
            System.out.println("用户名已存在!");
        } else {
            System.out.println("用户名可用!");
        }
    }
}