package com.wustzdy.spring.boot.maven.standard.controller.controller;

import com.wustzdy.spring.boot.maven.standard.controller.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @Autowired
    private HelloService helloService;

    @RequestMapping("/test")
    public String getTest() {
        return helloService.getTest();
    }
}
