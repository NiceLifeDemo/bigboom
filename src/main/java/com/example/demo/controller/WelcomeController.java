package com.example.demo.controller;

import com.example.demo.dto.LoginDTO;
import com.example.demo.util.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

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
    @ResponseBody
    public Map doLogin(@ModelAttribute LoginDTO loginDTO, HttpServletRequest request, HttpServletResponse response){
         Map<String,String> map=new HashMap();
        if("ty".equals(loginDTO.getName())&&"123".equals(loginDTO.getPassword())){
            HttpSession session = request.getSession();
            UserInfo userInfo=new UserInfo();
            userInfo.setName(loginDTO.getName());
            session.setAttribute("userInfo",userInfo);
            map.put("msg","success");
        }else{
            map.put("msg","error");
        }
        return map;
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "login/index";
    }

}
