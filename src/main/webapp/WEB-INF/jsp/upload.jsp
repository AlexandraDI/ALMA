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
/*        //border: 1px solid #999;
       // color: #666666 !important;*/
       color: black !important;
       background: #fff !important;
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

                <h4 class="mb-3 bread"><p class="text-dark">PROPERTY SUBMIT</p></h4>

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Property</span></span></p>

                <!--                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play text-dark"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><a href="blog.html"><span class="text-dark">Blog</span></a></span> <span class="text-dark">Blog</span></p>-->

            </div>

        </div>

    </div>

</div>



<section class="ftco-section ftco-degree-bg ">

    <div class="container">

        <div class="row">




            <!--            <div class="col-lg-4 sidebar ftco-animate">
           
                            <div class="sidebar-box ftco-animate">
           
                                <div class="categories">
           
                                    <h3>Categories</h3>
           
                                    <li><a href="#">Properties <span>(12)</span></a></li>
           
                                    <li><a href="#">Home <span>(22)</span></a></li>
           
                                    <li><a href="#">House <span>(37)</span></a></li>
           
                                    <li><a href="#">Villa <span>(42)</span></a></li>
           
                                    <li><a href="#">Apartment <span>(14)</span></a></li>
           
                                    <li><a href="#">Condominium <span>(140)</span></a></li>
           
                                </div>
           
                            </div>
           
             
           
                            <div class="sidebar-box ftco-animate">
           
                                <h3>Recent Blog</h3>
           
                                <div class="block-21 mb-4 d-flex">
           
                                    <a class="blog-img mr-4" style="background-image: url(image_1.jpg);"></a>
           
                                    <div class="text">
           
                                        <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
           
                                        <div class="meta">
           
                                            <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
           
                                            <div><a href="#"><span class="icon-person"></span> Admin</a></div>
           
                                            <div><a href="#"><span class="icon-chat"></span> 19</a></div>
           
                                        </div>
           
                                    </div>
           
                                </div>
           
                                <div class="block-21 mb-4 d-flex">
           
                                    <a class="blog-img mr-4" style="background-image: url(image_2.jpg);"></a>
           
                                    <div class="text">
           
                                        <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
           
                                        <div class="meta">
           
                                            <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
           
                                            <div><a href="#"><span class="icon-person"></span> Admin</a></div>
           
                                            <div><a href="#"><span class="icon-chat"></span> 19</a></div>
           
                                        </div>
           
                                    </div>
           
                                </div>
           
                                <div class="block-21 mb-4 d-flex">
           
                                    <a class="blog-img mr-4" style="background-image: url(image_3.jpg);"></a>
           
                                    <div class="text">
           
                                        <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
           
                                        <div class="meta">
           
                                            <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
           
                                            <div><a href="#"><span class="icon-person"></span> Admin</a></div>
           
                                            <div><a href="#"><span class="icon-chat"></span> 19</a></div>
           
                                        </div>
           
                                    </div>
           
                                </div>
           
                            </div>
           
             
           
                            <div class="sidebar-box ftco-animate">
           
                                <h3>Tag Cloud</h3>
           
                                <div class="tagcloud">
           
                                    <a href="#" class="tag-cloud-link">dish</a>
           
                                    <a href="#" class="tag-cloud-link">menu</a>
           
                                    <a href="#" class="tag-cloud-link">food</a>
           
                                    <a href="#" class="tag-cloud-link">sweet</a>
           
                                    <a href="#" class="tag-cloud-link">tasty</a>
           
                                    <a href="#" class="tag-cloud-link">delicious</a>
           
                                    <a href="#" class="tag-cloud-link">desserts</a>
           
                                    <a href="#" class="tag-cloud-link">drinks</a>
           
                                </div>
           
                            </div>
           
             
           
                            <div class="sidebar-box ftco-animate">
           
                                <h3>Paragraph</h3>
           
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
           
                            </div>
           
                        </div>
            -->



            <!--          <div class="shadow rounded">  -->

            <!--          <div class="col-lg-8 ftco-animate">-->

            <div class="ftco-animate col-12">

                <!--              <div class="comment-form-wrap pt-5">-->

                <!--<h3 class="mb-5"><center>Fill the information</center></h3>-->

                <div class="add">

                    <springform:form action="addProperty" method="post" modelAttribute="newProperty" class="" enctype="multipart/form-data" name="propertyForm">


                        <div class="form-group">
                            <label for="title"><h4>TITLE</h4></label>
                            <div class="form-field">
                                <!--                                <input id="title" type="text" class="form-control" placeholder="Your Title">-->
                                <springform:input path="title" id="title" type="text" class="form-control validate" required="required" placeholder="Your Title"/>
                            </div>
                        </div>

                        </br><h4>PROPERTY LOCATION</h4>
                        <div class="row">
                            <div class="col-md-4 my-md-4">
                                <div class="form-group">
                                    <button type="button" id="geolocation2" class="btn bg-primary text-white"><p><i class="icon-my_location"></i> Give your location</p></button>
                                </div>
                                <div class="form-group">
                                    <div class="form-field">
                                        <springform:input path="cityId.name" id="cityId" type="text" class="form-control validate" required="required" placeholder="City name"/>
                                    </div>
                                </div>
                                <!--                                 <div class="form-group">
                                                                    <div class="form-field">
                                <%--              <springform:input path="cityId.cityId" id="cityId" type="number" class="form-control validate" required="required" placeholder="City"/> --%%>
                                       </div>
                                   </div>                                   -->
   <!--                                <div class="form-group">
                                       <div class="form-field">
                                           <input id="country" type="text" class="form-control" placeholder="Country">
                                <%--             <springform:input path="cityId.countryId.countryId" id="countryId" type="number" class="form-control validate" required="required" placeholder="Country"/>  --%>
                                         </div>
                                     </div>  -->
                                <%--                                 <div class="form-group">
                                                                    <div class="form-field">
                                                                        <springform:input path="cityId.countryId.name" id="name" type="text" class="form-control validate" required="required" placeholder="name"/>
                                                                    </div>
                                                                </div>    --%>
                                <%--                                 
                                                            <div class="form-group">
                                                                <div class="form-field">
                                                                    <springform:input path="requiredDocumentsUploaded.documentCollection[0].requiredDocumentsId" id="descriptionDocuments" type="text" class="form-control validate" required="required" placeholder="description Documents"/>
                                                                </div>
                                                            </div>  
                                                                
                                                           <div class="form-group">
                                                                <div class="form-field">
                                                                    <springform:input path="requiredDocumentsUploaded.documentCollection[0].requiredDocumentsId" id="pathDocuments" type="text" class="form-control validate" required="required" placeholder="path Documents"/>
                                                                </div>
                                                            </div>   
                                --%>                                   
                                <%--                                  <div class="form-group">
                                                                    <div class="form-field">
                                                                        <springform:input path="requiredDocumentsUploaded.status" id="statusDocuments" type="text" class="form-control validate" required="required" placeholder="status Documents"/>
                                                                    </div>
                                                                </div>                                    --%>

                                <%--                                  
                                                                <div class="form-group">
                                                                  <div class="form-field">
                                                                      <springform:input path="${newDocument.description}" id="descriptionDocuments" type="text" class="form-control validate" required="required" placeholder="status Documents"/>
                                                                  </div>
                                                              </div>   
                                                                  
                                                                 <div class="form-group">
                                                                  <div class="form-field">
                                                                      <springform:input path="${newDocument.mediaType}" id="pathDocuments" type="text" class="form-control validate" required="required" placeholder="status Documents"/>
                                                                  </div>
                                                              </div>                                   
                                                                  
                                --%>
                            </div> 
                            <div class="col-md-8">
                                <div style="width: 100%"><iframe scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=+(Greece)&amp;t=&amp;z=6&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" width="100%" height="200px" frameborder="0"></iframe></div>

                                <!--        <div id="map-container-google" class="z-depth-2-half map-container-12" style="height: 300px; width:100%">
                                        <iframe src="https://maps.google.com/maps?q=new%20delphi&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                          frameborder="0" style="border:0" allowfullscreen></iframe>
                                      </div>                            -->

                            </div>                            

                        </div>



                        </br>

                        <h4>PROPERTY TYPE</h4>
                        <div class="form-group">



                            <div class="form-field">
                                <div class="form-check form-check-inline col-md-2 col-3">
