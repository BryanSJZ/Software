package com.software.news.controller;

import com.software.news.dao.NewsDao;
import com.software.news.entity.News;
import com.software.news.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Description 新闻相关控制器
 * @Author shanjz
 * @Time 2017/5/9 18:25
 */
@WebServlet(name = "NewsServlet",urlPatterns = "/news")
public class NewsServlet extends BaseServlet {

    private NewsDao newsDao = new NewsDao();

    /**
     * 跳转到新闻详情页面
     * @param request 请求
     * @param response 响应
     */
    public String query(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        News news = newsDao.queryById(id);
        request.setAttribute("news",news);
        return "f:新闻详情页面";
    }

    /**
     * 跳转到新闻列表
     * @param request 请求
     * @param response 响应
     */
    public String list(HttpServletRequest request, HttpServletResponse response) {
        List<News> newsList = newsDao.queryAll();
        request.setAttribute("list",newsList);
        return "f:列表页";
    }

    /**
     * 跳转到修改页面
     * @param request 请求
     * @param response 响应
     */
    public String toUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        News news = newsDao.queryById(id);
        request.setAttribute("news",news);
        return "f:新闻修改页面";
    }

    /**
     * 处理修改新闻
     * @param request 请求
     * @param response 响应
     */
    public String updateById(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    /**
     * 删除新闻
     * @param request 请求
     * @param response 响应
     */
    public String delById(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    /**
     * 处理添加新闻
     * @param request 请求
     * @param response 响应
     */
    public String newNews(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    /**
     * 跳转到新闻添加页面
     * @param request 请求
     * @param response 响应
     */
    public String toNewNews(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }
}
