package com.software.news.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * @Description 连接数据库工具类
 * @Author 单继重
 * @Date 2016/10/26 14:50
 */
public class DBConn {
    //尝试properties
//    static String DRIVER;
//    static String USERNAME;
//    static String PASSWORD;
//    static String URL;
//    static {
//        try{
//            Properties properties = new Properties();
//            FileInputStream in = new FileInputStream("DBConn.properties");
//            properties.load(in);
//            DRIVER = properties.getProperty("driver");
//            System.out.println(DRIVER);
//            USERNAME = properties.getProperty("username");
//            PASSWORD = properties.getProperty("password");
//            URL = properties.getProperty("url");
//            in.close();
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//    }

    private String DRIVER = "com.mysql.jdbc.Driver";
    private String USERNAME = "root";
    private String PASSWORD = "root";
    private String URL = "jdbc:mysql://localhost:3306/";
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    /**
     * 第一步：加载数据库驱动
     * 第二步：建立数据库连接
     * @param dbName 数据库名
     */
    public DBConn(String dbName) {
        try {
//            System.out.println(DRIVER);
            Class.forName(DRIVER);
            URL = URL + dbName;
            conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 第三步：编写sql语句
     * 第四步：建立sql语句执行器preparedStatement
     * @param sql sql语句
     */
    public void preparedStatement(String sql){
        try {
            ps = conn.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 第五步：将占位符用参数替代
     * @param index 占位符索引（第一个为1）
     * @param value 参数值
     */
    public void setString(int index,String value){
        try {
            ps.setString(index,value);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void setInt(int index,int value){
        try {
            ps.setInt(index,value);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 第六步：执行sql语句，返回受影响行数
     * @return 执行sql语句受影响行数
     */
    public int executeUpdate(){
        try {
            //System.out.println(ps);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * 第六步：执行sql语句，返回结果集
     * @return ResultSet
     */
    public ResultSet executeQuery(){
        try {
            return ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 关闭连接以及其他
     */
    public void close(){
        try{
            if(rs != null){
                rs.close();
            }
            if(ps != null){
                ps.close();
            }
            if(conn != null){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
