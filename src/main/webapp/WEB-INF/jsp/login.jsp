<%-- 
    Document   : search
    Created on : Aug 19, 2020, 6:48:44 PM
    Author     : alex
--%>
<style>
    .form-control.register {

        height: 35px !important;

        font-size: 14px;

    }   

   

    label.custom-file-label{

        border-radius: 0px !important;

    }
</style>

<!--<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Login</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fas fa-envelope prefix grey-text"></i>
                    <input type="email" id="defaultForm-email" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="defaultForm-email">Your email</label>
                </div>

                <div class="md-form mb-4">
                    <i class="fas fa-lock prefix grey-text"></i>
                    <input type="password" id="defaultForm-pass" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
                </div>

            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-default">Submit</button>
            </div>
        </div>
    </div>
</div> -->

 

<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"

     aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header text-center">

                <h4 class="modal-title w-100 font-weight-bold">Login</h4>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                    <span aria-hidden="true">&times;</span>

                </button>

            </div>

 

            <form action="loginUser" method="post" name="loginForm">
                


  

                <div class="modal-body mx-3 ">

                     <div class="form-group">

                    <label>Your username</label>

                    <input id="username" name="username" class="form-control register validate" type="text" placeholder="Enter your username" required="required" minlength="4" maxlength="35" pattern="^[a-zA-Z0-9]{4,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 4 and up to 35 alpanumeric characters.');"/>



                    <p style="color: red;"> ${parserrorUsername}</p>

                     </div>

                    <div class="form-group">

                    <label>Your password</label>

                    <input class="form-control register validate" name="password" type="password" placeholder="Enter your pasword" required="required" minlength="8" maxlength="35" pattern="^[a-zA-Z0-9]{8,35}$" oninput="setCustomValidity(''); checkValidity(); setCustomValidity(validity.valid ? '' :'Please enter at least 8 and up to 35 alpanumeric characters.');"/>

                    </br>
                    <p style="color: red;"> ${parserror}</p>

                    <label id="usernameError" style="display:none; color: red;">The username or password is incorrect. Please repeat the proccess.</label>
                          

                    </div>

                </div>

                <div class="modal-footer d-flex justify-content-center">

                    <button type="submit" id="submitButton" class="btn btn-default btn-lg bg-dark text-white rounded">Submit</button>

                </div>

            </form>      
 

        </div>

    </div>

</div>  