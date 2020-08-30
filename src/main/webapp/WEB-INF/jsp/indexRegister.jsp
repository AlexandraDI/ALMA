<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World 2!</h1>
    </body>
</html> --%>


  <%@ include file="head.jsp" %> 
     
  <%@ include file="carousel.jsp" %>

  <%@ include file="search.jsp" %>  
    
<%@ include file="information.jsp" %>

  <%@ include file="recentPosts.jsp" %>
  
   <%@ include file="specialOffers.jsp" %>
 
    
   <%@ include file="funFacts.jsp" %>
   
   <%@ include file="lawyers.jsp" %>
   
   <%@ include file="readArticles.jsp" %>
   
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

   <c:if test="${not empty registerAttribute}">
    $( "#modalRegisterForm" ).modal();    
   </c:if>

    $('.carousel-item', '.multi-item-carousel').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));
    }).each(function () {
        var prev = $(this).prev();
        if (!prev.length) {
            prev = $(this).siblings(':last');
        }
        prev.children(':nth-last-child(2)').clone().prependTo($(this));
    });




</script>

