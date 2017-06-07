package com.software.news.service;

import com.software.news.entity.NewsModule;

import java.util.List;

/**
 * @Description 新闻模块逻辑层接口
 * @Author shanjz
 * @Time 2017/5/16 18:15
 */
public interface NewsModuleService {
    /**
     * 添加新闻模块
     * @param newsModule 新闻模块实体类
     * @throws Exception 异常
     */
    public void newModule(NewsModule newsModule) throws Exception;

    /**
     * 删除新闻模块
     * @param id ID
     * @throws Exception 异常
     */
    public void delById(int id) throws Exception;

    /**
     * 根据ID修改新闻模块
     * @param newsModule 新闻模块
     * @throws Exception 异常
     */
    public void updateById(NewsModule newsModule) throws Exception;

    /**
     * 根据ID查询模块详情
     * @param id ID
     * @return 模块实体类
     * @throws Exception 异常
     */
    public NewsModule queryById(int id) throws Exception;

    /**
     * 获取新闻模块列表
     * @return 列表
     * @throws Exception 异常
     */
    public List<NewsModule> listAll() throws Exception;
}