<%--                                    <input class="form-check-input" type="radio" name="type" id="type1" value="apartment">
                                    <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="roleSelected" path="type" value="Apartment"/>--%>
                                     <springform:radiobutton checked="checked" style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="type1" path="type" value="Apartment"/>
                                    <label class="form-check-label" for="type1">
                                        Apartment
                                    </label>
                                </div>
                                <div class="form-check form-check-inline col-md-2 col-3">
<!--                                    <input class="form-check-input" type="radio" name="type" id="type2" value="option2">-->
                                    <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="type2" path="type" value="House"/>
                                    <label class="form-check-label" for="type2">
                                        House
                                    </label>
                                </div>
                                <div class="form-check form-check-inline col-md-2 col-3">
<!--                                    <input class="form-check-input" type="radio" name="type" id="type3" value="option3">-->
                                    <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="type3" path="type" value="Villa"/>
                                    <label class="form-check-label" for="type3">
                                        Villa
                                    </label>
                                </div>
                                <div class="form-check form-check-inline col-md-2 col-3">
<!--                                    <input class="form-check-input" type="radio" name="type" id="type4" value="option3">-->
                                        <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="type4" path="type" value="Office"/>
                                    <label class="form-check-label" for="type4">
                                        Office
                                    </label>
                                </div>
                                <div class="form-check form-check-inline col-md-2 col-3">
