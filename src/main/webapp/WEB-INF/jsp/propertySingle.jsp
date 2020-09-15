<%-- 
    Document   : propertySingle
    Created on : Aug 26, 2020, 9:46:48 PM
    Author     : alex
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="head.jsp" %>

<script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>

<script src="dist/aframe-no-click-look-controls.min.js"></script>


<style>

    .img-fluid.first{
        max-width: 100%;
        height: 608px;
    }

    img.img-fluid.mb-2.next.wow.fadeIn.z-depth-1-half{
        max-width: 100%;
        height: 300px;   
    }

    .ftco-section {
        padding: 4em 0;
        position: relative;
    }

    ul {
        list-style-type: none;
    }



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


        opacity: 0.6;

        height: 60px;

        width:80px;

        border-radius: 10%;

        border-style: solid;
        border-color: #202020;
        
        margin-top: -295px;
        margin-left: 5px;       

    }  



    .myEmbeddedScene {

        position: relative;

        top: 0;

        left: 0;

    }


/*    .a-enter-vr-button{

        display:none;



    } */



.ribbon-wrapper {
    width: 85px;
    height: 88px;
    overflow: hidden;
    position: absolute;
    top: -3px;
    right: -3px
}
.ribbon {
    font-size: 12px;
    color: #FFF;
    text-transform: uppercase;
    font-family: 'Montserrat Bold', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    letter-spacing: .05em;
    line-height: 15px;
    text-align: center;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, .4);
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    transform: rotate(45deg);
    position: relative;
    padding: 7px 0;
    right: -11px;
    top: 10px;
    width: 100px;
    height: 28px;
    -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, .3);
    box-shadow: 0 0 3px rgba(0, 0, 0, .3);
    background-color: #dedede;
    background-image: -webkit-linear-gradient(top, #ffffff 45%, #dedede 100%);
    background-image: -o-linear-gradient(top, #ffffff 45%, #dedede 100%);
    background-image: linear-gradient(to bottom, #ffffff 45%, #dedede 100%);
    background-repeat: repeat-x;
    filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffdedede', GradientType=0)
}

.ribbon:before,
.ribbon:after {
    content: "";
    border-top: 3px solid #9e9e9e;
    border-left: 3px solid transparent;
    border-right: 3px solid transparent;
    position: absolute;
    bottom: -3px
}

.ribbon:before {
    left: 0
}

.ribbon:after {
    right: 0
}    




</style>

<!--   <div class="hero-wrap" style="background-image: url('oia.webp');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="blog.html">Blog</a></span> <span>Blog</span></p>
                <h1 class="mb-3 bread">Property Details</h1>
            </div>
        </div>
    </div>
</div>-->


<%--  <div class="container my-4">


${newProperty.description}
</br>
${newProperty.mediaCollection[0]}
</br>
${newProperty.mediaCollection[0].path}
</br>
--%>
<!--Grid row-->
<div class="row pt-3">

    <!--Grid column-->
    <div class="col-lg-6 col-md-12">

        <img src="/images/${newProperty.mediaCollection[0].path}" class="img-fluid first" alt="" width="100%">

    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-3 col-md-6 mb-2 p-0">


        
        <img src="/images/${newProperty.mediaCollection[6].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.4s">

        <img src="/images/${newProperty.mediaCollection[4].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.1s">       

    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-3 col-md-6 mb-2">
<!--        <div class="ribbon" style="position: absolute;">BOOKED</div>-->
        <img src="/images/${newProperty.mediaCollection[8].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.2s">

        <img src="/images/${newProperty.mediaCollection[2].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.5s">

    </div>
    <!--Grid column-->

</div>
<!--Grid row-->

<!--  </div>-->


<section class="ftco-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <!--          		<div class="col-md-12 ftco-animate">
                                                    <div class="single-slider owl-carousel">
                                                            <div class="item">
                                                                    <div class="properties-img" style="background-image: url(properties-1.jpg);"></div>
                                                            </div>
                                                            <div class="item">
                                                                    <div class="properties-img" style="background-image: url(properties-2.jpg);"></div>
                                                            </div>
                                                            <div class="item">
                                                                    <div class="properties-img" style="background-image: url(properties-3.jpg);"></div>
                                                            </div>
                                                    </div>
                                            </div>-->
                    
                    <div class="col-md-12 Properties-single mt-4 mb-5 ftco-animate">
                        <h2>${newProperty.title}</h2>
                        <p class="rate mb-4">
                            <span class="loc"><a href="#"><i class="icon-map"></i> ${newProperty.cityId.name} ,Greece</a></span>
                        </p>

                        <div class="d-md-flex mt-5 mb-5">
                            <ul>
                                <li><span>Property Type: </span> ${newProperty.type}</li>
                                <li><span>Bed Rooms: </span> ${newProperty.rooms} <i class="flaticon-bed"></i></li>
                                <li><span>Bath Rooms: </span> ${newProperty.bathrooms} <i class="flaticon-bathtub"></i></li>
                                <!--	    							<li><span>2 Garage: </span> 4</li>-->
                            </ul>
                            <ul class="ml-md-5">
                                <li><span>Price: </span> ${newProperty.price}&euro;</li>
                                <li><span>Area (sq ft): </span> ${newProperty.area} <i class="flaticon-selection"></i></li>

                                <!--	    							<li><span>Stories: </span> 1</li>
                                                                                                <li><span>Roofing: </span> New</li>-->
                            </ul>
                        </div>
                        <p>${newProperty.description}</p>  
                        <div class="d-md-flex mt-5 mb-5">                                              
                            <ul>
                                <li><c:choose><c:when test="${newFeatures.airconditioning > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Air conditioning</span></li>
                                <li><c:choose><c:when test="${newFeatures.lawn > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose><span>Lawn</span></li>
                                <li><c:choose><c:when test="${newFeatures.gym > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Gym</span></li>
                                <li><c:choose><c:when test="${newFeatures.outdoorshower > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Outdoor Shower</span></li>
                                <li><c:choose><c:when test="${newFeatures.tvcable > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>TV Cable</span></li>

                            </ul>                                                  
                            <ul class="ml-md-5">
                                <li> <c:choose><c:when test="${newFeatures.swimmingpool > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose><span>Swimming Pool</span></li>
                                <li> <c:choose><c:when test="${newFeatures.tennis > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose><span>Tennis</span></li>				
                                <li><c:choose><c:when test="${newFeatures.windowcoverings > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Window Coverings</span></li>
                                <li><c:choose><c:when test="${newFeatures.golf > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Golf</span></li> 
                                <li><c:choose><c:when test="${newFeatures.barbeque > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Barbeque</span></li> 
                            </ul> 
                            <ul class="ml-md-5">
                                <li><c:choose><c:when test="${newFeatures.washer > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Washer</span></li>				
                                <li><c:choose><c:when test="${newFeatures.dryer > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Dryer</span></li>		                                                           
                                <li><c:choose><c:when test="${newFeatures.laundry > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Laundry</span></li>
                                <li><c:choose><c:when test="${newFeatures.sauna > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Sauna</span></li>				
                                <li><c:choose><c:when test="${newFeatures.refrigerator > 0 }"><i class="icon-check"></i></c:when><c:otherwise> <i class="icon-close"></i> </c:otherwise> </c:choose> <span>Refrigerator</span></li>

                            </ul>                                                    
                        </div>                         

                        <!--    						<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>-->
                    </div>
                    <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
                        <h3 class="mb-4">Take a 360 Tour</h3>
                        <!--          			<div class="block-16">
                                                      <figure>
                                                        <img src="properties-6.jpg" alt="Image placeholder" class="img-fluid">
                                                        <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                                      </figure>
                                                    </div>-->
                        <div class="block-16">
                            <div id="myEmbeddedScene">
                                
                                <a-scene embedded>

                                    <img id="livingRoomPanorama" src="/images/${newProperty.mediaCollection[1].path}" width="500" height="600"/>

                                    <a-sky src="#livingRoomPanorama"  rotation="0 -90 0"></a-sky>

                                </a-scene>
                                <img class="image2" src="360-small.jpg" />
                            </div>
                        </div>
                        
                        </br>
                        
                         <div class="block-16">
                            <div id="myEmbeddedScene">
                                <a-scene embedded>

                                    <img id="bedroomPanorama" src="/images/${newProperty.mediaCollection[3].path}" width="500" height="600"/>

                                    <a-sky src="#bedroomPanorama"  rotation="0 -90 0"></a-sky>

                                </a-scene>
                                <img class="image2" src="360-small.jpg" />
                            </div>
                        </div>
                         </br>
                         <div class="block-16">
                            <div id="myEmbeddedScene">
                                <a-scene embedded>

                                    <img id="bathroomPanorama" src="/images/${newProperty.mediaCollection[5].path}" width="500" height="600"/>

                                    <a-sky src="#bathroomPanorama"  rotation="0 -90 0"></a-sky>

                                </a-scene>
                                <img class="image2" src="360-small.jpg" />
                            </div>
                        </div>                       
                         </br>
                         <div class="block-16">
                            <div id="myEmbeddedScene">
                                <a-scene embedded>

                                    <img id="kitchenPanorama" src="/images/${newProperty.mediaCollection[7].path}" width="500" height="600"/>

                                    <a-sky src="#kitchenPanorama"  rotation="0 -90 0"></a-sky>

                                </a-scene>
                                <img class="image2" src="360-small.jpg" />
                            </div>
                        </div>                       
                          </br>
                        <div class="block-16">
                            <div id="myEmbeddedScene">
                                <a-scene embedded>

                                    <img id="otherPanorama" src="/images/${newProperty.mediaCollection[9].path}" width="500" height="600"/>

                                    <a-sky src="#otherPanorama"  rotation="0 -90 0"></a-sky>

                                </a-scene>
                                <img class="image2" src="360-small.jpg" />
                            </div>
                        </div>                        
                        
                    </div>

<!--                    <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4">Leave a Comment</h4>

                        <div class="pt-5 mt-5">
                            <h3 class="mb-5">6 Comments</h3>
                            <ul class="comment-list">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="person_1.jpg" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="person_1.jpg" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                    </div>

                                    <ul class="children">
                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img src="person_1.jpg" alt="Image placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>John Doe</h3>
                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                <p><a href="#" class="reply">Reply</a></p>
                                            </div>


                                            <ul class="children">
                                                <li class="comment">
                                                    <div class="vcard bio">
                                                        <img src="person_1.jpg" alt="Image placeholder">
                                                    </div>
                                                    <div class="comment-body">
                                                        <h3>John Doe</h3>
                                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                        <p><a href="#" class="reply">Reply</a></p>
                                                    </div>

                                                    <ul class="children">
                                                        <li class="comment">
                                                            <div class="vcard bio">
                                                                <img src="person_1.jpg" alt="Image placeholder">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h3>John Doe</h3>
                                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                                <p><a href="#" class="reply">Reply</a></p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="person_1.jpg" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                    </div>
                                </li>
                            </ul>
                           

                            <div class="comment-form-wrap pt-5">
                                <h3 class="mb-5">Leave a comment</h3>
                                <form action="#" class="p-5 bg-light">

                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                                    </div>

                                </form>
                            </div>
                        </div>               
                    </div>-->
                                    
                    <div class="col-md-12 properties-single ftco-animate mb-5 mt-5">
                        <h4 class="mb-4">Recent Properties</h4>
                        <div class="row">
                            
                            
       <c:choose>
        <c:when test="${recent.size() > 0 }">
            <c:forEach var="item" items="${recent}">                          
                            
                            
                            <div class="col-md-6 ftco-animate">
                                <div class="properties">
                                    <a href="/getProperty?property=${item.propertyId}" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/${item.mediaCollection[0].path});">
                                        <div class="icon d-flex justify-content-center align-items-center">
                                            <span class="icon-search2"></span>
                                        </div>
                                    </a>
                                    <div class="text p-3">
                                        <span class="status sale">Sale</span>
                                        <div class="d-flex">
                                            <div class="one">
                                                <h3><a href="/getProperty?property=${item.propertyId}">${item.cityId.name}</a></h3>
                                                <p>${item.type}</p>
                                            </div>
                                            <div class="two">
                                                <span class="price">${item.price} &euro;</span>
                                            </div>
                                        </div>
                                        <p>${item.title}</p>
                                        <hr>
                                        <p class="bottom-area d-flex">
                                            <span><i class="flaticon-selection"></i> ${item.area} sqft</span>
                                            <span class="ml-auto"><i class="flaticon-bathtub"></i> ${item.bathrooms}</span>
                                            <span><i class="flaticon-bed"></i> ${item.rooms}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                
           </c:forEach>
        </c:when>
        <c:otherwise>
            <div class="container">
                <center><h4> No Properties available</h4></center>
            </div>
        </c:otherwise>
    </c:choose>                  

            
                            
<!--                            
     <c:choose>
        <c:when test="${data.size() > 0 }">
            <c:forEach var="item" items="${data}">
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
                                    
    					<a href="/getProperty?property=${item.propertyId}" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/${item.mediaCollection[0].path}">
    						
                                            <div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
                                        <div class="ribbon" style="position: absolute;">BOOKED</div>
    					<div class="text p-3">
    						<span class="status sale">Sale</span>
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="/getProperty?property=${item.propertyId}">${item.cityId.name}</a></h3>
		    						<p>${item.type}</p>
	    						</div>
	    						<div class="two">
	    							<span class="price">${item.price} &euro;</span>
    							</div>
    						</div>
    						<p>${item.title}</p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="flaticon-selection"></i> ${item.area} sqft</span>
    							<span class="ml-auto"><i class="flaticon-bathtub"></i> ${item.bathrooms}</span>
    							<span><i class="flaticon-bed"></i> ${item.rooms}</span>
    						</p>
    					</div>
    				</div>
    			</div>

            </c:forEach>
        </c:when>
        <c:otherwise>
            <div class="container">
                <center><h4> No Properties available</h4></center>
            </div>
        </c:otherwise>
    </c:choose>                           -->
                            
                            
                            
                            
                            
                            
                        </div>
                    </div>

                </div>
            </div> <!-- .col-md-8 -->
            <div class="col-lg-4 sidebar ftco-animate">
                <!--            <div class="sidebar-box">
                              <form action="#" class="search-form">
                                <div class="form-group">
                                  <span class="icon fa fa-search"></span>
                                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                                </div>
                              </form>
                            </div>-->
                <!--            <div class="sidebar-box ftco-animate">
                              <div class="categories">
                                <h3>TOP AGENTS</h3>
                                <li><a href="#">Properties <span>(12)</span></a></li>
                                <li><a href="#">Home <span>(22)</span></a></li>
                                <li><a href="#">House <span>(37)</span></a></li>
                                <li><a href="#">Villa <span>(42)</span></a></li>
                                <li><a href="#">Apartment <span>(14)</span></a></li>
                                <li><a href="#">Condominium <span>(140)</span></a></li>
                              </div>
                            </div>-->
                       <c:choose>
                            <c:when test="${sessionScope.user.roleId.roleId == 2 }"> 
                <div class="sidebar-box ftco-animate mt-3">

                             <a href="/preAddBuyer?property=${newProperty.propertyId}"><input type="button" value="Book the Property" class="btn py-3 px-4 btn-primary rounded w-100"></a>

<!--                    <a href="/getLawyers"><input type="button" value="Book the Lawyer" class="btn py-3 px-4 btn-primary rounded w-100"></a>-->
<!--                    <h3>TOP AGENTS</h3>
                    <div class="block-21 mb-4 d-flex border border-dark">
                        <a class="blog-img mr-4" style="background-image: url(image_1.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">MARY AGENT</a></h3>
                            <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Lawyer</a></div>
                                <div><a href="#"><span class="icon-star"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex border border-dark">
                        <a class="blog-img mr-4" style="background-image: url(image_2.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">MARY AGENT</a></h3>
                            <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Lawyer</a></div>
                                <div><a href="#"><span class="icon-star"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex border border-dark">
                        <a class="blog-img mr-4" style="background-image: url(image_3.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">MARY AGENT</a></h3>
                            <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Lawyer</a></div>
                                <div><a href="#"><span class="icon-star"></span> 19</a></div>
                            </div>
                        </div>
                    </div>-->
                </div>
                    </c:when>
                    </c:choose>
                
                
                
                <div class="sidebar-box ftco-animate">
                    <h3>Tag Cloud</h3>
                    <div class="tagcloud">
                        <a href="#" class="tag-cloud-link">blue</a>
                        <a href="#" class="tag-cloud-link">and</a>
                        <a href="#" class="tag-cloud-link">white</a>
                        <a href="#" class="tag-cloud-link">sea</a>
                        <a href="#" class="tag-cloud-link">sun</a>
                        <a href="#" class="tag-cloud-link">fun</a>
                        <a href="#" class="tag-cloud-link">golden</a>
                        <a href="#" class="tag-cloud-link">visa</a>
                    </div>
                </div>

                <div class="sidebar-box ftco-animate">
                    <h3>Paragraph</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                </div>
            </div>
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
    $(".img-fluid").addClass("wow fadeIn z-depth-1-half");

    new WOW().init();

</script>

