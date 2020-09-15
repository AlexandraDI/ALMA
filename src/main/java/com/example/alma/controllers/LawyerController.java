/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
	

package com.example.alma.controllers;

import com.example.alma.models.Application;

import com.example.alma.models.Document;

import com.example.alma.models.Lawyerinfo;

import com.example.alma.models.Media;

import com.example.alma.models.Property;

import com.example.alma.models.RequiredDocuments;

import com.example.alma.models.*;
import com.example.alma.models.User;
import com.example.alma.models.UserServesUser;

import com.example.alma.models.UserServesUserPK;	

import com.example.alma.repositories.UserServesUserRepository;
import com.example.alma.services.ApplicationServiceInterface;
import com.example.alma.services.DocumentServiceInterface;
import com.example.alma.services.FileHandlingInterface;
import com.example.alma.services.LawyerinfoServiceInterface;	

import com.example.alma.services.MediaServiceInterface;
import com.example.alma.services.PropertyServiceInterface;
import com.example.alma.services.RequiredDocumentsServiceInterface;
import com.example.alma.services.RoleServiceInterface;
import com.example.alma.services.*;
import com.example.alma.services.UserServiceInterface;
import com.example.alma.validators.UserValidator;
import java.util.ArrayList;

import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.*;
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
import org.springframework.web.servlet.view.RedirectView; 



@Controller
public class LawyerController {

    @Value("${STRIPE_PUBLIC_KEY}")
    private String stripePublicKey;     
    
    
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
    PropertyServiceInterface propertyServiceInterface;
    
    @Autowired
    MediaServiceInterface mediaServiceInterface;
       

    @Autowired
    ApplicationServiceInterface applicationServiceInterface;       
    
    
    @Autowired
    UserServesUserRepository userServesUserRepository;

    @Autowired
    RoleServiceInterface roleServiceInterface;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    FileHandlingInterface fileHandlingInterface;

	
    @Autowired
    private StripeService paymentsService; 

    @Autowired
    UserValidator userValidator;

    @InitBinder(REGISTER_FORM)
    private void initBinder(final WebDataBinder binder) {
        binder.addValidators(userValidator);
    }

    @GetMapping("/getLawyers")
    public String getLawyers(ModelMap mm,
            @RequestParam(name ="application") int applicationId) {

        List<User> result = userServiceInterface.getLawyers();
        mm.addAttribute("resultLawyers", result);
        mm.addAttribute("applicationId",applicationId);
        return "lawyersList";
    }
    
    @GetMapping("/getApprovedLawyers")
    public String getApprovedLawyers(ModelMap mm,
            @RequestParam(name ="application") int applicationId) {

        List<User> result = userServiceInterface.getLawyers();
        
        List <User> approved = new ArrayList();
        
        for(User u: result){
            if(u.getRequiredDocumentsUploaded().getStatus()==2){
                approved.add(u);
            }
        }         
        mm.addAttribute("resultLawyers", approved);
        mm.addAttribute("applicationId",applicationId);
        return "lawyersList";
    }
    
     @GetMapping("/getLawyersList")
    public String getLawyersList(ModelMap mm) {

        List<User> result = userServiceInterface.getLawyers();
        mm.addAttribute("resultLawyers", result);
        return "lawyersList";
    } 
    
    
     @GetMapping("/getApprovedLawyersList")
    public String getApprovedLawyersList(ModelMap mm) {

        List<User> result = userServiceInterface.getLawyers();
        List <User> approved = new ArrayList();
        
        for(User u: result){
            if(u.getRequiredDocumentsUploaded().getStatus()==2){
                approved.add(u);
            }
        }       
        mm.addAttribute("resultLawyers", approved);
        return "lawyersList";
    }   
    
    
     @GetMapping("/getLawyer")
    public String getLawyer(ModelMap mm,
            @RequestParam(name = "lawyer") int lawyerId,
            @RequestParam(name = "application") int applicationId
    ) {

        User lawyer= userServiceInterface.findUser(lawyerId);
        Application application = applicationServiceInterface.findApplicationById(applicationId);
        mm.addAttribute("lawyer",lawyer);
        mm.addAttribute("application",applicationId);
        mm.addAttribute("app",application);
         mm.addAttribute("stripePublicKey", stripePublicKey); 
        return "lawyerinfo";
    }   
    