<!--                                    <input class="form-check-input" type="radio" name="type" id="type5" value="option3">-->
                                      <springform:radiobutton  style="height:15px; border-radius: 50%;  width:50px; vertical-align: medium;" name="type5" path="type" value="Store"/>
                                    <label class="form-check-label" for="type5">
                                        Store
                                    </label>
                                </div>
                            </div>


                        </div>                      

<%--                        </br>
                        <div class="form-group">
                            <label for="price"><h4>FEATURED PRICE</h4></label>
                            <div class="form-field">
                                <label for="price">Price</label>
                                <springform:input path="price" required="required" id="price" type="number" class="form-control validate" placeholder="Your price"/>
                            </div>
                        </div>--%>


                        </br><h4>PROPERTY DETAILS</h4>

                        <div class="row">
                            <div class="col-md align-items-end">
                                <div class="form-group">
                                <div class="form-field">
                                    <label for="price">Price</label>
                                    <springform:input path="price" required="required" id="price" type="number" class="form-control validate" placeholder="Price"/>
                                </div>
                                </div>

                            </div>
                            <div class="col-md align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <label for="area">Area (sq ft)</label>
                                        <springform:input path="area" id="area" type="number" class="form-control validate" placeholder="Area (sq ft)"/>
                                    </div>
                                </div>                              
                            </div>
                            <div class="col-md align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <label for="rooms">Rooms</label>
                                        <springform:input path="rooms" id="rooms" type="number" class="form-control validate" required="required" placeholder="Rooms"/>
                                    </div>
                                </div>  
                            </div>
                            <div class="col-md align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <label for="bathrooms">Bathrooms</label>
                                        <springform:input path="bathrooms" id="bathrooms" type="number" class="form-control validate" placeholder="Bathrooms"/>
                                    </div>
                                </div>
                            </div>                                    
                        </div>

                        </br><h4>PROPERTY FEATURES</h4>
                        <div class="form-field">
                             <div class="form-check form-check-inline col-md-2 col-3">
                         <%--       <springform:checkbox path="features.airconditioning" class="form-check-input" id="feature1" value="1"/>--%>
                        <%--        <springform:input path="newFeatures" class="form-check-input" type="text" value="1"/> --%>
                                <label class="form-check-label" for="feature1">Air conditioning</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                               <springform:checkbox path="${newFeatures.laundry}" class="form-check-input" id="feature2" value="1"/> 
