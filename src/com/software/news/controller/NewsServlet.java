package com.software.news.controller;

import com.software.news.dao.NewsDao;
import com.software.news.dto.NewsDto;
import com.software.news.entity.News;
import com.software.news.entity.NewsModule;
import com.software.news.service.NewsModuleService;
import com.software.news.service.NewsService;
import com.software.news.service.impl.NewsModuleServiceImpl;
import com.software.news.service.impl.NewsServiceImpl;
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

    private NewsService newsService = new NewsServiceImpl();
    private NewsModuleService newsModuleService = new NewsModuleServiceImpl();


    /**
     * 跳转到新闻详情页面
     * @param request 请求
     * @param response 响应
     */
    public String query(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        News news = newsService.queryById(id);
        request.setAttribute("news",news);
        return "f:新闻详情页面";
    }

    /**
     * 跳转到新闻列表
     * @param request 请求
     * @param response 响应
     */
    public String list(HttpServletRequest request, HttpServletResponse response) {
        List<NewsDto> newsList = newsService.queryAllNews();
        request.setAttribute("list",newsList);
        return "f:WEB-INF/views/backpages/article-list.jsp";
    }

    /**
     * 跳转到修改页面
     * @param request 请求
     * @param response 响应
     */
    public String toUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        News news = newsService.queryById(id);
        List<NewsModule> moduleList = newsModuleService.listAll();
        request.setAttribute("news",news);
        request.setAttribute("moduleList",moduleList);
        return "f:WEB-INF/views/backpages/article-edit.jsp";
    }

    /**
     * 处理修改新闻
     * @param request 请求
     * @param response 响应
     */
    public String updateById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String type = request.getParameter("type");
        String content = request.getParameter("content");
        News news = new News();
        news.setId(id);
        news.setTitle(title);
        news.setType(type);
        news.setContent(content);
        newsService.updateById(news);
        return "f:news?method=list";
    }

    /**
     * 删除新闻
     * @param request 请求
     * @param response 响应
     */
    public String delById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        newsService.delById(id);
        return "r:news?method=list";
    }

    /**
     * 处理添加新闻
     * @param request 请求
     * @param response 响应
     */
    public String newNews(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String type = request.getParameter("type");
        News news = new News();
        news.setTitle(title);
        news.setContent(content);
        news.setType(type);
        newsService.newNews(news);
        return "r:news?method=list";
    }

    /**
     * 跳转到新闻添加页面
     * @param request 请求
     * @param response 响应
     */
    public String toNewNews(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<NewsModule> moduleList = newsModuleService.listAll();
        request.setAttribute("moduleList",moduleList);
        return "f:WEB-INF/views/backpages/article-add.jsp";
    }
}
