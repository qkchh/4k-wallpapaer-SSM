package org.xyafu.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        if(httpServletRequest.getSession().getAttribute("user")!=null){
            System.out.println("用户已经登录");
            return true;
        }
        System.out.println("用户未登录123123");
//        httpServletRequest.getRequestDispatcher("/tologin").forward(httpServletRequest,httpServletResponse);
        httpServletResponse.sendRedirect("/wallpaper/tologin");
//        httpServletResponse.getWriter().println("<script>alert('你还未登录，请先登录')</script>");
        return false;
        //判断用户有没有登录
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