<!--                                <input class="form-check-input" type="checkbox" id="feature2" value="1">-->
                                <label class="form-check-label" for="feature2">Laundry</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature3" value="1">
                                <label class="form-check-label" for="feature3">Refrigerator</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature4" value="1">
                                <label class="form-check-label" for="feature4">Washer</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature5" value="1">
                                <label class="form-check-label" for="feature5">Barbeque</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature6" value="1">
                                <label class="form-check-label" for="feature6">Lawn</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature7" value="1">
                                <label class="form-check-label" for="feature7">Sauna</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature8" value="1">
                                <label class="form-check-label" for="feature8">Dryer</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature9" value="1">
                                <label class="form-check-label" for="feature9">Swimming Pool</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature10" value="1">
                                <label class="form-check-label" for="feature10">Window Coverings</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature11" value="1">
                                <label class="form-check-label" for="feature11">Gym</label>
                            </div>  
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature12" value="1">
                                <label class="form-check-label" for="feature12">Outdoor Shower</label>
                            </div>  
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature13" value="1">
                                <label class="form-check-label" for="feature13">TV Cable</label>
                            </div>  
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature14" value="1">
                                <label class="form-check-label" for="feature14">Tennis</label>
                            </div>
                            <div class="form-check form-check-inline col-md-2 col-3">
                                <input class="form-check-input" type="checkbox" id="feature15" value="1">
                                <label class="form-check-label" for="feature15">Golf</label>
                            </div>                          
                        </div>

                        </br><h4>DESCRIPTION</h4>
                        <div class="row">
                            <div class="col-md align-items-end">
                                <div class="form-group">
                                    <!--                                    <label for="description">Description</label>-->
                                    <!--                                    <div class="icon"><span class="icon-pencil"></span></div>-->
                                    <springform:textarea path="description" name="description" id="description" rows = "5" required="required" class="form-control validate" placeholder="Describe your property"/>
                                </div>                        
                            </div>
                        </div>


                        </br><h4>LIVING ROOM</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <div id="livingRoom" style="width:100%" >
                                    </div>
                                </div>
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url1" style="display:none;width:100%" alt="Your livingRoom">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                <div class="file-field col-md-6">
                                    <div class="row">
                                      
                                            
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Choose a 360 image</span>  
                                            <input type="file" name="filename1" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'livingRoomPanorama', 'livingRoom');"/>                                          
                                        </div>
                                         <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                               <input type="text" class="form-control" placeholder="+ Living room 360" readonly>
                                        </div> 
                                    
                                    </div>
                                    <div class="row">
                                    <label id="livingroom360" class="red">Please upload a 360 image of the living room</label>
                                    </div>
                                </div>
                                
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Choose a non 360 image</span>
<!--                                            <input type="file" name="filenameTypical1" class="custom-file-input" accept="image/*" required onChange="img_pathUrlTypical(this, 'img_url1');" oninvalid="this.setCustomValidity('The file image for the living room cannot be empty.')"/>-->
                                                <input type="file" name="filenameTypical1" class="custom-file-input" accept="image/*" required onChange="img_pathUrlTypical(this, 'img_url1'); $('#livingroomNon360').hide();" oninvalid="$('#livingroomNon360').show();"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Living room" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="livingroomNon360" class="red">Please upload a non 360 image of the living room</label>
                                    </div>
                                </div>  
                            </div>
                        </div>







                        </br><h4>KITCHEN</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <div id="kitchen" style="width:100%" >
                                    </div>
                                </div>
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url2" style="display:none;width:100%" alt="Your kitchen">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Choose a 360 image</span>
                                            <input type="file" name="filename2" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'kitchenPanorama', 'kitchen');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Kitchen 360" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="kitchen360" class="red">Please upload a 360 image of the kitchen</label>
                                    </div>
                                </div>
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Choose a non 360 image</span>
                                            <input type="file" name="filenameTypical2" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url2');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Kitchen" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="kitchenNon360" class="red">Please upload a non 360 image of the kitchen</label>
                                    </div>
                                </div>  
                            </div>
                        </div>



                        </br><h4>ROOM</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <div id="bedroom" style="width:100%" >
                                    </div>
                                </div>
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url3" style="display:none;width:100%" alt="Your room">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Choose a 360 image</span>
                                            <input type="file" name="filename3" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'bedroomPanorama', 'bedroom');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Room 360" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="bedroom360" class="red">Please upload a 360 image of the bedroom</label>
                                    </div>
                                </div>
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Choose a non 360 image</span>
                                            <input type="file" name="filenameTypical3" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url3');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Room" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="bedroomNon360" class="red">Please upload a non 360 image of the bedroom</label>
                                    </div>
                                </div>  
                            </div>
                        </div>



                        </br><h4>BATHROOM</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <div id="bathroom" style="width:100%" >
                                    </div>
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
                                            <span>Choose a 360 image</span>
                                            <input type="file" name="filename4" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'bathroomPanorama', 'bathroom');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Bathroom 360" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="bathroom360" class="red">Please upload a 360 image of the bathroom</label>
                                    </div>
                                </div>
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Choose a non 360 image</span>
                                            <input type="file" name="filenameTypical4" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url4');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Bathroom" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="bathroomNon360" class="red">Please upload a non 360 image of the bathroom</label>
                                    </div>
                                </div> 
                                
                            </div>
                        </div>



                        </br><h4>OUTDOOR</h4>
                        <div class="form-group col-12">                      
                            <div class="row">
                                <div class="column">
                                    <div id="other" style="width:100%" >
                                    </div>
                                </div>
                                <div class="column">
                                    <img class="img-fluid" src="" id="img_url5" style="display:none;width:100%" alt="Outdoor">
                                </div>
                            </div>  
                        </div>
                        <div class="form-group col-12 ">
                            <div class="row">
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-dark btn-sm float-left col-6">
                                            <span>Choose a 360 image</span>
                                            <input type="file" name="filename5" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'otherPanorama', 'other');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Outdoor 360" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="outdoor360" class="red">Please upload a 360 image of the outdoor</label>
                                    </div>
                                </div>
                                <div class="file-field col-md-6">
                                    <div class="row">
                                        <div class="btn btn-primary btn-sm float-left col-6">
                                            <span>Choose a non 360 image</span>
                                            <input type="file" name="filenameTypical5" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url5');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Outdoor" readonly>
                                        </div>    
                                    </div>
                                    <div class="row">
                                    <label id="outdoorNon360" class="red">Please upload a non 360 image of the outdoor</label>
                                    </div>
                                </div>  
                            </div>
                        </div>                  



                        </br><h4>CERTIFICATE OF OWNERSHIP</h4>
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
                                            <span>Choose the Certificate</span>
                                            <input type="file" name="filenameTypical6" class="custom-file-input" accept="image/*" onChange="img_pathUrlTypical(this, 'img_url6');"/>
                                        </div>
                                        <div class="form-field" style="width:50%">
