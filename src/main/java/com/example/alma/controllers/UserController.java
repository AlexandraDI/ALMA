/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.models.User;
import com.example.alma.services.UserServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author alex
 */

@Controller
public class UserController {
    
    @Autowired
    UserServiceInterface userServiceInterface;    
    
    @GetMapping("/getUsers")
    public String showUsers(ModelMap mm) {

        
      List<User> result= userServiceInterface.getUsers();
      mm.addAttribute("resultusers", result);

        return "users";
    }    
    
    
    
}
