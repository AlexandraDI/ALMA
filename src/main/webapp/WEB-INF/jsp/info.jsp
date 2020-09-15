<%-- 
    Document   : welcome
    Created on : Aug 21, 2020, 1:49:48 AM
    Author     : alex
--%>

<%@ include file="head.jsp" %>  


<!--<div class="hero-wrap" style="background-image: url('oia.webp');">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text align-items-center">

            <div class="col-md-4 ftco-animate text-center bg-white my-4 p-4">

                <h4 class="mb-3 bread"><p class="text-dark">USER INFORMATION</p></h4>
                
                 <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Information</span></span></p>
                
            </div>

        </div>

    </div>

</div>-->



<section class="ftco-section ftc-no-pb">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-5 p-md-5 py-4 img img-2 d-flex justify-content-center align-items-center"  style="background-image: url(/images/<c:out value="${sessionScope.user.avatar}"/>);">
<!--                <a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center">
                    <span class="icon-play"></span>
                </a>-->

<!--        <img src="/images/"+<c:out value="${sessionScope.user.avatar}"/> class="img-fluid first" alt="" width="100%" style="background-image: url(/images/avatarTypical.png);">-->
            </div>
            <div class="col-md-7 wrap-about pb-md-5 ftco-animate">
                <div class="heading-section heading-section-wo-line mb-5 pl-md-5">
                    <div class="pl-md-5 ml-md-5">
                        <span class="subheading">Profile Overview</span>
                        <h2 class="mb-4"> <c:out value="${sessionScope.user.firstname}"/> <c:out value="${sessionScope.user.lastname}"/></h2>
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
      <td>Username</td>
      <td><c:out value="${sessionScope.user.username}"/></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><c:out value="${sessionScope.user.email}"/></td>
    </tr>
    <tr>
      <td>Role</td>
      <td><c:out value="${sessionScope.user.roleId.rolename}"/></td>
    </tr>
     <tr>
      <td>City</td>
      <td><c:out value="${sessionScope.user.currentLocation.name}"/></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><c:out value="${sessionScope.user.currentLocation.countryId.name}"/></td>
    </tr>  
  </tbody>
</table>                   


                    <p><a href="/" class="btn-custom">Home Page <span class="ion-ios-arrow-forward"></span></a></p>
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

