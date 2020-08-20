<%-- 
    Document   : resgister
    Created on : Aug 19, 2020, 12:05:33 AM
    Author     : alex
--%>

<%--
        <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous">
        </script>
        <script src='https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js'></script>
        <script type="text/javascript" src="/form-validation.js"></script>   
--%>

<style>

    .form-control {
        height: 35px !important;
        font-size: 14px;
    }

    button#geolocation.d-flex.justify-content-center.btn.btn-lg.bg-warning.text-white{
        height: 40px !important;  
        border-radius: 0px;
    }
    
    
    
 .loader,
.loader:after {
  border-radius: 50%;
  width: 5em;
  height: 5em;
}
.loader {
  margin: 5px auto;
  font-size: 10px;
  position: relative;
  text-indent: -9999em;
  border-top: 1.1em solid rgba(67,61,61, 0.2);
  border-right: 1.1em solid rgba(67,61,61, 0.2);
  border-bottom: 1.1em solid rgba(67,61,61, 0.2);
  border-left: 1.1em solid #433d3d;
  -webkit-transform: translateZ(0);
  -ms-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-animation: load8 1.1s infinite linear;
  animation: load8 1.1s infinite linear;
}
@-webkit-keyframes load8 {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}
@keyframes load8 {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

</style>

<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Register</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <springform:form action="registerUser" method="post"
                             modelAttribute="newUser" enctype="multipart/form-data" name="registerForm">

                <div class="modal-body mx-3">

                    <!--    
                          <input type="text" class="form-control form-control-sm" placeholder="Small form control" name="text1">
                    -->

                    <!--        <div class="form-group">-->
                    <label>Your firstname</label>
                    <springform:input path="firstname" class="form-control" type="text" placeholder="Enter your firstname" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');" />
                    <springform:errors  path="firstname" cssStyle="color:red"/>          
                    <!--        </div>-->

                    <!--         <div class="md-form mb-5">-->
                    <label>Your lastname</label>
                    <springform:input path="lastname" class="form-control validate" type="text" placeholder="Enter your lastname" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');"/>
                    <springform:errors  path="lastname" cssStyle="color:red"/>          
                    <!--        </div>  -->

                    <!--          
                              <div class="md-form mb-5">-->
                    <label>Your username</label>
                    <springform:input path="username" id="username" class="form-control validate" type="text" placeholder="Enter your username" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');"/>
                    <springform:errors  path="username" cssStyle="color:red"/> 
                    <label id="usernameError" style="display:none; color: red;">Username already exists. Please enter a different username</label>
                    <!--        </div>          -->
                    <p style="color: red;"> ${parserrorUsername}</p>



                    <!--        <div class="md-form mb-5">-->
                    <label>Your password</label>
                    <springform:input path="password" class="form-control validate" type="password" placeholder="Enter your pasword" required="required" minlength="8" maxlength="35" pattern="^[a-zA-Z0-9]{8,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 8 and up to 35 alpanumeric characters.');"/>
                    <springform:errors  path="password" cssStyle="color:red"/>           
                    <!--        </div>-->


                    <!--         <div class="md-form mb-5">-->
                    <label>Repeat password</label>
                    <input name="secondPassword" class="form-control validate" type="password" placeholder="Repeat your pasword" required="required" minlength="8" maxlength="35" pattern="^[a-zA-Z0-9]{8,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 8 and up to 35 alpanumeric characters.');"/>        
                    <!--        </div>    -->
                    <p style="color: red;"> ${parserrorPassword}</p>


                    <!--        <div class="md-form mb-5">-->
                    <label>Your email</label>
                    <springform:input path="email" id="email" class="form-control validate" type="email" placeholder="Enter your email" required="required" minlength="4" maxlength="40" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter a valid email format that contains at least 4 and up to 40 characters.');"/>
                    <springform:errors  path="email" cssStyle="color:red"/> 
                    <label id="emailError" style="display:none; color: red;">Email already exists. Please enter a different email</label>          
                    <!--        </div>  -->
                    <p style="color: red;"> ${parserrorEmail}</p>

                    <!--         <div class="md-form mb-5">-->
                    <label>Select the role you wish to apply for</label>
          <!--                    <c:forEach items="${allRoles}" var="role" >
                                  <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="roleSelected" path="roleId" value="${role.roleId}"/>${role.rolename}
                              </c:forEach>   -->

                    <springform:select class="form-control validate"  items="${allRoles}" path="roleId" itemLabel="rolename" itemValue="roleId" placeholder="Select your role"/><br>
                    <!--        </div>  -->


                    <div class="d-flex justify-content-center">
                        <button type="button" id="geolocation" class=" d-flex justify-content-center btn btn-lg bg-warning text-white">Give your location</button>
                    </div>

                    <div class="loader" id="loading" style="display:none">Loading...</div>
                    <label>Your location</label><br>

                    <input name="location" id="location" class="form-control validate" type="text" placeholder="Your location"/> 

                    <!--          <div class="md-form mb-5">-->
                    <label>Your picture</label><br>
                    <input type="file" name="avatarFilename" accept="image/*"/>       
                    <!--        </div>                    -->


                    



                    <!--            <label>Your country</label>         
                                <input name="country" id="country" class="form-control validate" type="text" placeholder="Your country"/> 
                    -->




                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="submit" id="submitButton" class="btn btn-default btn-lg bg-dark text-white">Submit</button>
                </div>



                <!--            <table>
                
                                <tr>
                                    <td>Firstname:</td>
                                   <td> <springform:input path="firstname"/></td>
                                    <td><springform:errors  path="firstname" cssStyle="color:red"/></td>
                                </tr>
                                <tr>
                                    <td>Lastname:</td>
                                    <td> <springform:input path="lastname"/></td>
                                    <td><springform:errors  path="lastname" cssStyle="color:red"/></td>
                                </tr>           
                                <tr>
                                    <td>Username:</td>
                                  <td> <springform:input path="username" id="username"/></td>
                                    <td><springform:errors  path="username" cssStyle="color:red"/></td>
                                    <td> <label id="usernameError" style="display:none">Username already exists. Please enter a different username</label></td>
                                <span></span>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><springform:password path="password"/></td>
                                <td><springform:errors  path="password" cssStyle="color:red"/></td>
                            </tr>
                            <tr>
                                <td>Repeat Password:</td>
                               <td><input type="password" placeholder="Repeat password" name="secondPassword"/></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                               <td> <springform:input path="email" id="email"/></td>
                                <td><springform:errors  path="email" cssStyle="color:red"/></td>
                            </tr>             
                            <tr>
                                <td>Roles:</td>
                                <td>
                                    <c:forEach items="${allRoles}" var="role">
                                        <springform:radiobutton name="roleSelected" path="roleId" value="${role.roleId}"/>${role.rolename}
                                    </c:forEach> 
                                     <springform:select  items="${allRoles}" path="roleId" itemLabel="rolename" itemValue="roleId"/>  
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>Profile Picture:</td>
                               <td><input type="file" name="avatarFilename" accept="image/*"/></td>
                            </tr>
                        </table>
                       <button type="submit">Submit</button>-->
            </springform:form> 

            <!--             <div class="modal-body mx-3">                        
            
                        <div class="modal-footer d-flex justify-content-center">
                            <button id="geolocation" class="btn btn-default btn-lg bg-primary text-white">Location</button>
                        </div>                     
            
                        <label>Your city</label>         
                        <input name="city" id="city" class="form-control validate" type="text" placeholder="Your city"/>                  
            
                        <label>Your country</label>         
                        <input name="country" id="country" class="form-control validate" type="text" placeholder="Your country"/> 
            
                        
                         </div>-->



            <%--  ${parserror} --%>
            <script>
                //function InvalidMsg1(textbox) {

                //     if(textbox.validity.patternMismatch){
                //       textbox.setCustomValidity('Please enter at least 4 and up to 35 alpanumeric characters.');
                //    }    
                //    else {
                //        textbox.setCustomValidity('');
                //    }
                // return true;
                //}        

                //htan keyup
                $("#username").focusout(function () {
                    var name = $("#username").val();
                    var myurl = "checkUsername/" + name;
                    $.ajax({
                        url: myurl
                    }).done(function (data) {
                        //alert(data);
                        if (data) {
                            $('#usernameError').show();
                            //$('#submitButton').hide();
                        } else {
                            $('#usernameError').hide();
                            //$('#submitButton').show();
                        }
                    });
                });
                $("#email").focusout(function () {
                    var email = $("#email").val();
                    var myurl = "checkEmail/" + email;
                    $.ajax({
                        url: myurl
                    }).done(function (data) {
                        if (data) {
                            $('#emailError').show();
                            //$('#submitButton').hide();
                        } else {
                            $('#emailError').hide();
                            //$('#submitButton').show();
                        }
                    });
                });

                $("#geolocation").click(function () {


                    $('#loading').show();


                    $.ajax({
                        url: 'http://api.ipify.org/?format=json'
                    }).done(function (data) {
                        if (data) {
                            const ip = data.ip;
                            //alert(ip);
                            //alert("test");
                            $('#ip').val(data.ip).change();
                            //alert(ip);
                            var access_key = '43d20a75aa0380f79c50923588c61b72';

                            // get the API result via jQuery.ajax
                            $.ajax({
                                url: 'http://api.ipstack.com/' + ip + '?access_key=' + access_key,
                                dataType: 'jsonp',
                                success: function (json) {

                                    // output the "capital" object inside "location"
                                    //alert(json.location.capital);
                                    $('#location').val(json.location.capital + " ," + json.country_name).change();
                                    $('#country').val(json.country_name).change();
                                    $('#loading').hide();
                                }
                            });


                        } else {
                            alert("den elave thn ip");
                            //$('#submitButton').show();
                        }
                    });
                });



            </script>        









        </div>
    </div>
</div>   





