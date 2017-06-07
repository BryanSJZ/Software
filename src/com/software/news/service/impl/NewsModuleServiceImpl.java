package com.software.news.service.impl;

import com.software.news.dao.NewsModuleDao;
import com.software.news.entity.NewsModule;
import com.software.news.service.NewsModuleService;

import java.util.List;

/**
 * @Description 新闻模块逻辑层实现
 * @Author shanjz
 * @Time 2017/5/16 18:15
 */
public class NewsModuleServiceImpl implements NewsModuleService {

    @Override
    public void newModule(NewsModule newsModule) throws Exception {
        NewsModuleDao newsModuleDao = new NewsModuleDao();
        newsModuleDao.newModule(newsModule);
    }

    @Override
    public void delById(int id) throws Exception {
        NewsModuleDao newsModuleDao = new NewsModuleDao();
        newsModuleDao.delById(id);
    }

    @Override
    public void updateById(NewsModule newsModule) throws Exception {
        NewsModuleDao newsModuleDao = new NewsModuleDao();
        newsModuleDao.updateById(newsModule);
    }

    @Override
    public NewsModule queryById(int id) throws Exception {
        NewsModuleDao newsModuleDao = new NewsModuleDao();
        return newsModuleDao.queryById(id);
    }

    @Override
    public List<NewsModule> listAll() throws Exception {
        NewsModuleDao newsModuleDao = new NewsModuleDao();
        return newsModuleDao.listAll();
    }
}
