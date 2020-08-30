/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.models.City;
import com.example.alma.models.Property;
import com.example.alma.models.RequiredDocuments;
import com.example.alma.services.PropertyServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author alex
 */
@Controller
public class PropertyController {
   
    @Autowired
    PropertyServiceInterface propertyServiceInterface;
    
    
    
    @GetMapping("/preAddProperty")
    public String showAddPropertyForm(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newProperty", new Property());
        mm.addAttribute("newCity", new City());
         mm.addAttribute("newDocuments", new RequiredDocuments());
        mm.addAttribute("parserror", error);
//        mm.addAttribute("registerAttribute", "true");
        return "upload";
    }  
    
    
    @PostMapping("/addProperty")
    public String addProperty(ModelMap mm,
            @ModelAttribute("newProperty") Property property,
             @ModelAttribute("newCity") City city,
            RedirectAttributes redirectAttributes) {
            boolean redirect =false;

//        if (bindingResult.hasErrors()) {
//            mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
//            mm.addAttribute("registerAttribute", "true");
//            return "indexRegister";
//        } 
 
//         if(userServiceInterface.checkIfUsernameExists(user.getUsername())!=null){
//            redirectAttributes.addFlashAttribute("parserrorUsername", "The username "+ user.getUsername()+" already exist");
//            //return "redirect:preRegister";
//            redirect=true;
//        }
//        if(userServiceInterface.checkIfEmailExists(user.getEmail())!=null){
//            redirectAttributes.addFlashAttribute("parserrorEmail", "The email "+ user.getEmail()+" already exist");
//            //return "redirect:preRegister";
//            redirect=true;
//        }        
        
//        if (!user.getPassword().equals(secondPassword)) {
//            redirectAttributes.addFlashAttribute("parserrorPassword", "The passwords you have given are different");
//            //return "redirect:preRegister";
//            redirect=true;
//        }
        if(redirect){
            return "redirect:preAddProperty";
        }

        //user.setPassword(passwordEncoder.encode(secondPassword));
        //Random r = new Random();
        //String imagename = user.getUsername() + r.nextInt();
        //user.setAvatar(fileHandlingInterface
        //        .storeFileToDisk(avatarFilename, imagename));
        
        property.setCityId(city);

        propertyServiceInterface.saveProperty(property);
        //session.setAttribute("user",user);
        //return "redirect:showMainPage";
        //return "redirect:showWelcomePage";
         return "redirect:getProperties";
    }    
    
    
    
    
    
    @GetMapping("/getProperties")
    public String showProperties(ModelMap mm) {

        List<Property> result = propertyServiceInterface.getProperties();
        mm.addAttribute("resultProperties", result);

        return "properties";
    }    
    
}
