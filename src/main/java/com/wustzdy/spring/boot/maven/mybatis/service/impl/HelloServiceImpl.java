package com.wustzdy.spring.boot.maven.mybatis.service.impl;

import com.wustzdy.spring.boot.maven.mybatis.service.HelloService;
import org.springframework.stereotype.Service;

@Service
public class HelloServiceImpl implements HelloService {
    @Override
    public String getTest() {
        return "Hello world service";
    }
}
