package org.xyafu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.xyafu.pojo.Image;
import org.xyafu.pojo.ImageUser;
import org.xyafu.pojo.ResultInfo;
import org.xyafu.service.ImageUserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private ImageUserService imageUserService;

    /**
     * 验证登陆的账号和密码是否正确,用户登录
     * @param imageUser
     * @return
     */
    @PostMapping("/verifyNumber")
    @ResponseBody
    public ResultInfo verifyNumber(ImageUser imageUser,HttpSession session){

        boolean b = imageUserService.verifyNumber(imageUser,session);
        if(!b){
            return new ResultInfo(b,"用户名或密码错误");
        }
        //将用户登录的账号密码存入到session
        return new ResultInfo(b);
    }

    //注册用户
    @PostMapping("/registerUser")
    @ResponseBody
    public ResultInfo registerUser(ImageUser imageUser){
        int i = imageUserService.insertUser(imageUser);
        if(i<=0){
            return new ResultInfo(false,"用户名已存在");
        }
        return new ResultInfo(true);
    }



    /**
     * 用户信息的显示
     */
    @GetMapping("/findOne")
    @ResponseBody
    public ImageUser findOne(HttpServletRequest request){
        ImageUser user = (ImageUser) request.getSession().getAttribute("user");
        return user;
    }

    /**
     * 密码修改
     */
    @PostMapping("/updatePassword")
    @ResponseBody
    public ResultInfo updatePassword(ImageUser imageUser, HttpSession session){
        ImageUser user = (ImageUser) session.getAttribute("user");
        if(!(imageUser.getImageUserName()==null || imageUser.getImageUserName().equals(""))){
            user.setImageUserName(imageUser.getImageUserName());
        }
        if(!(imageUser.getImageUserPassword()==null || imageUser.getImageUserPassword().equals(""))){
            user.setImageUserPassword(imageUser.getImageUserPassword());
        }
        System.out.println(user);
        int i = imageUserService.updatePassword(user);
        if(i<=0){
            return new ResultInfo(false,"请查看用户名是否错误");
        }
        return new ResultInfo(true);
    }
    /**
     * 用户的退出
     */
    @GetMapping("/exit")
    public String exit(HttpServletRequest request){
        //初始化session数据
        request.getSession().invalidate();
        //重定向到登录页面
        return "redirect:/index.html";
    }
}
