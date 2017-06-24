package com.software.news.service;

import com.software.news.entity.Users;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description 用户相关逻辑层接口
 * @Author shanjz
 * @Time 2017/5/9 18:33
 */
public interface UsersService {
    public void newUsers(Users users);

    public List<Users> queryByStatus(int status) throws SQLException;

    public void delById(int id);

    Users queryByUsnAndPsw(Users user) throws SQLException;

    void audit(int id);

    void repulse(int id);
}
