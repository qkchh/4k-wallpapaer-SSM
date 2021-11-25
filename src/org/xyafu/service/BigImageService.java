package org.xyafu.service;


import org.xyafu.pojo.BigImage;

import java.util.List;

public interface BigImageService {
    //插入数据
    int insertBigImage(BigImage bigImage);
    //测试查询
    List<BigImage> findBigImage();
    //分页查询
    List<BigImage> findBigImageByIndex(int index);
}
