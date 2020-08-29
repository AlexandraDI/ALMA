<%--

    Document   : welcome

    Created on : Aug 21, 2020, 1:49:48 AM

    Author     : alex

--%>

 

<%@ include file="headWithoutLoginRegister.jsp" %> 

 

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

        top: 40px;

        left: 7px;

        opacity: 0.6;

        height: 60px;

        width:80px;

        border-radius: 10%;

        border-style: solid;

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
    

    .search-property .form-group .form-control::-webkit-input-placeholder {
      /* Chrome/Opera/Safari */
      color: gray !important; }
    .search-property .form-group .form-control::-moz-placeholder {
      /* Firefox 19+ */
      color: gray !important; }
    .search-property .form-group .form-control:-ms-input-placeholder {
      /* IE 10+ */
      color: gray !important; }
    .search-property .form-group .form-control:-moz-placeholder {
      /* Firefox 18- */
      color: gray !important; }
    
    
    
.btn.btn-primary.btn-sm.float-left.col-3 {
/*    background: #252a2b;*/
    background: #3b4244;
    border: 1px solid #3b4244;
    height: 42px !important;
}  

.btn.btn-primary.btn-sm.float-left.col-3:hover {
    color: #26baee;
    background: white;
    border: 1px solid #26baee;
    height: 42px !important;
}
.btn.btn-primary.btn-sm.float-left.col-4 {
/*    background: #252a2b;*/
    background: #3b4244;
    border: 1px solid #3b4244;
    height: 42px !important;
}  

.btn.btn-primary.btn-sm.float-left.col-4:hover {
    color: #26baee;
    background: white;
    border: 1px solid #26baee;
    height: 42px !important;
}
.btn.btn-primary.btn-sm.float-left.col-5 {
/*    background: #252a2b;*/
    background: #3b4244;
    border: 1px solid #3b4244;
}  

.btn.btn-primary.btn-sm.float-left.col-5:hover {
    color: #26baee;
    background: white;
    border: 1px solid #26baee;
    height: 42px !important;
}

.btn.btn-primary.btn-sm.float-left.col-6 {
/*    background: #252a2b;*/
    background: #3b4244;
    border: 1px solid #3b4244;
}  

.btn.btn-primary.btn-sm.float-left.col-6:hover {
    color: #26baee;
    background: white;
    border: 1px solid #26baee;
    height: 42px !important;
}
.btn.btn-primary.btn-sm.float-left.col-7 {
/*    background: #252a2b;*/
    background: #3b4244;
    border: 1px solid #3b4244;
    height: 42px !important;
}  

.btn.btn-primary.btn-sm.float-left.col-7:hover {
    color: #26baee;
    background: white;
    border: 1px solid #26baee;
    height: 42px !important;
} 

.btn.py-3.px-4.btn-primary{
    
    border-radius: 4%;
}



</style>

 

 

 

 

<%-- <%@ include file="carousel.jsp" %> --%>

 

