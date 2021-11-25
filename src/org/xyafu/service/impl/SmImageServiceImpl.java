package org.xyafu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xyafu.dao.SmImageDao;
import org.xyafu.pojo.SmImage;
import org.xyafu.service.SmImageService;


import java.util.List;

@Service
public class SmImageServiceImpl implements SmImageService {

    @Autowired
    private SmImageDao smImageDao;

    @Override
    public int insertSmImage(SmImage smImage) {
        return smImageDao.insertSmImage(smImage);
    }
}
