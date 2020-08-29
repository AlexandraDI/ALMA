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

 

/*    .form-control {

        height: 35px !important;

        font-size: 14px;

        border-radius: 4px;

    }*/       

    

    .form-control.register {

        height: 35px !important;

        font-size: 14px;

/*        border-radius: 4px;*/

    }   

 

    button#geolocation.btn.bg-success.text-white{

        height: 35px !important; 

        border-radius: 0px;

    }

   

    label.custom-file-label{

        border-radius: 0px !important;

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

   

    

#img_url {

  background: #ddd;

  width:90px;

  height: 60px;

  display: block;

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

  

                <div class="modal-body mx-3 ">

                   

     <div class="form-group">              

    <center><img src="" id="img_url" style="display:none" alt="Your picture"></center>

    <br>

    <div class="custom-file mb-3">

      <input type="file" name="avatarFilename" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this);"/> 

      <label class="custom-file-label" for="customFile">Choose profile picture</label>

    </div>                   

    </div>

                    <!--   

                          <input type="text" class="form-control form-control-sm" placeholder="Small form control" name="text1">

                    -->

 

                <div class="form-group">

                    <label>Your firstname</label>

                    <springform:input path="firstname" class="form-control register" type="text" placeholder="Enter your firstname" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');" />

                    <springform:errors  path="firstname" cssStyle="color:red"/>         

                </div>

 

                    <div class="form-group">

                    <label>Your lastname</label>

                    <springform:input path="lastname" class="form-control register validate" type="text" placeholder="Enter your lastname" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');"/>

                    <springform:errors  path="lastname" cssStyle="color:red"/>         

                            </div> 

 

                          

                     <div class="form-group">

                    <label>Your username</label>

                    <springform:input path="username" id="username" class="form-control register validate" type="text" placeholder="Enter your username" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');"/>

                    <springform:errors  path="username" cssStyle="color:red"/>

                    <label id="usernameError" style="display:none; color: red;">Username already exists. Please enter a different username</label>

                    <!--        </div>          -->

                    <p style="color: red;"> ${parserrorUsername}</p>

                     </div>

 

 

                    <div class="form-group">

                    <label>Your password</label>

                    <springform:input path="password" class="form-control register validate" type="password" placeholder="Enter your pasword" required="required" minlength="8" maxlength="35" pattern="^[a-zA-Z0-9]{8,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 8 and up to 35 alpanumeric characters.');"/>

                    <springform:errors  path="password" cssStyle="color:red"/>          

                            </div>

 

 

                    <div class="form-group">

                    <label>Repeat password</label>

                    <input name="secondPassword" class="form-control register validate" type="password" placeholder="Repeat your pasword" required="required" minlength="8" maxlength="35" pattern="^[a-zA-Z0-9]{8,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 8 and up to 35 alpanumeric characters.');"/>       

                    <!--        </div>    -->

                    <p style="color: red;"> ${parserrorPassword}</p>

                    </div>

 

 

                    <div class="form-group">

                    <label>Your email</label>

                    <springform:input path="email" id="email" class="form-control register validate" type="email" placeholder="Enter your email" required="required" minlength="4" maxlength="40" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter a valid email format that contains at least 4 and up to 40 characters.');"/>

                    <springform:errors  path="email" cssStyle="color:red"/>

                    <label id="emailError" style="display:none; color: red;">Email already exists. Please enter a different email</label>         

                    <!--        </div>  -->

                    <p style="color: red;"> ${parserrorEmail}</p>

                    </div>

 

                    <div class="form-group">

                    <label>Select the role you wish to apply for</label>

          <!--                    <c:forEach items="${allRoles}" var="role" >

                                  <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="roleSelected" path="roleId" value="${role.roleId}"/>${role.rolename}

                              </c:forEach>   -->

 

                    <springform:select class="form-control register validate"  items="${allRoles}" path="roleId" itemLabel="rolename" itemValue="roleId" placeholder="Select your role"/><br>

                            </div> 

 

 

<!--                    <div class="d-flex justify-content-center">

                        <button type="button" id="geolocation" class=" d-flex justify-content-center btn btn-lg bg-success text-white"><p><i class="icon-my_location"></i></p></button>

                    </div>-->

                   

                    

                    <div class="loader" id="loading" style="display:none">Loading...</div>

                   

                    <div class="form-group">

                    <label id="locationLabel">Your location</label><br>

                   

                    

                  <div class="row">

                      <div class="col-1">

                    <button type="button" id="geolocation" class="btn bg-success text-white"><p><i class="icon-my_location"></i></p></button>

                    </div>

                    <div class="col-11">

                    <input name="location" id="location"  class="form-control register validate" type="text" placeholder="Your location"/>

                    </div>

                    </div>

                    </div>

 

<!--    <center><img src="" id="img_url" alt="Your picture"></center>

 

    <div class="custom-file mb-3">

      <input type="file" name="avatarFilename" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this);"/> 

      <label class="custom-file-label" for="customFile">Choose file</label>

    </div>-->

 

 

 

 

 

                </div>

                <div class="modal-footer d-flex justify-content-center">

                    <button type="submit" id="submitButton" class="btn btn-default btn-lg bg-primary text-white">Submit</button>

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

                                    //$('#locationLabel').show();

                                    //$('#location').show();

                                }

                            });

 

 

                        } else {

                            alert("den elave thn ip");

                            //$('#submitButton').show();

                        }

                    });

                });

 

 

    

    function img_pathUrl(input){

        $('#img_url').show();

        $('#img_url')[0].src = (window.URL ? URL : webkitURL).createObjectURL(input.files[0]);

    }   

    

$(".custom-file-input").on("change", function() {

  var fileName = $(this).val().split("\\").pop();

  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);

});

 

 

 

//    $('#email').focus(function() {

//    $('#email').css('border','3px solid #d8f6ff');

//   });

//  

//   $('#email').focusout(function() {

//       $('#email').css('border','1px solid #ced4da');

//   });

 

 

            </script>       

 

 

 

 

 

 

 

 

 

        </div>

    </div>

</div>  