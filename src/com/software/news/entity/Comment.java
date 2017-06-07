package com.software.news.entity;

/**
 * @Description 新闻评论实体类
 * @Author shanjz
 * @Time 2017/5/9 17:58
 */
public class Comment{
    //评论ID
    private Integer id;

    //评论内容
    private String comment;

    //对应新闻ID
    private Integer newsId;

    //评论时间
    private String time;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }
}
