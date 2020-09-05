/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.dto.MediaDTO;
import com.example.alma.models.City;
import com.example.alma.models.Document;
import com.example.alma.models.Features;
import com.example.alma.models.Media;
import com.example.alma.models.Property;
import com.example.alma.models.RequiredDocuments;
import com.example.alma.models.User;
import com.example.alma.repositories.PropertyRepository;
import com.example.alma.services.CityServiceInterface;
import com.example.alma.services.CountryServiceInterface;
import com.example.alma.services.DocumentServiceInterface;
import com.example.alma.services.FeaturesServiceInterface;
import com.example.alma.services.FileHandlingInterface;
import com.example.alma.services.MediaServiceInterface;
import com.example.alma.services.PropertyServiceInterface;
import com.example.alma.services.RequiredDocumentsServiceInterface;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    MediaServiceInterface mediaServiceInterface;   
    
    
    @Autowired
    FeaturesServiceInterface featuresServiceInterface;       
    
    @Autowired
    FileHandlingInterface fileHandlingInterface;   
    
      
    
    @GetMapping("/preAddProperty")
    public String showAddPropertyForm(ModelMap mm,
            @ModelAttribute("parserror") String error) {

        mm.addAttribute("newProperty", new Property());
        mm.addAttribute("newMediaDTO", new MediaDTO());
        mm.addAttribute("newDocument", new Document());
        //mm.addAttribute("newFeatures", new Features());
        mm.addAttribute("parserror", error);
//        mm.addAttribute("registerAttribute", "true");
        return "upload";
    }  
    
    
    @PostMapping("/addProperty")
    public String addProperty(ModelMap mm,
            @ModelAttribute("newProperty") Property property,
            @ModelAttribute("newDocument") Document document,
            //@ModelAttribute("newFeatures") Features features,
            @ModelAttribute("newMediaDTO") MediaDTO mediaDTO,
            HttpSession session,
            //@RequestParam("filenameTypical1") MultipartFile livingRoomFilename,
            RedirectAttributes redirectAttributes) {
            boolean redirect =false;
            int id;
            
           
        if(redirect){
            return "redirect:preAddProperty";
        }
        
        //property.setFeatures(features);
        
     //   featuresServiceInterface.saveFeatures(features);
     //   property.setFeatures(features);
        
        document.setRequiredDocumentsId(property.getRequiredDocumentsUploaded());
        
        
        //countryServiceInterface.saveCountry(property.getCityId().getCountryId());
        
        property.getCityId().setCountryId(countryServiceInterface.getCountry("Greece"));
        
        cityServiceInterface.saveCity(property.getCityId());
        
        //property.getRequiredDocumentsUploaded().setRequiredDocumentsId(id);
        RequiredDocuments requiredDocs = new RequiredDocuments();  
        requiredDocs.setStatus(1);
        requiredDocumentsServiceInterface.saveRequiredDocument(requiredDocs);
        
        document.setRequiredDocumentsId(requiredDocs);
        property.setRequiredDocumentsUploaded(requiredDocs);
        
        //requiredDocumentsServiceInterface.saveRequiredDocument(property.getRequiredDocumentsUploaded());
        //property.getRequiredDocumentsUploaded().setStatus(1);
        
        Random r = new Random();
        document.setDescription("Certificate Of Ownership");
        //String path = session.getAttribute("user").toString() + r.nextInt();
        String path = property.getOwnerId().getUsername() + r.nextInt();
        document.setMediaPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical6(), path));
        
        documentServiceInterface.saveDocument(document);
        
        //session.getAttribute("user").toString();
        //User u;// =  new User();
        //u.getUserId();
        //property.setOwnerId(session.getAttribute("user"));
        //session.getAttribute(path)
        
        property.setStatus("Uploaded");
        
        java.util.Date utilDate = new Date();
        // Convert it to java.sql.Date
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        
        property.setDatetimeUploaded(date);
        property.setDatetimeUpdated(date);
        
        property.getFeatures().setProperty(property);

        id=propertyServiceInterface.saveProperty(property);
        
        Media livingRoom =new Media();
        Media kitchen =new Media();
        Media bedroom =new Media();
        Media bathroom =new Media();
        Media outdoor =new Media();
        
        List<Media> mediaList = new ArrayList<Media>();
        
        
        
        
        String imagename1 = property.getOwnerId().getUsername() + r.nextInt();       
        String imagename2 = property.getOwnerId().getUsername() + r.nextInt();       
        String imagename3 = property.getOwnerId().getUsername() + r.nextInt();       
        String imagename4 = property.getOwnerId().getUsername() + r.nextInt();       
        String imagename5 = property.getOwnerId().getUsername() + r.nextInt();
        
        livingRoom.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical1(), imagename1));             
         livingRoom.setPropertyId(property);
         livingRoom.setType(1);
         mediaServiceInterface.saveMedia(livingRoom);
          
         kitchen.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical2(), imagename2));             
         kitchen.setPropertyId(property);
         kitchen.setType(2);
         mediaServiceInterface.saveMedia(kitchen);
         
         bedroom.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical3(), imagename3));             
         bedroom.setPropertyId(property);
         bedroom.setType(3);
         mediaServiceInterface.saveMedia(bedroom);
         
         bathroom.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical4(), imagename4));             
         bathroom.setPropertyId(property);
         bathroom.setType(4);
         mediaServiceInterface.saveMedia(bathroom);
         
         outdoor.setPath(fileHandlingInterface
                .storeFileToDisk(mediaDTO.getFilenameTypical5(), imagename5));             
         outdoor.setPropertyId(property);
         outdoor.setType(5);
         mediaServiceInterface.saveMedia(outdoor);
                 
         mediaList.add(livingRoom);
         mediaList.add(kitchen);         
         mediaList.add(bedroom);
         mediaList.add(bathroom);         
         mediaList.add(outdoor);   
         
         property.setMediaCollection(mediaList);
         
         //id=propertyServiceInterface.saveProperty(property);
      //   Features features=new Features();
       // features2.setPropertyId(id);
       // features2.setAirconditioning(Short.MIN_VALUE);       
      // property.setFeatures(features);
       //featuresServiceInterface.saveFeatures(features);
       
        
        
        //features.setPropertyId(id);
        featuresServiceInterface.saveFeatures(property.getFeatures());
        
        
        redirectAttributes.addFlashAttribute("newProperty", property);
        
        //session.setAttribute("user",user);
        //return "redirect:showMainPage";
        //return "redirect:showWelcomePage";
         return "redirect:getSubmittedProperty";//+id;
    }    
    
    
    
    
    
    @GetMapping("/getProperties")
    public String showProperties(ModelMap mm) {

        List<Property> result = propertyServiceInterface.getProperties();
        mm.addAttribute("resultProperties", result);

        return "propertiesList";
    } 
  
    // THIS WAS ABSOLUTELY WORKING
