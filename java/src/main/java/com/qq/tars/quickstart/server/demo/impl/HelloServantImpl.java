package com.qq.tars.quickstart.server.demo.impl;

import com.qq.tars.quickstart.server.demo.HelloServant;
import com.qq.tars.spring.annotation.TarsServant;

@TarsServant("testObj")
public class HelloServantImpl implements HelloServant {

    public String ping(String req) {
        return req;
    }
}
