package com.software.news.entity;

/**
 * @Description
 * @Author shanjz
 * @Time 2017/5/9 17:58
 */
public class Users {
    //用户ID
    public Integer id;

    //用户名
    private String username;

    //密码(加密)
    private String password;

    //头像
    private String photo;

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUserName(String userName) {
        this.username = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
