package com.learnSpring.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password){
        boolean isValidUserName=username.equalsIgnoreCase("Bhaskar");
        boolean isValidPassword=password.equalsIgnoreCase("Panthri");
        return isValidUserName && isValidPassword;
    }
}
