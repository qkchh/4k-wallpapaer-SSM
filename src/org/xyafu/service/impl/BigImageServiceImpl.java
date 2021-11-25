package org.xyafu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xyafu.dao.BigImageDao;
import org.xyafu.pojo.BigImage;
import org.xyafu.service.BigImageService;


import java.util.Date;
import java.util.List;


@Service
public class BigImageServiceImpl implements BigImageService {

    @Autowired
    private BigImageDao bigImageDao;

    @Override
    public int insertBigImage(BigImage bigImage) {
        bigImage.setBigImageUpDate(new Date());
        bigImage.setBigImageDeleteState(1);
        return bigImageDao.insertBigImage(bigImage);
    }

    @Override
    public List<BigImage> findBigImage() {
        return bigImageDao.findBigImage();
    }

    @Override
    public List<BigImage> findBigImageByIndex(int index) {
        return bigImageDao.findBigImageByIndex(index);
    }
}
