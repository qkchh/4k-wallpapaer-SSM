package org.xyafu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xyafu.dao.ImageLikeDao;
import org.xyafu.pojo.ImageData;
import org.xyafu.pojo.ImageUser;
import org.xyafu.pojo.UserToImage;
import org.xyafu.service.ImageLikeService;

import java.util.List;

@Service
public class ImageLikeServiceImpl implements ImageLikeService {
    @Autowired
    private ImageLikeDao imageLikeDao;

    @Override
    public int updateImageLike(ImageData imageData) {
        return imageLikeDao.updateImageLike(imageData);
    }

    @Override
    public int insertUserToImage(UserToImage userToImage) {
        return imageLikeDao.insertUserToImage(userToImage);
    }

    @Override
    public List<UserToImage> findAll(ImageUser user) {
        return imageLikeDao.findAll(user);
    }
}
