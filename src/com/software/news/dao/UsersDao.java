package com.software.news.dao;

import com.software.news.entity.Users;
import com.software.news.util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
        String sql = "INSERT INTO t_users(username,password,photo,status) VALUES(?,?,?,?)";
        dbConn.preparedStatement(sql);
        dbConn.setString(1,users.getUsername());
        dbConn.setString(2,users.getPassword());
        dbConn.setString(3,users.getPhoto());
        dbConn.setInt(4,users.getStatus());
        dbConn.executeUpdate();
        dbConn.close();
    }

    public List<Users> queryByStatus(int status) throws SQLException {
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT username,password,photo,status FROM t_users WHERE status=" + status;
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        List<Users> list = new ArrayList<Users>();
        while(rs.next()){
            Users user = new Users();
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setPhoto(rs.getString("photo"));
            user.setStatus(rs.getInt("status"));
            list.add(user);
        }
        rs.close();
        dbConn.close();
        return list;
    }
}
