package com.software.news.dao;

import com.software.news.dto.NewsDto;
import com.software.news.entity.News;
import com.software.news.util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 卓音 on 2017/6/16.
 */
public class NewsDtoDao {
    public List<NewsDto> queryAll(){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT t_news.id,title,content,time,module AS type,author FROM t_news LEFT JOIN t_news_module ON t_news_module.id=t_news.type";
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        List<NewsDto> list = new ArrayList<NewsDto>();
        try {
            while(rs.next()){
                NewsDto news = new NewsDto();
                news.setId(rs.getInt("id"));
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

    public List<NewsDto> queryByModule(int moduleId){
        DBConn dbConn = new DBConn("db_news");
        String sql = "SELECT t_news.id,title,content,time,module AS type,author FROM t_news LEFT JOIN t_news_module ON t_news_module.id=t_news.type WHERE t_news.type=" + moduleId;
        dbConn.preparedStatement(sql);
        ResultSet rs = dbConn.executeQuery();
        List<NewsDto> list = new ArrayList<NewsDto>();
        try {
            while(rs.next()){
                NewsDto news = new NewsDto();
                news.setId(rs.getInt("id"));
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
