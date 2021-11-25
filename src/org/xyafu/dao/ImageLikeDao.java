package org.xyafu.dao;

import org.xyafu.pojo.ImageData;
import org.xyafu.pojo.ImageUser;
import org.xyafu.pojo.UserToImage;

import java.util.List;

public interface ImageLikeDao {
    //修改点赞后的数据
    int updateImageLike(ImageData imageData);
    //修改用户图片表中的数据
    int insertUserToImage(UserToImage userToImage);
    //查询用户和图片的第三方表
    List<UserToImage> findAll(ImageUser user);
}
