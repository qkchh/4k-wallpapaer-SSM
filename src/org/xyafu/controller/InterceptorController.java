package org.xyafu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class InterceptorController {

    @GetMapping("/tologin")
    public String tologin(HttpServletResponse response) {
        return "test.html";
    }
}
