package com.software.news.service.impl;

import com.software.news.dao.NewsDao;
import com.software.news.dao.NewsDtoDao;
import com.software.news.dto.NewsDto;
import com.software.news.entity.News;
import com.software.news.service.NewsService;
import com.software.news.util.SplitPage;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description 新闻逻辑层实现
 * @Author shanjz
 * @Time 2017/5/9 18:34
 */
public class NewsServiceImpl implements NewsService {
    @Override
    public void newNews(News news) {
        NewsDao newsDao = new NewsDao();
        newsDao.newNews(news);
    }

    @Override
    public void delById(int id) {
        NewsDao newsDao = new NewsDao();
        newsDao.delById(id);
    }

    @Override
    public void updateById(News news) {
        NewsDao newsDao = new NewsDao();
        newsDao.updateById(news);
    }

    @Override
    public News queryById(int id) {
        NewsDao newsDao = new NewsDao();
        return newsDao.queryById(id);
    }

    @Override
    public List<News> queryAll() {
        NewsDao newsDao = new NewsDao();
        return newsDao.queryAll();
    }

    @Override
    public List<NewsDto> queryAllNews(){
        NewsDtoDao newsDtoDao = new NewsDtoDao();
        return newsDtoDao.queryAll();
    }

    @Override
    public List<NewsDto> queryByModule(int moduleId) {
        NewsDtoDao newsDtoDao = new NewsDtoDao();
        return newsDtoDao.queryByModule(moduleId);
    }

    @Override
    public List<NewsDto> queryByPage(SplitPage splitPage, int module) {
        NewsDtoDao newsDtoDao = new NewsDtoDao();
        return newsDtoDao.queryByPage(splitPage,module);
    }

    @Override
    public int getTotalRows(int module) throws SQLException {
        return new NewsDtoDao().getTotalRows(module);
    }
}
