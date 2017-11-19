package com.software.news.controller;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.software.news.entity.Users;
import com.software.news.service.UsersService;
import com.software.news.service.impl.UsersServiceImpl;
import com.software.news.util.BaseServlet;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Description 用户相关控制器
 * @Author shanjz
 * @Time 2017/5/9 18:31
 */
@WebServlet(name = "UsersServlet",urlPatterns = "/user")
public class UsersServlet extends BaseServlet {
    UsersService usersService = new UsersServiceImpl();

    /**
     * 跳转至注册页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String toRegister(HttpServletRequest request,HttpServletResponse response){
        return "f:WEB-INF/views/frontpages/register.jsp";
    }

    /**
     * 处理注册 跳转至登陆
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String register(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, SmartUploadException, NoSuchAlgorithmException {
    //        String username = request.getParameter("username");
    //        String password = request.getParameter("password");
    //        String photo = request.getParameter("photo");
            SmartUpload su = new SmartUpload();
    //        PageContext pageContext = JspFactory.getDefaultFactory().getPageContext(this, request, response, null, true, 8*1024, true);
    //        su.initialize(pageContext);
            su.initialize(this.getServletConfig(), request, response);
            su.upload();
            System.out.println(su.save("resources/photo"));
            String username = su.getRequest().getParameter("username");
            String password = su.getRequest().getParameter("password");
            MessageDigest md5=MessageDigest.getInstance("MD5");
            BASE64Encoder base64en = new BASE64Encoder();
            password = base64en.encode(md5.digest(password.getBytes("utf-8")));
    //        MessageDigest md5=MessageDigest.getInstance("MD5");
    //        BASE64Encoder base64en = new BASE64Encoder();
    //        password = base64en.encode(md5.digest(password.getBytes("utf-8")));
            File file = su.getFiles().getFile(0);
            String path = "/resources/photo";
            String photo = file.getFileName();
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            String time = sdf.format(date);
//            photo = photo + time;
            path = path + "/" + photo;
        System.out.println(path);
            file.saveAs(path, SmartUpload.SAVE_VIRTUAL);
            System.out.println(photo);
            Users user = new Users();
            user.setUsername(username);
            user.setPassword(password);
            user.setPhoto(photo);
            user.setStatus(0);
            usersService.newUsers(user);
        return "r:/newsf?method=list";
    }

    /**
     * 跳转至登陆页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String toLogin(HttpServletRequest request,HttpServletResponse response){
        return "f:WEB-INF/views/backpages/login.jsp";
    }

    /**
     * 登陆 正确至首页 不正确至登陆页
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String login(HttpServletRequest request,HttpServletResponse response) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
//        String flag = request.getParameter("flag");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        MessageDigest md5=MessageDigest.getInstance("MD5");
//        BASE64Encoder base64en = new BASE64Encoder();
//        password = base64en.encode(md5.digest(password.getBytes("utf-8")));
        Users user = new Users();
        user.setUsername(username);
        user.setPassword(password);
        System.out.println(user.getUsername() + "/" + user.getPassword());
        Users users = usersService.queryByUsnAndPsw(user);
        if(user.getUsername().equals("admin")&&user.getPassword().equals("admin")){
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            return "r:/back";
        }else{
            if(users != null){
                HttpSession session = request.getSession();
                session.setAttribute("user",users);
                return "r:/back";
            } else{
                return this.toLogin(request,response);
            }
        }

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
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "r:/user?method=toLogin";
    }

    /**
     * 获取用户列表
     * @param request 请求
     * @param response 响应
     * @return 地址
     */
    public String list(HttpServletRequest request,HttpServletResponse response) throws SQLException {
        List<Users> list0 = usersService.queryByStatus(0);
        List<Users> list1 = usersService.queryByStatus(1);
        List<Users> list2 = usersService.queryByStatus(2);
        request.setAttribute("list0",list0);
        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);
        return "f:WEB-INF/views/backpages/user-list.jsp";
    }

    public String delById(HttpServletRequest request,HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        usersService.delById(id);
        return this.list(request,response);
    }

    public String audit(HttpServletRequest request,HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        usersService.audit(id);
        return this.list(request,response);
    }

    public String repulse(HttpServletRequest request,HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        usersService.repulse(id);
        return this.list(request,response);
    }
}