<div class="hero-wrap" style="background-image: url('oia.webp');">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text align-items-center justify-content-center">

            <div class="col-md-9 ftco-animate text-center">

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="blog.html">Blog</a></span> <span>Blog</span></p>

                <h1 class="mb-3 bread">Add property</h1>

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

            <div class="ftco-animate col-lg-8 offset-lg-2 ">

                <!--              <div class="comment-form-wrap pt-5">-->

                <!--<h3 class="mb-5"><center>Fill the information</center></h3>-->
                
                <div class="add">

                <form action="/propertyDetail" class="p-5 bg-light shadow-lg search-property  border border-dark">

 

 

                    <div class="row ">

 

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Location</label>

                                <div class="form-field">

                                    <div class="icon"><span class="icon-pencil"></span></div>

                                    <input type="text" class="form-control" placeholder="City/Locality Name">

                                </div>

                            </div>

                        </div>

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Property Type</label>

                                <div class="form-field">

                                    <div class="select-wrap">

                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>

                                        <select name="" id="" class="form-control">

                                            <option value="">Type</option>

                                            <option value="">Commercial</option>

                                            <option value="">- Office</option>

                                            <option value="">Residential</option>

                                            <option value="">Villa</option>

                                            <option value="">Condominium</option>

                                            <option value="">Apartment</option>

                                        </select>

                                    </div>

                                </div>

                            </div>

                        </div>

 

 

                    </div>

 

                    <div class="row">

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Min Beds</label>

                                <div class="form-field">

                                    <div class="select-wrap">

                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>

                                        <select name="" id="" class="form-control">

                                            <option value="">1</option>

                                            <option value="">2</option>

                                            <option value="">3</option>

                                            <option value="">4</option>

                                            <option value="">5</option>

                                        </select>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Min Bathroom</label>

                                <div class="form-field">

                                    <div class="select-wrap">

                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>

                                        <select name="" id="" class="form-control">

                                            <option value="">1</option>

                                            <option value="">2</option>

                                            <option value="">3</option>

                                            <option value="">4</option>

                                            <option value="">5</option>

                                        </select>

                                    </div>

                                </div>

                            </div>

                        </div>

 

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Min Price</label>

                                <div class="form-field">

                                    <div class="select-wrap">

                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>

                                        <select name="" id="" class="form-control">

                                            <option value="">Min Price</option>

                                            <option value="">$5,000</option>

                                            <option value="">$10,000</option>

                                            <option value="">$50,000</option>

                                            <option value="">$100,000</option>

                                            <option value="">$200,000</option>

                                            <option value="">$300,000</option>

                                            <option value="">$400,000</option>

                                            <option value="">$500,000</option>

                                            <option value="">$600,000</option>

                                            <option value="">$700,000</option>

                                            <option value="">$800,000</option>

                                            <option value="">$900,000</option>

                                            <option value="">$1,000,000</option>

                                           <option value="">$2,000,000</option>

                                        </select>

                                    </div>

                                </div>

                            </div>
                                                      

                        </div>
                        
                        
                    

                        <div class="col-md align-items-end">

                            <div class="form-group">

                                <label for="#">Area <span>(sq ft)</span></label>

                                <div class="form-field">

                                    <div class="icon"><span class="icon-pencil"></span></div>

                                    <input type="text" class="form-control" placeholder="Max Area">

                                </div>

                            </div>

                        </div>

 

                    </div>

 
                    <div class="row">
                         <div class="col-md align-items-end">
                      <div class="form-group">

                        <label for="description">Description</label>

                        <div class="icon"><span class="icon-pencil"></span></div>

                        <textarea name="" id="description" cols="30" rows="4" class="form-control" placeholder="Describe some things about your property"></textarea>

                    </div>                        
                    </div>
                    </div>
 

                    <div class="form-group">

 

                        <label for="filename1">Living Room</label>

                        <div id="livingRoom">

                        </div>     

                    </div>

                    <!--            <div class="custom-file d-block">

                                    <input type="file" name="avatarFilename" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'livingRoomPanorama', 'livingRoom');"/> 

                                    <label class="custom-file-label" for="customFile">Upload a 360 image of your living room</label>

                                </div>            -->

 

 

                    <!--<form class="md-form">-->

 

                    <div class="form-group col-12">

                        <div class="file-field">

 

                            <div class="row">

                                <div class="btn btn-primary btn-sm float-left col-3">

                                    <span>Choose a 360 image</span>

                                    <input type="file" name="filename1" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'livingRoomPanorama', 'livingRoom');"/>

                                </div>

 

                                <div class="form-field" style="width:75%">

                                    <div class="icon"><span class="icon-plus"></span></div>

                                    <input type="text" class="form-control" placeholder="Living room" >

                                </div>     

                            </div>

                            <!--    <div class="file-path-wrapper">

                                  <input class="file-path validate" type="text" placeholder="Upload a 360 image">

                                </div>-->

                        </div>

                    </div>

 

                    <!--</form>                 -->

 

 

 

                    <div class="form-group">

                        <label for="filename2">Kitchen</label>

                        <div id="kitchen">

                        </div>     

                    </div>

                    <div class="form-group col-12">

<!--                        <div class="file-field">-->
                            
                            

                            <div class="row">

                                <div class="btn btn-primary btn-sm float-left col-3">

                                    <span>Choose a 360 image</span>

                                    <input type="file" name="filename2" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'kitchenPanorama', 'kitchen');"/>

                                </div>

                                <div class="form-field" style="width:75%">

                                    <div class="icon"><span class="icon-plus"></span></div>

                                    <input type="text" class="form-control" placeholder="Kitchen" >

                                </div>     

                            </div>
                          
<!--
                        </div>-->

                    </div>

                   

                    

                    <div class="form-group">

                        <label for="filename3">Bedroom</label>

                        <div id="bedroom">

                        </div>     

                    </div>

                    <div class="form-group col-12">

                        <div class="file-field">

                            <div class="row">

                                <div class="btn btn-primary btn-sm float-left col-3">

                                    <span>Choose a 360 image</span>

                                    <input type="file" name="filename3" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'bedroomPanorama', 'bedroom');"/>

                                </div>

                                <div class="form-field" style="width:75%">

                                    <div class="icon"><span class="icon-plus"></span></div>

                                    <input type="text" class="form-control" placeholder="Bedroom" >

                                </div>     

                            </div>

                        </div>

                    </div>

                    

                    

                     <div class="form-group">

                        <label for="filename4">Bathroom</label>

                        <div id="bathroom">

                        </div>     

                    </div>

                    <div class="form-group col-12">

                        <div class="file-field">

                            <div class="row">

                                <div class="btn btn-primary btn-sm float-left col-3">

                                    <span>Choose a 360 image</span>

                                    <input type="file" name="filename4" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'bathroomPanorama', 'bathroom');"/>

                                </div>

                                <div class="form-field" style="width:75%">

                                    <div class="icon"><span class="icon-plus"></span></div>

                                    <input type="text" class="form-control" placeholder="Bathroom" >

                                </div>     

                            </div>

                        </div>

                    </div> 

                    

                    

                      <div class="form-group">

                        <label for="filename5">Other</label>

                        <div id="other">

                        </div>     

                    </div>

                    <div class="form-group col-12">

                        <div class="file-field">

                            <div class="row">

                                <div class="btn btn-primary btn-sm float-left col-3">

                                    <span>Choose a 360 image</span>

                                    <input type="file" name="filename5" class="custom-file-input" accept="image/*" onChange="img_pathUrl(this, 'otherPanorama', 'other');"/>

                                </div>

                                <div class="form-field" style="width:75%">

                                    <div class="icon"><span class="icon-plus"></span></div>

                                    <input type="text" class="form-control" placeholder="Other" >

                                </div>     

                            </div>

                        </div>

                    </div>                   

                    

 

 

 

 



 

                    <div class="modal-footer d-flex justify-content-center">

                        <button type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">Submit</button>

                    </div>

 

                </form>

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

 

 

</script>