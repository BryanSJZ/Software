package com.software.news.dao;

import com.software.news.entity.NewsModule;
import com.software.news.util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Description 新闻模块持久层
 * @Author shanjz
 * @Time 2017/5/9 18:32
 */
public class NewsModuleDao {
    /**
     * 添加新闻模块
     * @param newsModule 新闻模块实体对象
     */
    public void newModule(NewsModule newsModule){
        DBConn dbConn = new DBConn("db_news");
        String sql = "INSERT INTO t_news_module(module) VALUES(?)";
        dbConn.preparedStatement(sql);
        dbConn.setString(1,newsModule.getModule());
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 删除新闻板块
     * @param id id
     */
    public void delById(int id){
        DBConn dbConn = new DBConn("db_news");
        String sql = "DELETE FROM t_news_module WHERE id = " + id;
        dbConn.preparedStatement(sql);
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 修改新闻模块
     * @param newsModule 新闻模块
     */
    public void updateById(NewsModule newsModule){
        DBConn dbConn = new DBConn("db_news");
        String sql = "UPDATE t_news_module SET module = ? WHERE id = " + newsModule.getId();
        dbConn.preparedStatement(sql);
        dbConn.setString(1,newsModule.getModule());
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 根据ID查询模块信息
     * @param id ID
     * @return 模块实体类
     */
    public NewsModule queryById(int id){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT * FROM t_news_module WHERE id = " + id;
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        NewsModule newsModule = new NewsModule();
        try {
            while (rs.next()){
                newsModule.setId(rs.getInt("id"));
                newsModule.setModule(rs.getString("module"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        dbConn.close();
        return newsModule;
    }

    /**
     * 返回所有模块列表
     * @return 列表
     */
    public List<NewsModule> listAll(){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT * FROM t_news_module";
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        List<NewsModule> list = new ArrayList<>();
        try{
            while(rs.next()){
                NewsModule newsModule = new NewsModule();
                newsModule.setId(rs.getInt("id"));
                newsModule.setModule(rs.getString("module"));
                list.add(newsModule);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        dbConn.close();
        return list;
    }
}

