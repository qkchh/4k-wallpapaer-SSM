package org.xyafu.dao;

import org.xyafu.pojo.ImageUser;

public interface ImageUserDao {
    //验证账号和用户名是否正确
    ImageUser verifyNumber(ImageUser imageUser);
    //注册用户
    int insertUser(ImageUser imageUser);
    //查询用户是否存在
    ImageUser findByImageUserName(ImageUser imageUser);
    //修改密码
    int updatePassword(ImageUser imageUser);
}
