package com.software.news.service;

import com.software.news.dto.NewsDto;
import com.software.news.entity.News;
import com.software.news.util.SplitPage;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description 新闻相关逻辑层接口
 * @Author shanjz
 * @Time 2017/5/9 18:33
 */
public interface NewsService {
    public void newNews(News news);
    public void delById(int id);
    public void updateById(News news);
    public News queryById(int id);
    public List<News> queryAll();
    public List<NewsDto> queryAllNews();
    public List<NewsDto> queryByModule(int moduleId);
    public List<NewsDto> queryByPage(SplitPage splitPage,int module);
    public int getTotalRows(int module) throws SQLException;
}
