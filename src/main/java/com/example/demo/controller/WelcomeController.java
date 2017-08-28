package com.example.demo.controller;

import com.example.demo.dto.LoginDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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


    @RequestMapping(value = "/doLogin",method = RequestMethod.GET)
    public void  doLogin(@ModelAttribute LoginDTO loginDTO){
        System.out.println("用户: "+loginDTO.getName()+" 登录");

    }

}
