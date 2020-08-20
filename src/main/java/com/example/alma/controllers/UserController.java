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
import com.example.alma.validators.UserValidator;
import java.util.List;
import java.util.Random;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author alex
 */
@Controller
public class UserController {

    private static final String REGISTER_FORM = "newUser";

    @Autowired
    UserServiceInterface userServiceInterface;

    @Autowired
    RoleServiceInterface roleServiceInterface;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    FileHandlingInterface fileHandlingInterface;

//    @Bean
//    public MessageSource messageSource() {
//        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
//        messageSource.setBasename("/WEB-INF/messages");
//        return messageSource;
//    }

    @Autowired
    UserValidator userValidator;

    @InitBinder(REGISTER_FORM)
    private void initBinder(final WebDataBinder binder) {
        binder.addValidators(userValidator);
    }

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
        mm.addAttribute("registerAttribute", "true");
        return "indexRegister";
    }

    @PostMapping("/registerUser")
    public String registerUser(ModelMap mm,
            @Valid @ModelAttribute("newUser") User user,
            BindingResult bindingResult,
            @RequestParam("secondPassword") String secondPassword,
            @RequestParam("avatarFilename") MultipartFile avatarFilename,
            RedirectAttributes redirectAttributes) {
        boolean redirect =false;

        if (bindingResult.hasErrors()) {
            mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
            mm.addAttribute("registerAttribute", "true");
            return "indexRegister";
        } 
 
         if(userServiceInterface.checkIfUsernameExists(user.getUsername())!=null){
            redirectAttributes.addFlashAttribute("parserrorUsername", "The username "+ user.getUsername()+" already exist");
            //return "redirect:preRegister";
            redirect=true;
        }
        if(userServiceInterface.checkIfEmailExists(user.getEmail())!=null){
            redirectAttributes.addFlashAttribute("parserrorEmail", "The email "+ user.getEmail()+" already exist");
            //return "redirect:preRegister";
            redirect=true;
        }        
        
        if (!user.getPassword().equals(secondPassword)) {
            redirectAttributes.addFlashAttribute("parserrorPassword", "The passwords you have given are different");
            //return "redirect:preRegister";
            redirect=true;
        }
        if(redirect){
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

    @GetMapping("/preLogin")
    public String showLoginForm(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newUser", new User());
        mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
        mm.addAttribute("parserror", error);
        mm.addAttribute("loginAttribute", "true");
        return "registrationForm";
    }

    @PostMapping("/loginUser")
    public String loginUser(ModelMap mm,
            @Valid @ModelAttribute(REGISTER_FORM) User user,
            BindingResult bindingResult,
            @RequestParam("secondPassword") String secondPassword,
            @RequestParam("avatarFilename") MultipartFile avatarFilename,
            RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            return "registrationForm";
        }
        
        if(userServiceInterface.checkIfUsernameExists(user.getUsername())!=null){
            redirectAttributes.addFlashAttribute("parserror", "The username "+ user.getUsername()+" already exist");
            return "redirect:preLogin";
        }
        if(userServiceInterface.checkIfEmailExists(user.getEmail())!=null){
            redirectAttributes.addFlashAttribute("parserror", "The email "+ user.getEmail()+" already exist");
            return "redirect:preLogin";
        } 
        
        if (!user.getPassword().equals(secondPassword)) {
            redirectAttributes.addFlashAttribute("parserror", "The passwords you have given are different");
            return "redirect:preLogin";
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
