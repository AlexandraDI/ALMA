<%--

    Document   : welcome

    Created on : Aug 21, 2020, 1:49:48 AM

    Author     : alex

--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="head.jsp" %>

<script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>

<script src="dist/aframe-no-click-look-controls.min.js"></script>



<!-- <body>

        <a-scene>

                <img id="panorama" src="images/oia.jpg" width="500" height="600"/>

                <a-sky src="#panorama"  rotation="0 -90 0"></a-sky>

        </a-scene>

</body> -->



<style>

    a-scene {

        height: 300px;

        width: 100%;

    }





    .livingRoomPanorama {

        position: relative;

        top: 0;

        left: 0;

    }



    .bedroomPanorama {

        position: relative;

        top: 0;

        left: 0;

    }



    .bathroomPanorama {

        position: relative;

        top: 0;

        left: 0;

    }



    .kitchenPanorama {

        position: relative;

        top: 0;

        left: 0;

    }



    .otherPanorama {

        position: relative;

        top: 0;

        left: 0;

    }          



    .image2 {

        position: absolute;

        top: 10px;

        left: 7px;

        opacity: 0.6;

        height: 60px;

        width:80px;

        border-radius: 10%;

        border-style: solid;
        border-color: #202020;

    }



    .btn.btn-dark.btn-sm.float-left{

        border-radius: 0%;

    }
    .btn.btn-primary.btn-sm.float-left{

        border-radius: 0%;

    }  



    .myEmbeddedScene {

        position: relative;

        top: 0;

        left: 0;

    }



    .bg-light {

        /*    //background: #187de1 !important;*/

        /*        background: #a4a4a4 !important;*/

        background: white !important;

    }  



    label.custom-file-label{

        border-radius: 0px !important;

    }





    .a-enter-vr-button{

        display:none;



    }    


    .search-property .form-group .form-control {

        border: 1px solid #b0afaf;;
        color: gray !important;
    }



    .search-property .form-group label {
        color: gray;
    }


    .search-property .form-group .icon {
        color: gray;
    }  


    .form-control{

        height: 42px !important;

        font-size: 14px;

    }

    body {
        font-size: 17px !important;
    }

    .search-property .form-group .form-control {
        font-size: 16px;
    }

    .search-property .form-group label {
        font-size: 17px;
    }


     .form-group .form-control::-webkit-input-placeholder {
         font-weight: 400;
         font-size: 16px !important;
        color: gray !important; }
    .form-group .form-control::-moz-placeholder {
        font-weight: 400;
        font-size: 16px !important;
        color: gray !important; }
   .form-group .form-control:-ms-input-placeholder {
       font-weight: 400;
       font-size: 16px !important;
        /* IE 10+ */
        color: gray !important; }
     .form-group .form-control:-moz-placeholder {
         font-weight: 400;
         font-size: 16px !important;
        /* Firefox 18- */
        color: gray !important; }






    .btn.btn-dark.btn-sm.float-left.col-6 {
        /*    background: #252a2b;*/
        /*        background: #3b4244;*/
        border: 1px solid #3b4244;
        height: 42px !important;
    }  

    .btn.btn-dark.btn-sm.float-left.col-6:hover {
        color: #26baee;
        background: white;
        border: 1px solid #26baee;
        height: 42px !important;
    }

    .btn.btn-primary.btn-sm.float-left.col-6 {
        /*    background: #252a2b;*/
        /*        background: #3b4244;*/
        /*        border: 1px solid #3b4244;*/
        border: 1px solid;
        height: 42px !important;
    }  

    .btn.btn-primary.btn-sm.float-left.col-6:hover {
        /*        color: #26baee;*/
        background: white;
        border: 1px solid #26baee;
        height: 42px !important;
    }  


    .btn.py-3.px-4.btn-dark{

        border-radius: 4%;
    }


    button#geolocation2.btn.bg-primary.text-white{

        height: 42px !important;
        width:100%;
        border-radius: 0px;

    }

    /*.custom-file-input {*/
    /*    position: relative;
        z-index: 2;
        width: 100%;
        height: calc(2.25rem + 2px);
        margin: 0;*/
    /*    opacity: 0;
    }*/

    div#livingRoom.form-group.col-md-6{
        /*        padding:0px;*/
        padding: 0px;
        margin-bottom: 0px;
    }
    div#bedroom.form-group.col-md-6{
        /*        padding:0px;*/
        padding: 0px;
        margin-bottom: 0px;
    }
    div#kitchen.form-group.col-md-6{
        /*        padding:0px;*/
        padding: 0px;
        margin-bottom: 0px;
    }
    div#bathroom.form-group.col-md-6{
        /*        padding:0px;*/
        padding: 0px;
        margin-bottom: 0px;
    }
    div#other.form-group.col-md-6{
        /*        padding:0px;*/
        padding: 0px;
        margin-bottom: 0px;
    }


    #img_url1 {
        height: 300px;
        width: 100%;
        display: block;
    }
    #img_url2 {
        height: 300px;
        width: 100%;
        display: block;
    }
    #img_url3 {
        height: 300px;
        width: 100%;
        display: block;
    }
    #img_url4 {
        height: 300px;
        width: 100%;
        display: block;
    } 
    #img_url5 {
        height: 300px;
        width: 100%;
        display: block;
    } 
    #img_url6 {
        height: 300px;
        width: 100%;
        display: block;
    }   


    div#livingRoomTypical.form-group.col-md-6{
        padding: 0px;
        margin-bottom: 0px;  
    }


    /* Three image containers (use 25% for four, and 50% for two, etc) */
    .column {
        float: left;
        width: 50%;
        padding: 5px;
    }

    /* Clear floats after image containers */
    .row::after {
        content: "";
        clear: both;
        display: table;
    }


    .search-property .form-group .form-control {
        /*    border: 1px solid #ebebeb;*/
        border: 1px solid #999;
        color: #666666 !important;
    }


    .ftco-section {

        padding-top: 30px !important;
    }

    .top{
        font-size: 14px !important;
    }
    
    .red{
        color: red !important;
        display:none;
    }

