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
import com.software.news.util.SplitPage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 卓音 on 2017/6/18.
 */
@WebServlet(name = "NewsFServlet",urlPatterns = "/newsf")
public class NewsFServlet extends BaseServlet {
    private NewsService newsService = new NewsServiceImpl();
    private NewsModuleService newsModuleService = new NewsModuleServiceImpl();

    public String list(HttpServletRequest request,HttpServletResponse response) throws Exception {
        int moduleId = Integer.parseInt(request.getParameter("module"));
        List<NewsModule> moduleList = newsModuleService.listAll();
//        List<NewsDto> newsList = newsService.queryByModule(moduleId);
        SplitPage splitPage = new SplitPage();
        int totalRows = newsService.getTotalRows(moduleId);
        splitPage.setTotalRows(totalRows);
        String flag = request.getParameter("flag");//flag代表跳转到哪一页
        String current = request.getParameter("current");//current 代表当前页
        if(current!=null){
            int currentPage = Integer.parseInt(current);
            splitPage.setCurrentPage(currentPage);
        }
        int newPage = splitPage.toNewPage(flag);
        List<NewsDto> newsList = newsService.queryByPage(splitPage,moduleId);
        request.setAttribute("module",moduleId);
        request.setAttribute("splitPage",splitPage);
        request.setAttribute("newsList",newsList);
        request.setAttribute("moduleList",moduleList);
        return "WEB-INF/views/frontpages/list.jsp";
    }

    public String detail(HttpServletRequest request,HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        List<NewsModule> moduleList = newsModuleService.listAll();
        News news = newsService.queryById(id);
        request.setAttribute("news",news);
        request.setAttribute("moduleList",moduleList);
        return "f:WEB-INF/views/frontpages/detail.jsp";
    }
}
