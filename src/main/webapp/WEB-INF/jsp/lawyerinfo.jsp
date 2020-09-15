<%-- 
    Document   : welcome
    Created on : Aug 21, 2020, 1:49:48 AM
    Author     : alex
--%>

<%@ include file="head.jsp" %>  


<div class="hero-wrap" style="background-image: url('oia.webp');">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text align-items-center">

            <div class="col-md-4 ftco-animate text-center bg-white my-4 p-4">

                <h4 class="mb-3 bread"><p class="text-dark">BOOK PROPERTY</p></h4>

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Payment</span></span></p>

                <!--                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play text-dark"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><a href="blog.html"><span class="text-dark">Blog</span></a></span> <span class="text-dark">Blog</span></p>-->

            </div>

        </div>

    </div>

</div>



<section class="ftco-section ftc-no-pb">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-5 p-md-5 py-4 img img-2 d-flex justify-content-center align-items-center"  style="background-image: url(/images/<c:out value="${lawyer.avatar}"/>);">
                <!--                <a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center">
                                    <span class="icon-play"></span>
                                </a>-->

<!--        <img src="/images/"+<c:out value="${lawyer.avatar}"/> class="img-fluid first" alt="" width="100%" style="background-image: url(/images/avatarTypical.png);">-->
            </div>
            <div class="col-md-7 wrap-about pb-md-5 ftco-animate">
                <div class="heading-section heading-section-wo-line mb-5 pl-md-5">
                    <div class="pl-md-5 ml-md-5">
                        <span class="subheading">Profile Overview</span>
                        <h2 class="mb-4"> <c:out value="${lawyer.firstname}"/> <c:out value="${lawyer.lastname}"/></h2>
                    </div>
                </div>
                <div class="pl-md-5 ml-md-5 mb-5">

                    <table class="table">
                        <!--  <thead>
                            <tr>
                              <th scope="col">First</th>
                              <th scope="col">Last</th>
                            </tr>
                          </thead>-->
                        <tbody>
                            <tr>
                                <td>Payment</td>
                                <td><c:out value="${lawyer.lawyerinfoId.money}"/> &euro;</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td><c:out value="${lawyer.email}"/></td>
                            </tr>
                            <tr>
                                <td>Years of Experience</td>
                                <td><c:out value="${lawyer.lawyerinfoId.experience}"/></td>
                            </tr>
                            <tr>
                                <td>Legal Registration Number</td>
                                <td><c:out value="${lawyer.lawyerinfoId.number}"/></td>
                            </tr>
                            <tr>
                                <td>Description of Skills</td>
                                <td><c:out value="${lawyer.lawyerinfoId.description}"/></td>
                            </tr>  
                        </tbody>
                    </table> 
                            <hr>
                            
                            <input type="checkbox" checked="yes"onclick="return false;">
                            I authorize the above lawyer to do all the legal procedures for the acquisition of the property I have requested and for the acquisition of the golden visa.
                            
                            </br></br><h6>In order to book the property you must pay the 15% of the property value</h6>

                            
                            
                    
                    
                    <div class="icon rounded-0 d-flex justify-content-center align-items-center p-5">                              
<!--                        <a href="/lawyerConfirmation?lawyer=${lawyer.userId}&application=${application}" ><button type="button" class="btn bg-success text-white rounded "> <p>Book this lawyer</p></button>  </a>                             -->
                    
                    
                        <form action='/lawyerConfirmation' method='POST' id='checkout-form'>
                            <input type='hidden' value='${lawyer.userId}' name='lawyer' />
                            <input type='hidden' value='${application}' name='application' />
                            <input type='hidden' value='${app.propertyId.price *15}' name='amount' />
                            <!-- <label>Price:<span text='${amount}' /></label> -->
                            <!-- NOTE: data-key/data-amount/data-currency will be rendered by Thymeleaf -->
                            <script
                               src='https://checkout.stripe.com/checkout.js'
                               class='stripe-button'
                               data-key='${stripePublicKey}'
                               data-currency='eur'
                               data-amount=${app.propertyId.price *15}
                               data-name='Alma'
                               data-description='Property booking checkout'
                               data-locale='auto'
                               data-zip-code='false'>
                           </script>
                        </form>                    
                    
                    
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


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





</script>

