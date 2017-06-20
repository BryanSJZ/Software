package com.software.news.util;
  
import com.software.news.*;
import com.software.news.dto.NewsDto;
import com.software.news.entity.News;

import java.sql.SQLException;
import java.util.List;
  
/** 
 * @Description 用于分页的接口，由Dao层继承，重写此两个方法 
 * Created by sjz on 2016/9/19. 
 */  
public interface PageInterface {  
    /** 
     * 查询所有记录，使用分页对象中的一些变量获取 
     * @param sPage 
     * @return list 
     */  
    public List<NewsDto> queryByPage(SplitPage sPage, int module);
  
    /** 
     * 查询记录条数 
     * @return int 
     */  
    public int getTotalRows(int module) throws SQLException;
}  
