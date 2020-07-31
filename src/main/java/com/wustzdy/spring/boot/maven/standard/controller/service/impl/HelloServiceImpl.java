package com.wustzdy.spring.boot.maven.standard.controller.service.impl;

import com.wustzdy.spring.boot.maven.standard.controller.service.HelloService;
import org.springframework.stereotype.Service;

@Service
public class HelloServiceImpl implements HelloService {
    @Override
    public String getTest() {
        return "Hello world service";
    }
}
