package org.xyafu.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xyafu.dao.ImageUserDao;
import org.xyafu.pojo.Image;
import org.xyafu.pojo.ImageUser;
import org.xyafu.service.ImageUserService;
import org.xyafu.utils.UuidUtil;

import javax.servlet.http.HttpSession;

@Service
public class ImageUserServiceImpl implements ImageUserService {

    @Autowired
    private ImageUserDao imageUserDao;

    @Override
    public boolean verifyNumber(ImageUser imageUser,HttpSession session) {
         ImageUser user=imageUserDao.verifyNumber(imageUser);
        if(user != null){
            session.setAttribute("user",user);
            return true;
        }
        return false;
    }

    @Override
    public int insertUser(ImageUser imageUser) {
        //如果用户名不存在插入语句
        if(imageUserDao.findByImageUserName(imageUser)==null){
            imageUser.setImageUserId(UuidUtil.getUuid());
            return imageUserDao.insertUser(imageUser);
        }
        return -1;
    }

    @Override
    public int updatePassword(ImageUser imageUser) {
        return imageUserDao.updatePassword(imageUser);
    }
}
