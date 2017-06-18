package com.software.news.dao;

import com.software.news.entity.News;
import com.software.news.util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Description 新闻持久层
 * @Author shanjz
 * @Time 2017/5/9 18:31
 */
public class NewsDao {
    /**
     * 添加新闻
     * @param news 新闻实体类
     */
    public void newNews(News news){
        DBConn dbConn = new DBConn("db_news");
        String sql = "INSERT INTO t_news(title,content,type,author) VALUES(?,?,?,?)";
        dbConn.preparedStatement(sql);
        dbConn.setString(1,news.getTitle());
        dbConn.setString(2,news.getContent());
        dbConn.setString(3,news.getType());
        dbConn.setString(4,news.getAuthor());
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 根据ID删除
     * @param id ID
     */
    public void delById(int id){
        DBConn dbConn = new DBConn("db_news");
        String sql = "DELETE FROM t_news WHERE id = " + id;
        dbConn.preparedStatement(sql);
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 根据ID更新
     * @param news 新闻实体类
     */
    public void updateById(News news){
        DBConn dbConn = new DBConn("db_news");
        String sql = "UPDATE t_news SET title = ? , content = ? , type = ? WHERE id = " + news.getId();
        dbConn.preparedStatement(sql);
        dbConn.setString(1,news.getTitle());
        dbConn.setString(2,news.getContent());
        dbConn.setString(3,news.getType());
//        dbConn.setString(4,news.getAuthor());
        dbConn.executeUpdate();
        dbConn.close();
    }

    /**
     * 通过ID查询
     * @param id ID
     * @return 新闻实体类
     */
    public News queryById(int id){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT * FROM t_news WHERE id = " + id;
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        News news = new News();
        try {
            while(rs.next()){
                news.setId(rs.getInt("id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setType(rs.getString("type"));
                news.setAuthor(rs.getString("author"));
                news.setTime(rs.getString("time"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        dbConn.close();
        return news;

    }

    /**
     * 查询所有新闻
     * @return 列表
     */
    public List<News> queryAll(){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT * FROM t_news";
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        List<News> list = new ArrayList<News>();
        try {
            while(rs.next()){
                News news = new News();
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setType(rs.getString("type"));
                news.setAuthor(rs.getString("author"));
                news.setTime(rs.getString("time"));
                list.add(news);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