//    @GetMapping("/getPropertyList")
//    public String propertyPageable(Pageable pageable,ModelMap mm) {
//		//return propertyServiceInterface.getPages(pageable);
//              
//         Page<Property> result = propertyServiceInterface.getPages(pageable);
//          mm.addAttribute("resultProperties", result.getContent());
//          return "propertiesList";              
//                
//    }
    
     @GetMapping("/getPropertyList")
    public String propertyPageable(Pageable pageable,ModelMap mm) {
		//return propertyServiceInterface.getPages(pageable);
              
          Page<Property> pages = propertyServiceInterface.getPages(pageable);
          mm.addAttribute("number", pages.getNumber());
          mm.addAttribute("totalPages", pages.getTotalPages());
          mm.addAttribute("totalElements", pages.getTotalElements());
          //mm.addAttribute("size", pages.getSize());
//          mm.addAttribute("size", 9);
//          mm.addAttribute("page", 0);
        //mm.addAttribute("data",pages.getContent());       
          mm.addAttribute("data", pages.getContent());
          return "propertiesListPaging";              
                
    }   
    
    
    @GetMapping("/getSubmittedProperty")
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
        return "redirect:getPropertyList";
    }    
    } 

    @GetMapping("/getPropertyDetail")
    public String showPropertyInDetail(HttpServletRequest request,ModelMap mm ) {


       return "propertySingle";
   
    }
    
    
}
