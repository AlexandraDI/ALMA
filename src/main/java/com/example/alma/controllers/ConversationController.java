/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.repositories.ChatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author gianalex
 */

@Controller
public class ConversationController {

    @Autowired
    ChatRepository chatRepository;

    @GetMapping("/getConversations")
    public String getConversations(){//ModelMap mm) {

        //List<User> result = userServiceInterface.getUsers();
        //mm.addAttribute("resultusers", result);

        return "conversations";
    }
    
    
    @GetMapping("/startConversation")
    public String startConversation(
    @RequestParam (name="id") int id){//ModelMap mm) {

       // chatRepository.findUser1IdList();

        return "conversations";
    }


    
}
