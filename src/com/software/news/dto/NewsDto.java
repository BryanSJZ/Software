package com.software.news.dto;

/**
 * Created by 卓音 on 2017/6/16.
 */
public class NewsDto {
    //新闻ID
    private Integer id;

    //新闻标题
    private String title;

    //新闻内容
    private String content;

    //新闻发表时间
    private String time;

    //新闻种类
    private String type;

    //作者用户名
    private String author;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