</style>

<%--------------HERE--%>







<%-- <%@ include file="carousel.jsp" %> --%>



<div class="hero-wrap" style="background-image: url('oia.webp');">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text align-items-center">

            <div class="col-md-4 ftco-animate text-center bg-white my-4 p-4">

                <h4 class="mb-3 bread"><p class="text-dark">REQUIRED INFORMATION</p></h4>

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Application</span></span></p>

                <!--                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play text-dark"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><a href="blog.html"><span class="text-dark">Blog</span></a></span> <span class="text-dark">Blog</span></p>-->

            </div>

        </div>

    </div>

</div>



<section class="ftco-section ftco-degree-bg ">

    <div class="container">

        <div class="row">



            <div class="ftco-animate col-12">

                <!--              <div class="comment-form-wrap pt-5">-->

                <!--<h3 class="mb-5"><center>Fill the information</center></h3>-->

                <div class="add">
<!--                    <form>-->
                   <springform:form action="addBuyer?property=${property}" method="post" modelAttribute="newApplication" enctype="multipart/form-data" name="applicationForm"> 




                     

<%--                        </br>
                        <div class="form-group">
                            <label for="price"><h4>FEATURED PRICE</h4></label>
                            <div class="form-field">
                                <label for="price">Price</label>
                                <springform:input path="price" required="required" id="price" type="number" class="form-control validate" placeholder="Your price"/>
                            </div>
                        </div>--%>


                        

                        <div class="row">
                            <div class="col-md align-items-end">
                                
<!--                         </br><h4>PASSPORT OR ID</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url6" style="display:none;width:100%" alt="Certificate of Ownership">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Upload your Passport/ID</span>
                                            <input type="file" name="filename" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url6');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
                                            <input type="text" class="form-control" placeholder="+ Passport/ID Scan" readonly>
                                        </div>    
                                    </div>
                                </div>  
                            </div>
                            <div class="row">
                            <label id="certificateDescription">You can upload a scan of your passport/ID</label>
                            </div>
                            <div class="row">
                            <label id="certificateNon360" class="red">Please upload a scan of your passport/ID</label>
                            </div>
                        </div>                                -->
                                
                                
                                </br><h4>PROTECTED MEMBERS</h4>
                                <div class="form-group">
                                <div class="form-field">
                                    <label for="price">Number of Protected Members</label>
