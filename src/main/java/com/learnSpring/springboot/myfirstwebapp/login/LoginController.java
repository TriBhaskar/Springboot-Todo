package com.learnSpring.springboot.myfirstwebapp.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @Autowired
    private AuthenticationService authenticationService;
    private Logger LOGGER = LoggerFactory.getLogger(getClass());
    @RequestMapping(value="login", method= RequestMethod.GET)
    public String saylogin(){
        return "login";
    }
    @RequestMapping(value="login", method= RequestMethod.POST)
    public String gotoWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap map){
        if(authenticationService.authenticate(name,password)) {
            map.put("name", name);
            map.put("password", password);

            //
            return "welcome";
        }
        map.put("errorMessage","Invalid Credentials");
        return "login";
    }
}
