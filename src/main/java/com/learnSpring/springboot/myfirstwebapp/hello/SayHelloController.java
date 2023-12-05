package com.learnSpring.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class SayHelloController {
    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello(){
        return "Hello ALL";
    }
    @RequestMapping("say-jsp")
    public String sayJsp(){
        return "sayHello";
    }

}
