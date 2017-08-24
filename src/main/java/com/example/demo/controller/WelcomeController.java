package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author tangyu
 *         2017/8/11.
 */
@Controller
public class WelcomeController {

    @RequestMapping("/login")
    public String  login(){

        return "login/login";
    }
}
