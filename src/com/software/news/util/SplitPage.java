package com.software.news.util;
  
/** 
 * 分页对象 
 * Created by sjz on 2016/9/19. 
 */  
public class SplitPage {  
    public final static String FIRSTPAGE = "first";//首页  
    public final static String LASTPAGE = "last";//尾页  
    public final static String PREVIOUSPAGE = "previous";//上一页  
    public final static String NEXTPAGE = "next";//下一页  
  
    private int pageRow = 3;//每页显示5条数据
    private int totalRows = 0;//数据条数，由Dao提供
    private int currentPage = 1;//当前页
    private int firstPage = 1;//首页
    private int totalPage = 1;//总页数
  
    public int getPageRow() {  
        return pageRow;  
    }  
  
    public void setPageRow(int pageRow) {  
        this.pageRow = pageRow;  
        this.totalPage = this.totalRows / this.pageRow  
                + ((this.totalRows % this.pageRow == 0) ? 0 : 1);  
    }  
  
    public int getTotalRows() {  
        return totalRows;  
    }  
  
    public void setTotalRows(int totalRows) {  
        this.totalRows = totalRows;  
        this.totalPage = this.totalRows/this.pageRow+((this.totalRows%this.pageRow==0)?0:1);  
    }  
  
    public int getCurrentPage() {  
        return currentPage;  
    }  
  
    public void setCurrentPage(int currentPage) {  
        this.currentPage = currentPage;  
    }  
  
    public int getFirstPage() {  
        return firstPage;  
    }  
  
    public void setFirstPage(int firstPage) {  
        this.firstPage = firstPage;  
    }  
  
    public int getTotalPage() {  
        return totalPage;  
    }  
  
    public int toNewPage(String flag) {  //得到下次操作的页面数  
        int newPage = this.currentPage;//定义新页数为当前页  
        if (flag != null && !"".equals(flag)) {  //请求参数不为空  
            if (SplitPage.FIRSTPAGE.equals(flag)) {  //如果传入的参数为第一页  
                newPage = 1;  //新页数为第一页  
            } else if (SplitPage.LASTPAGE.equals(flag)) {  //如果传入的参数为最后一页  
                newPage = this.totalPage;  //新页数为最后一页  
            } else if (SplitPage.NEXTPAGE.equals(flag)) { //如果传入的参数为下一页  
                newPage = this.currentPage  
                        + ((this.currentPage == this.totalPage) ? 0 : 1);// 如果当前页面与总的页面数相等则不再向后（+1）  
                System.out.println(newPage);  
            } else if (SplitPage.PREVIOUSPAGE.equals(flag)) {  //如果传入的参数为上一页  
                newPage = this.currentPage  
                        - ((this.currentPage == this.firstPage) ? 0 : 1);// 如果当前页面与首页相等则不再向前（-1）  
            } else {  
                // 传入的是个数字字符串参数  
                //System.out.println(flag+"llll");  
                newPage = Integer.parseInt(flag.trim());  
            }  
        } else {// 请求的参数为空，则当前页码不变  
            newPage = this.currentPage;  
        }  
        this.setCurrentPage(newPage);// 记得重新设置当期页面  
        return newPage;  
    }  
  
}  
