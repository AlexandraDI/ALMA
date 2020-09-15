<%-- 
    Document   : welcome
    Created on : Aug 21, 2020, 1:49:48 AM
    Author     : alex
--%>

<%@ include file="head.jsp" %>  





<section class="ftco-section ftc-no-pb">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 justify-content-center align-items-top h-50  my-4" >
<!--                <a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center">
                    <span class="icon-play"></span>
                </a>-->
<div class="col-12">
    <center><img src="/images/${user.avatar}" class="img-fluid" alt="Avatar"></center>
</div>
<!--<div class="col-12 text-end">
    <p><a href="/" class="btn-custom"><h5> Contact <span class="ion-ios-arrow-forward"></span></h5></a></p>
</div>-->
<!--        <img src="/images/"+<c:out value="${user.avatar}"/> class="img img-fluid" alt="" width="100%" style="background-image: url(/images/${user.avatar});">-->
            </div>
            
            <div class="col-md-8 wrap-about pb-md-5 ftco-animate">
<!--                <div class="heading-section heading-section-wo-line mb-5 pl-md-5">
                    <div class="pl-md-5 ml-md-5">
                        <p><a href="/" class="btn-custom"><h5> Contact <span class="ion-ios-arrow-forward"></span></h5></a></p>  
                    </div>
                </div>-->
                         
                <div class="pl-md-5 ml-md-5 mb-5">
                      <p class="py-4">
                          Profile Overview
                    </p>
                    <h3> <c:out value="${user.firstname}"/> <c:out value="${user.lastname}"/> </h3>
 <table class="table">
  <tbody>        
    <tr>
      <td>Email</td>
      <td><c:out value="${user.email}"/></td>
    </tr>
     <tr>
      <td>City</td>
      <td><c:out value="${user.currentLocation.name}"/></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><c:out value="${user.currentLocation.countryId.name}"/></td>
    </tr> 
       <tr>
      <td></td>
      <td></td>
    </tr>    
  </tbody>
</table>                   
   <!--               ${property.mediaCollection[11].path}
              <p><a href="/" class="btn-custom"><h5> Contact <span class="ion-ios-arrow-forward"></span></h5></a></p>        -->
                </div>
            </div>
        </div>
<!--   <h2 class="text-center">Certificate of Ownership</h2> -->

    
    
    
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

