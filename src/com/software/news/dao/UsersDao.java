package com.software.news.dao;

import com.software.news.entity.Users;
import com.software.news.util.DBConn;

/**
 * @Description 用户持久层
 * @Author shanjz
 * @Time 2017/5/9 18:32
 */
public class UsersDao {
    /**
     * 添加新用户
     * @param users
     */
    public void newUser(Users users){
        DBConn dbConn = new DBConn("db_news");
        String sql = "INSERT INTO t_users(username,password) VALUES(?,?)";
        dbConn.preparedStatement(sql);
        dbConn.setString(1,users.getUsername());
        dbConn.setString(2,users.getPassword());
        dbConn.executeUpdate();
        dbConn.close();
    }
}
