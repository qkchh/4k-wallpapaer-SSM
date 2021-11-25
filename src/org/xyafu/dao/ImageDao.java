package org.xyafu.dao;

import org.xyafu.pojo.Image;
import org.xyafu.pojo.ImageUser;

import java.util.List;

public interface ImageDao {
    //向所有表中添加数据
    int insertAll(Image image);
    //查询
    List<Image> findImageSrc();
    //查询
    List<Image> findImageSrcByIndex(Image image);

    Integer findCount();

    List<Image> findImageSrcByDate(Image image);
    //查询最热的
    List<Image> findImageSrcByHotLike(Image image);
    //查询用户名下的图片内容
    List<Image> findImageSrcByUser(Image image);

    //删除图片
    int deleteImage(Image image);

    //模糊查询图片
    List<Image> findImageSrcByLike(Image image);
    //分页查询我点赞过的图片
    List<Image> findImageSrcByMyLike(Image image);
}
