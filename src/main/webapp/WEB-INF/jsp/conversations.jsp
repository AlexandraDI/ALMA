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
<!--<div class="row pt-3">


    <div class="col-lg-6 col-md-12">

        <img src="/images/${newProperty.mediaCollection[0].path}" class="img-fluid first" alt="" width="100%">

    </div>
    <div class="col-lg-3 col-md-6 mb-2 p-0">



        <img src="/images/${newProperty.mediaCollection[6].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.4s">

        <img src="/images/${newProperty.mediaCollection[4].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.1s">       

    </div>
    <div class="col-lg-3 col-md-6 mb-2">

        <img src="/images/${newProperty.mediaCollection[8].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.2s">

        <img src="/images/${newProperty.mediaCollection[2].path}" class="img-fluid mb-2 next" alt="" width="100%"
             data-wow-delay="0.5s">

    </div>

</div>-->


<section class="ftco-section">
    <div class="container">
        <div class="row">


            <div class="col-lg-4 sidebar ftco-animate">

                <div class="sidebar-box ftco-animate mt-3">



                    <!--                    <a href="/getLawyers"><input type="button" value="Book the Lawyer" class="btn py-3 px-4 btn-primary rounded w-100"></a>-->
                    <h3 class="px-2">CONNECTIONS</h3>

                    <table class="table">
                        <tbody>
                            <c:choose>
                                <c:when test="${chatList.size() > 0 }">

                                    <c:choose>
                                        <c:when test="${roleId == 4 }">
                                            <c:forEach var="item" items="${chatList}">

                                                <tr>
<!--                                                    <td>${item.user2Id.lastname} ${item.user2Id.firstname}</td>-->
                                                    <td><a href="/getChat?id=${item.chatId}" style="float:left" class="btn-custom"> ${item.user2Id.lastname} ${item.user2Id.firstname} </a></td>
<!--                                                        <td>${item.user2Id.firstname}</td>-->
                                                </tr>  


                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="item" items="${chatList}">

                                                <tr>
<!--                                                    <td>${item.user1Id.lastname} ${item.user1Id.firstname}</td>-->
                                                    <td><a href="/getChat?id=${item.chatId}" style="float:left" class="btn-custom"> ${item.user1Id.lastname} ${item.user1Id.firstname} </a></td>
<!--                                                        <td>${item.user1Id.firstname}</td>-->
                                                </tr> 

                                            </c:forEach>  
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                                <c:otherwise>
                                <div class="container">
                                    <h4> No Users available</h4>
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <tr>
                            <td></td>
                        </tr> 
                        </tbody>
                    </table>

                </div>




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

                <!--                <div class="sidebar-box ftco-animate">
                                    <h3>Paragraph</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                                </div>-->
            </div>           




            <div class="col-lg-8">
                <div class="row">



                    <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">


                        <div class=" mt-5">

                            <ul class="comment-list">


                                <c:choose>
                                    <c:when test="${messageList.size() > 0 }">
                                        <c:forEach var="item" items="${messageList}">

                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img src="/images/${item.senderId.avatar}" alt="Image placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>${item.senderId.firstname} ${item.senderId.lastname}</h3>
                                                <div class="meta">${item.datetimeCreated}</div>
                                                <p>${item.content}</p>
                                                <p><a href="#" class="reply">Reply</a></p>
                                            </div>
                                        </li>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>

                                        <div class="container">
                                            <h4> No messages yet</h4>
                                        </div>                              
                                    </c:otherwise>  
                                </c:choose>





<!--                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img src="person_1.jpg" alt="Image placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>John Doe</h3>
                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                <p><a href="#" class="reply">Reply</a></p>
                                            </div>
                                        </li>-->
                                    </ul>

                            <c:choose>
                                <c:when test="${chatList.size() > 0 }">
                                    <div class="comment-form-wrap pt-5">
                                        <h3 class="mb-5">Leave your message</h3>
                                        <form method="post" action="/saveMessage" class="p-5 bg-light">

                                            <div class="form-group">
                                                <label for="message">Message</label>
                                                <textarea id="message" name="message" cols="30" rows="2" class="form-control"></textarea>
                                            </div>
                                            <input type="hidden" name="chatId" value="${chatId}" class="form-control">
                                        <div class="form-group">
                                            <!--                                        <input type="submit" value="Send Message" class="btn py-3 px-4 btn-primary rounded">-->
                                            <button type="submit" class="btn py-3 px-4 btn-primary rounded">Send Message</button>
                                        </div>

                                    </form>
                                </div>
                                </c:when>
                            </c:choose>
                                        
                                        
                            </div>               
                        </div>



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
        $(".img-fluid").addClass("wow fadeIn z-depth-1-half");

        new WOW().init();

    </script>

