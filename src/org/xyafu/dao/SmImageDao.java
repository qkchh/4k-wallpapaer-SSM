package org.xyafu.dao;

import org.xyafu.pojo.Image;
import org.xyafu.pojo.SmImage;

import java.util.List;

public interface SmImageDao {
    //插入信息
    int insertSmImage(SmImage smImage);
    //查询
    List<Image> findImageSrc();

    //查询
    List<Image> findImageSrcByIndex(Integer index,Integer end);
}
