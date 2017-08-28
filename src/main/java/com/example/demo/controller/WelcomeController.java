package com.example.demo.controller;

import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author tangyu
 *         2017/8/11.
 */
@Controller
@RestController
@RequestMapping(value ="")
public class WelcomeController {

    //@RequestMapping("/login")
    @PostMapping(value = "/login")
    @ApiOperation(value = "登录", tags = "BigBoom")
    public String  login(){

        return "login/login";
    }
}
