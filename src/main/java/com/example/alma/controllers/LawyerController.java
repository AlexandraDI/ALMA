/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.models.Document;
import com.example.alma.models.Lawyerinfo;
import com.example.alma.models.RequiredDocuments;
import com.example.alma.models.Role;
import com.example.alma.models.User;
import com.example.alma.models.UserServesUser;
import com.example.alma.models.UserServesUserPK;
import com.example.alma.repositories.UserServesUserRepository;
import com.example.alma.services.DocumentServiceInterface;
import com.example.alma.services.FileHandlingInterface;
import com.example.alma.services.LawyerinfoServiceInterface;
import com.example.alma.services.RequiredDocumentsServiceInterface;
import com.example.alma.services.RoleServiceInterface;
import com.example.alma.services.UserServiceInterface;
import com.example.alma.validators.UserValidator;
import java.util.Date;
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
    LawyerinfoServiceInterface lawyerinfoServiceInterface;
    
    @Autowired
    RequiredDocumentsServiceInterface requiredDocumentsServiceInterface; 
    
    @Autowired
    DocumentServiceInterface documentServiceInterface;    
    
    @Autowired
    UserServesUserRepository userServesUserRepository;

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

    @GetMapping("/getLawyers")
    public String getLawyers(ModelMap mm) {

        List<User> result = userServiceInterface.getLawyers();
        mm.addAttribute("resultLawyers", result);
        return "lawyersList";
    }
    
     @GetMapping("/getLawyer")
    public String getLawyer(ModelMap mm,
            @RequestParam(name = "lawyer") int lawyerId) {

        User lawyer= userServiceInterface.findUser(lawyerId);
        mm.addAttribute("lawyer",lawyer);

        return "lawyerinfo";
    }   
    
    
     @GetMapping("/lawyerConfirmation")
    public String lawyerConfirmation(ModelMap mm,
            HttpSession session,
            @RequestParam(name = "lawyer") int lawyerId) {

        User u=(User) session.getAttribute("user");
        //User lawyer= userServiceInterface.findUser(lawyerId);
        //mm.addAttribute("lawyer",lawyer);
        UserServesUser usu = new UserServesUser();
        
        UserServesUserPK upk = new UserServesUserPK();
        upk.setUser1Id(lawyerId);
        upk.setUser2Id(u.getUserId());
        //usu.setUser(lawyer);
        //usu.setUser1(u);
        usu.setUserServesUserPK(upk);
        
        java.util.Date utilDate = new Date();
        // Convert it to java.sql.Date
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        
        usu.setDatetimeHired(date);        
        userServesUserRepository.save(usu);

        return "redirect:preAddBuyer";
    }  
    
      @GetMapping("/preAddBuyer")
    public String preAddBuyer(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newLawyer", new Lawyerinfo());
        //mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
        mm.addAttribute("newDocument", new Document());
        mm.addAttribute("parserror", error);
       // mm.addAttribute("registerAttribute", "true");
        return "uploadBuyer";
    }  
    
    

    @GetMapping("/preAddLawyer")
    public String preAddLawyer(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newLawyer", new Lawyerinfo());
        //mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
        mm.addAttribute("newDocument", new Document());
        mm.addAttribute("parserror", error);
       // mm.addAttribute("registerAttribute", "true");
        return "uploadLawyer";
    }

    @PostMapping("/addLawyer")
    public String addLawyer(ModelMap mm,
            @Valid @ModelAttribute("newLawyer") Lawyerinfo lawyerinfo,
            BindingResult bindingResult,
            @ModelAttribute("newDocument") Document document,
            //@RequestParam("secondPassword") String secondPassword,
            @RequestParam("filename") MultipartFile filename,
            HttpSession session,
            RedirectAttributes redirectAttributes) {
        boolean redirect =false;
        User u;
        int id;
         u=(User) session.getAttribute("user");


        RequiredDocuments requiredDocs = new RequiredDocuments();  
        requiredDocs.setStatus(1);
        requiredDocumentsServiceInterface.saveRequiredDocument(requiredDocs);
        
        document.setRequiredDocumentsId(requiredDocs);
        u.setRequiredDocumentsUploaded(requiredDocs);

        
        Random r = new Random();
        document.setDescription("Passport/ID");
        String path = u.getUsername()+ r.nextInt();
        document.setMediaPath(fileHandlingInterface
                .storeFileToDisk(filename, path));
        
        documentServiceInterface.saveDocument(document);
        
         
  
         id=lawyerinfoServiceInterface.saveLawyerinfo(lawyerinfo);
         u.setLawyerinfoId(lawyerinfo);
         
         userServiceInterface.saveUser(u);
         
        
         
 //       session.setAttribute("user",user);
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
