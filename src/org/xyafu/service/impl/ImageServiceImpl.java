package org.xyafu.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xyafu.dao.ImageDao;
import org.xyafu.pojo.Image;
import org.xyafu.pojo.ImageUser;
import org.xyafu.service.ImageService;

import java.util.Date;
import java.util.List;

@Service
public class ImageServiceImpl implements ImageService {


    @Autowired
    private ImageDao imageDao;

    @Override
    public int insertAll(Image image) {
        image.setUpDate(new Date());
        return imageDao.insertAll(image);
    }

    @Override
    public List<Image> findImageSrc() {
        return imageDao.findImageSrc();
    }

    @Override
    public List<Image> findImageSrcByIndex(Image image) {
        return imageDao.findImageSrcByIndex(image);
    }

    @Override
    public Integer findCount() {
        return imageDao.findCount();
    }

    @Override
    public List<Image> findImageSrcByDate(Image image) {
        return imageDao.findImageSrcByDate(image);
    }

    @Override
    public List<Image> findImageSrcByHotLike(Image image) {
        return imageDao.findImageSrcByHotLike(image);
    }

    @Override
    public List<Image> findImageSrcByUser(Image image) {
        return imageDao.findImageSrcByUser(image);
    }

    @Override
    public int deleteImage(Image image) {
        image.setDeleteDate(new Date());
        return imageDao.deleteImage(image);
    }

    @Override
    public List<Image> findImageSrcByLike(Image image) {
        return imageDao.findImageSrcByLike(image);
    }

    @Override
    public List<Image> findImageSrcByMyLike(Image image) {
        return imageDao.findImageSrcByMyLike(image);
    }
}
