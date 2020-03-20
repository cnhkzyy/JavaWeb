package com.atguigu.test;

import com.atguigu.utils.JdbcUtils;
import org.junit.Test;

/**
 * Author beck
 * Date 2020/3/20 12:24
 **/
public class JdbcUtilsTest {

    @Test
    public void testJdbcUtils() {
        System.out.println(JdbcUtils.getConnection());
    }
}