<!--                                            <div class="icon"><span class="icon-plus"></span></div>-->
                                            <input type="text" class="form-control" placeholder="+ Certificate Scan" readonly>
                                        </div>    
                                    </div>
                                </div>  
                            </div>
                            <div class="row">
                            <label id="certificateDescription">The certificate of ownership must be a scan of E9</label>
                            </div>
                            <div class="row">
                            <label id="certificateNon360" class="red">Please upload a certificate of ownership</label>
                            </div>
                        </div>                  






                        <%--                    <springform:input path="status" id="status" type="text" class="form-control validate" required="required" placeholder="Status"/>      --%>
                        <springform:input path="ownerId" id="ownerId" type="hidden" class="form-control validate" required="required" value="${sessionScope.user.userId}" placeholder="OwnerId"/> 
                        <%--                        <springform:input path="${newDocuments.requiredDocumentsId}" id="requiredDocumentsUploaded" type="text" class="form-control validate" required="required" placeholder="DocumentId"/> 
                                              <c:set var="now" value="<%=new java.util.Date()%>" />
                                 
                                             <p>Formatted Date (3): <fmt:formatDate type="both" value="${now}"/></p>
                                             
                        <%--   <springform:input path="datetimeUploaded" id="datetimeUploaded" type="text" class="form-control validate" required="required" value="${now}" placeholder="Datetime Updated"/> 
                         <springform:input path="datetimeUpdated" id="datetimeUpdated" type="text" class="form-control validate" required="required" value="${now}" placeholder="DatimeUploaded"/> 
                        --%>



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

