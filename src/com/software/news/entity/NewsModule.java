package com.software.news.entity;

/**
 * @Description
 * @Author shanjz
 * @Time 2017/5/9 18:18
 */
public class NewsModule {
    //主键ID
    private int id;

    //模块名
    private String module;

    //模块对应ID
    private int moduleId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public int getModuleId() {
        return moduleId;
    }

    public void setModuleId(int moduleId) {
        this.moduleId = moduleId;
    }
}
