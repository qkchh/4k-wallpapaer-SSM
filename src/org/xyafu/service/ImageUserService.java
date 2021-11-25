package org.xyafu.service;

import org.xyafu.pojo.ImageUser;

import javax.servlet.http.HttpSession;

public interface ImageUserService {
    //验证账号和用户名是否正确
    boolean verifyNumber(ImageUser imageUser, HttpSession session);
    //注册用户
    int insertUser(ImageUser imageUser);
    //修改密码
    int updatePassword(ImageUser imageUser);
}
