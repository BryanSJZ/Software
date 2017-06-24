package com.software.news.service.impl;

import com.software.news.dao.UsersDao;
import com.software.news.entity.Users;
import com.software.news.service.UsersService;
import com.software.news.util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Description 用户逻辑层实现
 * @Author shanjz
 * @Time 2017/5/9 18:35
 */
public class UsersServiceImpl implements UsersService {
    UsersDao usersDao = new UsersDao();

    @Override
    public void newUsers(Users users) {
        usersDao.newUser(users);
    }

    @Override
    public List<Users> queryByStatus(int status) throws SQLException {
        return usersDao.queryByStatus(status);
    }

    @Override
    public void delById(int id) {
        usersDao.delById(id);
    }

    @Override
    public Users queryByUsnAndPsw(Users user) throws SQLException {
        return usersDao.queryByUsnAndPsw(user);
    }

    @Override
    public void audit(int id) {
        usersDao.audit(id);
    }

    @Override
    public void repulse(int id) {
        usersDao.repulse(id);
    }
}
