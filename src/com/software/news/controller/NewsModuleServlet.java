package com.software.news.controller;

import com.software.news.entity.NewsModule;
import com.software.news.service.NewsModuleService;
import com.software.news.service.impl.NewsModuleServiceImpl;
import com.software.news.util.BaseServlet;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

/**
 * @Description 新闻模块控制器
 * @Author shanjz
 * @Time 2017/5/16 17:51
 */
@WebServlet(name = "NewsModuleServlet" , urlPatterns = "/module")
public class NewsModuleServlet extends BaseServlet {

    //实例化新闻模块逻辑层
    private NewsModuleService newsModuleService = new NewsModuleServiceImpl();


    /**
     * 跳转到模块添加页面
     * @param request 请求
     * @param response 响应
     */
    public String toAdd(HttpServletRequest request, HttpServletResponse response) {
        return "f:/WEB-INF/views/backpages/addmodule.jsp";
    }

    /**
     * 添加新闻模块
     * @param request 请求
     * @param response 响应
     */
    public String add(HttpServletRequest request, HttpServletResponse response) {
        String module = request.getParameter("module");
        NewsModule newsModule = new NewsModule();
        newsModule.setModule(module);
        try {
            newsModuleService.newModule(newsModule);
            request.setAttribute("message","添加成功！");
            return "f:module?method=list";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 删除新闻模块
     * @param request 请求
     * @param response 响应
     */
    public String delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try{
            newsModuleService.delById(id);
            request.setAttribute("message","删除成功！");
            return "f:module?method=list";
//            response.sendRedirect("列表");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 跳转至修改页
     * @param request 请求
     * @param response 响应
     */
    private String toUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        NewsModule newsModule = newsModuleService.queryById(id);
        request.setAttribute("newsModule",newsModule);
        return "f:/WEB-INF/views/backpages/addmodule.jsp";
    }

    /**
     * 处理修改
     * @param request 请求
     * @param response 响应
     */
    public String update(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    /**
     * 查询新闻模块详情
     * @param request 请求
     * @param response 响应
     */
    public String query(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    /**
     * 获取新闻模块列表
     * @param request 请求
     * @param response 响应
     */
    public String list(HttpServletRequest request, HttpServletResponse response) {
        List<NewsModule> list = null;
        try {
            list = newsModuleService.listAll();
            request.setAttribute("list",list);
            return "f:WEB-INF/views/backpages/editmodule.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
