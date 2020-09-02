/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.dto.MediaDTO;
import com.example.alma.models.City;
import com.example.alma.models.Document;
import com.example.alma.models.Media;
import com.example.alma.models.Property;
import com.example.alma.services.CityServiceInterface;
import com.example.alma.services.CountryServiceInterface;
import com.example.alma.services.DocumentServiceInterface;
import com.example.alma.services.FileHandlingInterface;
import com.example.alma.services.PropertyServiceInterface;
import com.example.alma.services.RequiredDocumentsServiceInterface;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

/**
 *
 * @author alex
 */
@Controller
public class PropertyController {
   
    @Autowired
    PropertyServiceInterface propertyServiceInterface;
    
    @Autowired
    CityServiceInterface cityServiceInterface;

    @Autowired
    CountryServiceInterface countryServiceInterface; 
    
    @Autowired
    RequiredDocumentsServiceInterface requiredDocumentsServiceInterface;
    
    
    @Autowired
    DocumentServiceInterface documentServiceInterface; 
    
    @Autowired
    FileHandlingInterface fileHandlingInterface;    
    
    
    @GetMapping("/preAddProperty")
    public String showAddPropertyForm(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newProperty", new Property());
        mm.addAttribute("newMediaDTO", new MediaDTO());
        mm.addAttribute("newDocument", new Document());
        mm.addAttribute("parserror", error);
//        mm.addAttribute("registerAttribute", "true");
        return "upload";
    }  
    
    
    @PostMapping("/addProperty")
    public String addProperty(ModelMap mm,
            @ModelAttribute("newProperty") Property property,
            @ModelAttribute("newDocument") Document document,
            @ModelAttribute("newMediaDTO") MediaDTO mediaDTO,
            //@RequestParam("filenameTypical1") MultipartFile livingRoomFilename,
            RedirectAttributes redirectAttributes) {
            boolean redirect =false;
            int id;
            
            

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
        
        Random r = new Random();
        String imagename = property.getOwnerId().getUsername() + r.nextInt();
        
        Media m =new Media();
        m.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getfilenameTypical1(), imagename));
        property.getMediaCollection().add(m);
        //(fileHandlingInterface
        //        .storeFileToDisk(avatarFilename, imagename));        
        
        
        //EDW SKAEI GIATI PREPEI NA KANW PRWTA SAVE TA MEDIA ARA REPOSITORY,SERVICE
        //SAVE MEDIA KAI META property.getMediaCollection().add(m);
        
        document.getClass();
        
        document.getMediaType();

        //user.setPassword(passwordEncoder.encode(secondPassword));
        //Random r = new Random();
        //String imagename = user.getUsername() + r.nextInt();
        //user.setAvatar(fileHandlingInterface
        //        .storeFileToDisk(avatarFilename, imagename));
        
        //property.setCityId(city);

        
        document.setRequiredDocumentsId(property.getRequiredDocumentsUploaded());
        
        
        countryServiceInterface.saveCountry(property.getCityId().getCountryId());
        
        cityServiceInterface.saveCity(property.getCityId());
        
        requiredDocumentsServiceInterface.saveRequiredDocument(property.getRequiredDocumentsUploaded());
        
        documentServiceInterface.saveDocument(document);
        
        

        id=propertyServiceInterface.saveProperty(property);
        
        redirectAttributes.addFlashAttribute("newProperty", property);
        
        //session.setAttribute("user",user);
        //return "redirect:showMainPage";
        //return "redirect:showWelcomePage";
         return "redirect:getPropertyDetail";//+id;
    }    
    
    
    
    
    
    @GetMapping("/getProperties")
    public String showProperties(ModelMap mm) {

        List<Property> result = propertyServiceInterface.getProperties();
        mm.addAttribute("resultProperties", result);

        return "properties";
    }  
    
    @GetMapping("/getPropertyDetail")
    public String showProperty(HttpServletRequest request,ModelMap mm ) {
        //   , @PathVariable("id") String id) {

//        List<Property> result = propertyServiceInterface.getProperties();
//        mm.addAttribute("resultProperties", result);

 //       Property property = propertyServiceInterface.findProperty(id);
 //       mm.addAttribute("property", property);
 
     //    String i=id;
     
     Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
    if (inputFlashMap != null) {
       return "propertySingle";
    }
    else{//In case the user refreshes the page
        // mm.addAttribute("id", "You can add,edit or delete a Trainer!");
        return "redirect:getProperties";
    }    
    }     
    
    
    
}