<!--                                    <input id="title" type="number" class="form-control" placeholder="Years of experience">-->
                             <%--     <springform:input path="protectedMembers" required="required" id="protectedMembers" type="number" class="form-control validate" placeholder="Number of Protected Members"/> --%>
                                    <springform:select id="protectedMembers" type="number" path="protectedMembers" class="form-control validate"> 
                                                <springform:option value="0" label="-"/>  
                                                <springform:option value="1" label="1"/>  
                                                <springform:option value="2" label="2"/>  
                                                <springform:option value="3" label="3"/>  
                                                <springform:option value="4" label="4"/>  
                                                <springform:option value="5" label="5"/>  
                                                <springform:option value="6" label="6"/>  
                                                <springform:option value="7" label="7"/>  
                                                <springform:option value="8" label="8"/>  
                                                <springform:option value="9" label="9"/>  
                                                <springform:option value="10" label="10"/>  
                                        </springform:select>                                    
                                </div>
                                </div>

                            
                               
                      



                        
                        </div>
                          </div>

                         </br><h4>PASSPORT OR ID</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                         
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url6" style="display:none;width:100%" alt="Certificate of Ownership">
                                </div>
                          
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url4" style="display:none;width:100%" alt="Your bathroom">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                
                                
                                 <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Upload your Passport/ID</span>
                                            <input type="file" name="filename1" class="custom-file-input" accept="image/*" required onChange="img_pathUrlTypical(this, 'img_url6'); $('#certificateNon360').hide();" oninvalid="$('#certificateNon360').show();"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Passport/ID Scan" readonly>
                                        </div>    
                                    </div>
                              <div class="row">
                            <label id="certificateDescription">You can upload a scan of your passport/ID</label>
                            <label id="certificateNon360" class="red">Please upload a scan of your passport/ID</label>
                            </div>                                   
                                     
                                     
                                </div>                               
                                
<!--                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Choose a 360 image</span>
                                            <input type="file" name="filename4" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'bathroomPanorama', 'bathroom');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
                                            <input type="text" class="form-control" placeholder="+ Bathroom 360" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="bathroom360" class="red">Please upload a 360 image of the bathroom</label>
                                    </div>
                                </div>-->
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Certificate of marital status</span>
                                            <input type="file" name="filename2" class="custom-file-input" accept="image/*" required onChange="img_pathUrlTypical(this, 'img_url4'); $('#maritalNon360').hide();" oninvalid="$('#maritalNon360').show();"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Certificate" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="maritalNon360" class="red">Please upload the certificate of your marital status</label>
                                    </div>
                                </div> 
                                
                            </div>
                        </div>
<!--                        <input path="ownerId" id="ownerId" type="hidden" class="form-control validate" required="required" value="${sessionScope.user.userId}" placeholder="OwnerId"/> -->



                        <div class="modal-footer d-flex justify-content-center">

                            <button type="submit" class="btn py-3 px-4 btn-dark">Submit</button>

                        </div>


             
                  </springform:form> 

                </div>





            </div> <!-- .col-md-8 -->











        </div>

    </div>

</section> <!-- .section -->



<%@ include file="subscribe.jsp" %>



<%@ include file="footer.jsp" %>





<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>





<script src="js/jquery.min.js"></script>

<script src="js/jquery-migrate-3.0.1.min.js"></script>

<script src="js/popper.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.easing.1.3.js"></script>

<script src="js/jquery.waypoints.min.js"></script>

<script src="js/jquery.stellar.min.js"></script>

<script src="js/owl.carousel.min.js"></script>

<script src="js/jquery.magnific-popup.min.js"></script>

<script src="js/aos.js"></script>

<script src="js/jquery.animateNumber.min.js"></script>

<script src="js/bootstrap-datepicker.js"></script>

<script src="js/jquery.timepicker.min.js"></script>

<script src="js/scrollax.min.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>

<script src="js/google-map.js"></script>

<script src="js/main.js"></script>









<script>



                                                var test = "bath1.jpg";



                                                function img_pathUrl(input, name, nameToDeleteOrAdd) {



                                                    $('#' + nameToDeleteOrAdd + '').empty();

                                                    document.getElementById(nameToDeleteOrAdd).innerHTML +=
                                                            '<div id="myEmbeddedScene"><a-scene embedded><img id="' + name + '" src="' + (window.URL ? URL : webkitURL).createObjectURL(input.files[0]) + '"/><a-sky src="#' + name + '"  rotation="0 -90 0"></a-sky></a-scene><img class="image2" src="360-small.jpg" /></div>';

                                                }



                                                $(".custom-file-input").on("change", function () {

                                                    var fileName = $(this).val().split("\\").pop();

                                                    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);

                                                });


                                                function img_pathUrlTypical(input, name) {

                                                    $('#' + name + '').show();

                                                    $('#' + name + '')[0].src = (window.URL ? URL : webkitURL).createObjectURL(input.files[0]);

                                                }


</script>

