package com.software.news.util;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @Description
 * @Author shanjz
 * @Time 2017/5/23 17:34
 */
@SuppressWarnings("serial")
public class BaseServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        /**
         * 第一步 获取方法名
         */
        String methodName = req.getParameter("method");
        Method method = null;

        /**
         * 第二步 通过方法名称获取Method对象
         */
        try{
//            Method[] methods = this.getClass().getMethods();
            method = this.getClass().getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
        } catch (Exception e) {
            throw new RuntimeException("您要调用的方法" + methodName + "不存在！", e);
        }

        /**
         * 第三步 通过Method的invoke方法来调用
         */
        try{
            String result = (String)method.invoke(this, req, resp);
            if(result != null && !result.trim().isEmpty()) {//如果请求处理方法返回不为空
                int index = result.indexOf(":");//获取第一个冒号的位置
                if(index == -1) {//如果没有冒号，使用转发
                    req.getRequestDispatcher(result).forward(req, resp);
                } else {//如果存在冒号
                    String start = result.substring(0, index);//分割出前缀
                    String path = result.substring(index + 1);//分割出路径
                    if(start.equals("f")) {//前缀为f表示转发
                        req.getRequestDispatcher(path).forward(req, resp);
                    } else if(start.equals("r")) {//前缀为r表示重定向
                        resp.sendRedirect(req.getContextPath() + path);
                    }
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }
}
