package org.xyafu.dao;

import org.xyafu.pojo.BigImage;

import java.util.List;

public interface BigImageDao {
    //插入数据
    int insertBigImage(BigImage bigImage);
    //测试查询
    List<BigImage> findBigImage();
    //分页查询
    List<BigImage> findBigImageByIndex(int index);
}
