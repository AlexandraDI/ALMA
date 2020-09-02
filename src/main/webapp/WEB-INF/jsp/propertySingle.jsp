<%-- 
    Document   : propertySingle
    Created on : Aug 26, 2020, 9:46:48 PM
    Author     : alex
--%>

   <%@ include file="headWithoutLoginRegister.jsp" %>
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


<!--  <div class="container my-4">-->


    <!--Grid row-->
    <div class="row pt-3">

      <!--Grid column-->
      <div class="col-lg-6 col-md-12">

        <img src="oia.webp" class="img-fluid first" alt="" width="100%">

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-2 p-0">



        <img src="oia1.webp" class="img-fluid mb-2 next" alt="" width="100%"
          data-wow-delay="0.4s">

         <img src="properties-1.jpg" class="img-fluid mb-2 next" alt="" width="100%"
          data-wow-delay="0.1s">       
        
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-2">

        <img src="properties-2.jpg" class="img-fluid mb-2 next" alt="" width="100%"
          data-wow-delay="0.2s">

        <img src="properties-3.jpg" class="img-fluid mb-2 next" alt="" width="100%"
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
          			<h2>OIA SANTORINI</h2>
          			<p class="rate mb-4">
          				<span class="loc"><a href="#"><i class="icon-map"></i> ${newProperty.cityId.name}</a></span>
    						</p>
    						
    						<div class="d-md-flex mt-5 mb-5">
    							<ul>
	    							<li><span>Property Type:: </span> 2018</li>
	    							<li><span>Bed Rooms: </span> ${newProperty.rooms}</li>
	    							<li><span>Bath Rooms: </span> 4</li>
<!--	    							<li><span>2 Garage: </span> 4</li>-->
	    						</ul>
	    						<ul class="ml-md-5">
	    							<li><span>Price: </span> ${newProperty.price}</li>
                                                                <li><span>Area (sq ft): </span>  SQ FT</li>
	    							
<!--	    							<li><span>Stories: </span> 1</li>
	    							<li><span>Roofing: </span> New</li>-->
	    						</ul>
    						</div>
                                                 <p>${newProperty.description}</p>  
                        			<div class="d-md-flex mt-5 mb-5">                                                    
    							<ul>
	    							<li><i class="icon-check"></i> <span>Air conditioning</span></li>
	    							<li><i class="icon-check"></i> <span>Lawn</span></li>
	    							<li><i class="icon-check"></i> <span>Gym</span></li>
                                                                <li><i class="icon-check"></i> <span>Outdoor Shower</span></li>
	    							<li><i class="icon-check"></i> <span>TV Cable</span></li>
                                                               
	    						</ul>                                                  
	    						<ul class="ml-md-5">
 	    							<li><i class="icon-check"></i> <span>Swimming Pool</span></li>
                                                                <li><i class="icon-check"></i> <span>Tennis</span></li>				
	    							<li><i class="icon-check"></i> <span>Window Coverings</span></li>
	    							<li><i class="icon-check"></i> <span>Golf</span></li> 
                                                                <li><i class="icon-check"></i> <span>Barbeque</span></li> 
	    						</ul> 
 	    						<ul class="ml-md-5">
                                                                 <li><i class="icon-check"></i> <span>Washer</span></li>				
	    							<li><i class="icon-check"></i> <span>Stories</span></li>		                                                           
	    							<li><i class="icon-check"></i> <span>Laundry</span></li>
                                                                <li><i class="icon-check"></i> <span>Sauna</span></li>				
	    							<li><i class="icon-check"></i> <span>Refrigerator</span></li>
                                                               
	    						</ul>                                                    
    						</div>                         
                                                 
<!--    						<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>-->
          		</div>
          		<div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
          			<h3 class="mb-4">Take A 360 Tour</h3>
          			<div class="block-16">
		              <figure>
		                <img src="properties-6.jpg" alt="Image placeholder" class="img-fluid">
<!--		                <a href="https://vimeo.com/45830194" class="play-button popup-vimeo"><span class="icon-play"></span></a>-->
		              </figure>
		            </div>
          		</div>

          		<div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
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
              <!-- END comment-list -->
              
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
                                
   
          		</div>
          		<div class="col-md-12 properties-single ftco-animate mb-5 mt-5">
          			<h4 class="mb-4">Related Properties</h4>
          			<div class="row">
          				<div class="col-md-6 ftco-animate">
				    				<div class="properties">
				    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-1.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3">
				    						<span class="status sale">Sale</span>
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="property-single.html">North Parchmore Street</a></h3>
						    						<p>Apartment</p>
					    						</div>
					    						<div class="two">
					    							<span class="price">$20,000</span>
				    							</div>
				    						</div>
				    						<p>Far far away, behind the word mountains, far from the countries</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="flaticon-selection"></i> 250sqft</span>
				    							<span class="ml-auto"><i class="flaticon-bathtub"></i> 3</span>
				    							<span><i class="flaticon-bed"></i> 4</span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-md-6 ftco-animate">
				    				<div class="properties">
				    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-2.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3">
				    						<span class="status sale">Sale</span>
				    						<div class="d-flex">
				    							<div class="one">
						    						<h3><a href="property-single.html">North Parchmore Street</a></h3>
						    						<p>Apartment</p>
					    						</div>
					    						<div class="two">
					    							<span class="price">$20,000</span>
				    							</div>
				    						</div>
				    						<p>Far far away, behind the word mountains, far from the countries</p>
				    						<hr>
				    						<p class="bottom-area d-flex">
				    							<span><i class="flaticon-selection"></i> 250sqft</span>
				    							<span class="ml-auto"><i class="flaticon-bathtub"></i> 3</span>
				    							<span><i class="flaticon-bed"></i> 4</span>
				    						</p>
				    					</div>
				    				</div>
				    			</div>
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

            <div class="sidebar-box ftco-animate mt-3">
              <h3>TOP AGENTS</h3>
              <div class="block-21 mb-4 d-flex border border-dark">
                <a class="blog-img mr-4" style="background-image: url(image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">MARY AGENT</a></h3>
                  <div class="meta">
<!--                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>-->
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
<!--                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>-->
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
<!--                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>-->
                    <div><a href="#"><span class="icon-person"></span> Lawyer</a></div>
                    <div><a href="#"><span class="icon-star"></span> 19</a></div>
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
    
  