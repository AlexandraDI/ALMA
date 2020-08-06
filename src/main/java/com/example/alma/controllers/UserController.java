/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.models.Role;
import com.example.alma.models.User;
import com.example.alma.services.FileHandlingInterface;
import com.example.alma.services.RoleServiceInterface;
import com.example.alma.services.UserServiceInterface;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author alex
 */
@Controller
public class UserController {

    @Autowired
    UserServiceInterface userServiceInterface;

    @Autowired
    RoleServiceInterface roleServiceInterface;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    FileHandlingInterface fileHandlingInterface;

    @GetMapping("/getUsers")
    public String showUsers(ModelMap mm) {

        List<User> result = userServiceInterface.getUsers();
        mm.addAttribute("resultusers", result);

        return "users";
    }

    @GetMapping("/preRegister")
    public String showRegistrationForm(ModelMap mm,
        @ModelAttribute("parserror") String error) {

        mm.addAttribute("newUser", new User());
        mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
        mm.addAttribute("parserror", error);
        return "registrationForm";
    }

    @PostMapping("/registerUser")
    public String registerUser(
            @ModelAttribute("newUser") User user,
            @RequestParam("secondPassword") String secondPassword,
            @RequestParam("avatarFilename") MultipartFile avatarFilename,
            RedirectAttributes redirectAttributes) {

        if (!user.getPassword().equals(secondPassword)) {
            redirectAttributes.addFlashAttribute("parserror", "The email you have given are different");
            return "redirect:preRegister";
        }
        user.setPassword(passwordEncoder.encode(secondPassword));
        Random r = new Random();
        String imagename = user.getUsername() + r.nextInt();
        user.setAvatar(fileHandlingInterface
                .storeFileToDisk(avatarFilename, imagename));

        userServiceInterface.saveUser(user);
        return "redirect:showMainPage";
    }

    @GetMapping("/showMainPage")
    public String showMainPage() {
        return "mainPage";
    }

    @ResponseBody
    @GetMapping("checkUsername/{name}")
    public String checkUsername(@PathVariable("name") String name) {
        // implement this
        return userServiceInterface.checkIfUsernameExists(name);
    }

    @ResponseBody
    @GetMapping("checkEmail/{email}")
    public String checkEmail(@PathVariable("email") String email) {
        // implement this
        return userServiceInterface.checkIfEmailExists(email);
    }

}