     @Transactional
     @PostMapping("/lawyerConfirmation")
    public String lawyerConfirmation(ModelMap mm,
            HttpSession session,
            @RequestParam(name = "lawyer") int lawyerId,
            @RequestParam(name = "application") int applicationId,
            @RequestParam(name = "amount") int amount,
            @RequestParam(name = "stripeEmail") String stripeEmail,
            @RequestParam(name = "stripeToken") String stripeToken,
            RedirectAttributes attrs	
            ) throws StripeException {

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
        
        
        Application app = new Application();
        app = applicationServiceInterface.findApplicationById(applicationId);
        app.setStatus(2);
        app.getPropertyId().setStatus("Booked");
        applicationServiceInterface.saveApplication(app);
        
        usu.setDatetimeHired(date); 
        usu.setApplicationId(app);
        
        //DOES NOT ALLOW LAZY LOAD
        //u.getUserServesUserCollection().add(usu);
        
        
        
        userServesUserRepository.save(usu);
        
        //userServiceInterface.saveUser(u);
        
 
         ChargeRequest chargeRequest = new ChargeRequest();
         chargeRequest.setAmount(amount * 100);
         chargeRequest.setStripeEmail(stripeEmail);
         chargeRequest.setStripeToken(stripeToken);
         chargeRequest.setDescription("Payment for lawyer booking");
         chargeRequest.setCurrency(ChargeRequest.Currency.EUR);
         Charge charge = paymentsService.charge(chargeRequest);
         attrs.addFlashAttribute("paymentStatus", charge.getStatus().equalsIgnoreCase("succeeded"));
         attrs.addFlashAttribute("chargeStatus", charge.getStatus());
         attrs.addFlashAttribute("chargeId", charge.getId());
         attrs.addFlashAttribute("balance_transaction", charge.getBalanceTransaction());         
          

        return "redirect:/";
    } 
    
    @ExceptionHandler(StripeException.class)
    public RedirectView handleError(Model model, StripeException ex, RedirectAttributes redir) {
        RedirectView redirectView = new RedirectView("/",true);
        redir.addFlashAttribute("error", true);
        redir.addFlashAttribute("errorMessage", ex.getMessage());
        return redirectView;
    }    
    
    
    
      @GetMapping("/preAddBuyer")
    public String preAddBuyer(ModelMap mm,
            @RequestParam("property") int propertyId,
            HttpSession session,
            @ModelAttribute("parserror") String error) {
        
        User user= (User) session.getAttribute("user");
        //Application app= new Application();
        //app=applicationServiceInterface.findApplicationByUserId(user);
        
        mm.addAttribute("newApplication", new Application());
        mm.addAttribute("property", propertyId);
         
        mm.addAttribute("parserror", error);
       // mm.addAttribute("registerAttribute", "true");
        return "uploadBuyer";
       
    } 
    
    
      @PostMapping("/addBuyer")
    public String addBuyer(ModelMap mm,
            @ModelAttribute("newApplication") Application application,
            @RequestParam("property") int propertyId,
            @RequestParam("filename1") MultipartFile filename1,
            @RequestParam("filename2") MultipartFile filename2,
            HttpSession session
            ) {

        Random r = new Random();
        int id;
        
         java.util.Date utilDate = new Date();
        // Convert it to java.sql.Date
        java.sql.Date date = new java.sql.Date(utilDate.getTime()); 
        
        Property property = propertyServiceInterface.findPropertyById(propertyId);
        
        int p=property.getPropertyId();
        
        User u=(User) session.getAttribute("user");
        Media passport = new Media();
        passport.setPath(fileHandlingInterface
                .storeFileToDisk(filename1, u.getUsername()+ r.nextInt()));
        passport.setPropertyId(property);
        passport.setType(12);
         mediaServiceInterface.saveMedia(passport);
        
         
        
        Media maritalCertificate = new Media();
        maritalCertificate.setPath(fileHandlingInterface
                .storeFileToDisk(filename1, u.getUsername()+ r.nextInt()));
        maritalCertificate.setPropertyId(property);
        maritalCertificate.setType(13);
        mediaServiceInterface.saveMedia(maritalCertificate);
         
         application.setPropertyId(property);
         application.setUserId(u);
         application.setStatus(1);
         application.setDateOfApplication(date);
         
         id=applicationServiceInterface.saveApplication(application);
         
        return "redirect:getLawyers?application="+id;
    }    
//     @PostMapping("/registerUser")
//    public String registerUser(ModelMap mm,
//            @Valid @ModelAttribute("newUser") User user,
//            BindingResult bindingResult,
//            @RequestParam("secondPassword") String secondPassword,
//            @RequestParam("avatarFilename") MultipartFile avatarFilename,
//            HttpSession session,
//            RedirectAttributes redirectAttributes) {
//        boolean redirect =false;
//
//        if (bindingResult.hasErrors()) {
//            mm.addAttribute("allRoles", roleServiceInterface.getRolesWithoutAdmin());
//            mm.addAttribute("registerAttribute", "true");
//            return "indexRegister";
//        } 
// 
//         if(userServiceInterface.checkIfUsernameExists(user.getUsername())!=null){
//            redirectAttributes.addFlashAttribute("parserrorUsername", "The username "+ user.getUsername()+" already exist");
//            redirect=true;
//        }
//        if(userServiceInterface.checkIfEmailExists(user.getEmail())!=null){
//            redirectAttributes.addFlashAttribute("parserrorEmail", "The email "+ user.getEmail()+" already exist");
//            redirect=true;
//        }        
//        
//        if (!user.getPassword().equals(secondPassword)) {
//            redirectAttributes.addFlashAttribute("parserrorPassword", "The passwords you have given are different");
//            redirect=true;
//        }
//        if(redirect){
//            return "redirect:preRegister";
//        }
//
//        user.setPassword(passwordEncoder.encode(secondPassword));
//        Random r = new Random();
//        String imagename = user.getUsername() + r.nextInt();
//        user.setAvatar(fileHandlingInterface
//                .storeFileToDisk(avatarFilename, imagename));
//
//        userServiceInterface.saveUser(user);
//        session.setAttribute("user",user);
//         return "redirect:information";
//    }   
    
