package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    // 返回的字符串是「视图名」，会交给视图解析器拼成 /index.jsp
    @GetMapping("/index")
    public String index() {
        return "index";
    }

    // 临时诊断用：这个不经过 JSP，用来判断到底是 Spring MVC 的问题还是 JSP 的问题
    // 访问 http://localhost:8080/ping 应该显示 pong
    @GetMapping("/ping")
    @ResponseBody
    public String ping() {
        return "pong";
    }
}
