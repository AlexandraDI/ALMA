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
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.support.SessionStatus;


@Controller
public class LawyerController {

    private static final String REGISTER_FORM = "newUser";

    @Autowired
    UserServiceInterface userServiceInterface;

    @Autowired
    RoleServiceInterface roleServiceInterface;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    FileHandlingInterface fileHandlingInterface;



    @Autowired
    UserValidator userValidator;

    @InitBinder(REGISTER_FORM)
    private void initBinder(final WebDataBinder binder) {
        binder.addValidators(userValidator);
    }

    @GetMapping("/getUsers1")
    public String showUsers1(ModelMap mm) {

        List<User> result = userServiceInterface.getUsers();
        mm.addAttribute("resultusers", result);

        return "users";
    }

    @GetMapping("/preAddLawyer")
    public String preAddLawyer(ModelMap mm,
            @ModelAttribute("parserror") String error) {

       // mm.addAttribute("newUser", new User());
        //mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
        mm.addAttribute("parserror", error);
       // mm.addAttribute("registerAttribute", "true");
        return "uploadLawyer";
    }

    @PostMapping("/addLawyer")
    public String addLawyer(ModelMap mm,
            @Valid @ModelAttribute("newUser") User user,
            BindingResult bindingResult,
            @RequestParam("secondPassword") String secondPassword,
            @RequestParam("avatarFilename") MultipartFile avatarFilename,
            HttpSession session,
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
        session.setAttribute("user",user);
        //return "redirect:showMainPage";
        //return "redirect:showWelcomePage";
         return "redirect:information";
    }

    
    
     @GetMapping("/addProperty3")
    public String addProperty3() {
        return "upload";
    } 
    
    
     @GetMapping("/propertyDetail1")
    public String propertyDetail1() {
        return "propertySingle";
    } 
    
     @GetMapping("/information1")
    public String information1() {
        return "info";
    }

     @GetMapping("/logout1")
    public String logout1(HttpSession session,SessionStatus status) {
        status.setComplete();
        session.invalidate();
        return "redirect:/";
    }    
    

    @ResponseBody
    @GetMapping("checkUsername1/{name}")
    public String checkUsername1(@PathVariable("name") String name) {
        // implement this
        return userServiceInterface.checkIfUsernameExists(name);
    }

    @ResponseBody
    @GetMapping("checkEmail1/{email}")
    public String checkEmail1(@PathVariable("email") String email) {
        // implement this
        return userServiceInterface.checkIfEmailExists(email);
    }

}