      @GetMapping("/approveLawyer")
    public String approveLawyer(ModelMap mm,
            HttpSession session,
            @RequestParam (name="id") int id){

 
        //TO MESSAGE TO GRAFEI AUTOS POU KANEI TO SESSION
        
        User user = userServiceInterface.findUserById(id);

        user.getRequiredDocumentsUploaded().setStatus(2);

        userServiceInterface.saveUser(user);       
       
        return "redirect:getLawyerInfoAdmin?id="+id;
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
    
    
     @GetMapping("/getYourBookings")
    public String getYourBookings(Pageable pageable,ModelMap mm ,HttpSession session) {
		//return propertyServiceInterface.getPages(pageable);
                
          //NA ALLA3W TO STATUS SE 2    
          List <Application> applicationList = applicationServiceInterface.getApplicationsByStatus(2);
          User user = (User) session.getAttribute("user");
         List<UserServesUser> myClients;
         List<UserServesUser> myClientsApplications = new ArrayList();
         List<UserServesUser> result;
         List <Application>filteredApplications = new ArrayList();
         
         
         //UserServesUser uuu= usuList.getClass();
         
         UserServesUserPK usuk = new UserServesUserPK();// = userServesUserRepository.findById(usuList.get(0));
         usuk.setUser1Id(user.getUserId());
         usuk.setUser2Id(150);
        ///// usuList= userServesUserRepository.findById(usuk.getUser1Id());
         
//         Collection<UserServesUser> usuCollection=user.getUserServesUserCollection();
         // UserServesUser usu = user.getUserServesUserCollection();
         // usu.setUser(user);
         // usuk.setUser1Id(user.getUserId());
          // userServesUserRepository.existsById(user.getUserId());
          
          
          myClients = userServesUserRepository.findByUser1Id(user.getUserId());
          
          
          
          //List<UserServesUser> usuList = userServesUserRepository.findAll();
          //List <UserServesUser> lawyerList = userServesUserRepository.findAllByUser1WhereExists(usu);
          
          List <UserServesUser> myBookings = new ArrayList();
          List <Application> myApplications = new ArrayList();
       //   myBookings.addAll(userServesUserRepository.findByUser1Id(userServesUserRepository.findById(user.getUserId())));
          
          for(Application a: applicationList){
////              if((application.getUserServesUserCollection().contains(userServesUserRepository.existsById(user.getApplicationCollection())))){
////                    myBookings.add(lawyer);                  
////              }
//                if(a.getUserServesUserCollection().contains(myClients)){
//                    myApplications.add(a);
//               }
//          ??      if(myClients.get(0).getApplicationId().getApplicationId() == (a.getApplicationId())){
//          ??          myApplications.add(a);
//          ??     }

               //result= userServesUserRepository.findByUser1IdAndApplicationId(user.getUserId(),a.getApplicationId());
               // myClientsApplications.addAll(result);
              //usu.getApplicationId();
              //userServesUserRepository.findAll();
              
             
        }
          
          
          
          for(UserServesUser client: myClients){

//               if(myClients.get(0).getApplicationId().getApplicationId() == (a.getApplicationId())){
//                    myApplications.add(a);
//               }             
//              
//                if(myClients.get(0).getApplicationId().getApplicationId() == (a.getApplicationId())){
//                    myApplications.add(a);
//               }

              /* if(applicationList.contains(client.getApplicationId())){
                   System.out.println("Fraoules");
               } */              
               if(applicationList.contains(client.getApplicationId())){
                   myClientsApplications.add(client);
               }         
              
        } 
          
          int i=0;
          
          
//          Page<Property> pages = propertyServiceInterface.getPages(pageable);
//          mm.addAttribute("number", pages.getNumber());
//          mm.addAttribute("totalPages", pages.getTotalPages());
//          mm.addAttribute("totalElements", pages.getTotalElements());      
          mm.addAttribute("data", myClientsApplications);
          return "clientbookings";              
          
          
         /* AUTO TO RETURN DOULEVEI   
          Page<Property> pages = propertyServiceInterface.getPages(pageable);
          mm.addAttribute("number", pages.getNumber());
          mm.addAttribute("totalPages", pages.getTotalPages());
          mm.addAttribute("totalElements", pages.getTotalElements());      
          mm.addAttribute("data", pages.getContent());
          return "bookings";              
          */      
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
