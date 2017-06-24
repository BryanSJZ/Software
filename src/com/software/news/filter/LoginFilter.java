package com.software.news.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 卓音 on 2017/6/24.
 */
@WebFilter(filterName = "LoginFilter",urlPatterns = {"/news","/module","/back"})
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;
        HttpSession session = request.getSession();
        if(session.getAttribute("user")==null){
            response.sendRedirect("user?method=toLogin");
        } else {
            chain.doFilter(request,response);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
