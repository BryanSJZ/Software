package com.software.news.controller;

import com.software.news.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description 用户相关控制器
 * @Author shanjz
 * @Time 2017/5/9 18:31
 */
@WebServlet(name = "UsersServlet",urlPatterns = "/user")
public class UsersServlet extends BaseServlet {

    /**
     * 跳转至注册页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String toRegister(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 处理注册 跳转至登陆
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String register(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 跳转至登陆页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String toLogin(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 登陆 正确至首页 不正确至登陆页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String login(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 跳转至修改密码页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String toUpdate(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 修改密码 跳转至登陆页面
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String update(HttpServletRequest request,HttpServletResponse response){
        return null;
    }

    /**
     * 注销
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String logout(HttpServletRequest request,HttpServletResponse response){
        return null;
    }
}
