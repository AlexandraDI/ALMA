<%-- 
    Document   : propertiesList
    Created on : 3 ??? 2020, 10:39:55 ??
    Author     : gianalex
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="head.jsp" %>

<script src="https://aframe.io/releases/1.0.4/aframe.min.js"></script>

<script src="dist/aframe-no-click-look-controls.min.js"></script>

<style>

/*.top {
    background: white !important;
    border-bottom: 1px solid #ebebeb;
    font-size: 17px !important;
}  

    .ftco-section {
   
   padding-top: 30px !important;
}*/




    .form-control{

        height: 42px !important;

        font-size: 14px;
    }

    body .hero-wrap{
        font-size: 17px !important;
    }
    .top{
        font-size: 14px !important;
    }
   
.properties .text .one {
    width: calc(100% - 120px);
}

.properties .text .two {
    width: 120px;
    padding-left: 0px;
    text-align: right;
}

/*.btn:hover, .btn:active, .btn:focus {
    outline: black !important;
    background: white !important;
    color: black !important;
}*/
.orange:hover{
    outline: none;
    color: white !important;
    background: #ff8f56 !important;
}
.orange{
    background: white !important;
    color: #ff8f56 !important;
    border-color: #ff8f56 !important;
}

.blue:hover{
    outline: none;
    background: #26baee !important;
    color: white !important;
}
.blue{
    background: white !important;
    color: #26baee !important;
    border-color: #26baee !important;
}

.avatar{
    display: block;
    height: 150px !important;
}

.properties:hover .icon {
    opacity: 0;
}

.avatar:hover .icon {
    opacity: 1;
}

.buyer {
    left: -2px !important;
   top: -46px !important;
}

.seller {
    left: calc(100% - 64px) !important;
     top: -46px !important;
}


</style>


<div class="hero-wrap" style="background-image: url('oia.webp'); height:110%;">

    <div class="overlay"></div>

    <div class="container">
       

        <div class="row no-gutters slider-text align-items-center">

            <div class="col-md-4 ftco-animate text-center bg-white my-4 p-4">

                <h4 class="mb-3 bread"><p class="text-dark">MY BOOKINGS</p></h4>

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Bookings</span></span></p>

                <!--                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play text-dark"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><a href="blog.html"><span class="text-dark">Blog</span></a></span> <span class="text-dark">Blog</span></p>-->

            </div>

        </div>
        

    </div>

</div>


    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row">
  
                    

    <c:choose>
        <c:when test="${data.size() > 0 }">
            <c:forEach var="item" items="${data}">
<%--                <tr align="center">
                    <td>${item.propertyId}</td>
                    <td>${item.ownerId.lastname}</td>
                    <td>${item.description}</td>
                    <td><a href="editemp/${item.propertyId}" class="btn btn-outline-info">Edit</a></td>
                    <td><a href="deleteemp/${item.propertyId}" class="btn btn-outline-danger">Delete</a></td>
                </tr>--%>

    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
                                    <div class="row">
                                        <div class="col-6">
    					<a href="/getProperty?property=${item.propertyId}" class="img img-2 d-flex avatar justify-content-center align-items-center w-100" style="background-image: url(/images/${item.mediaCollection[0].path}">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>  
    						</div>
    					</a>
                                        </div>
                                                <div class="col-6">
                			<a href="/getUserDetail?id=${item.ownerId.userId}&property=${item.propertyId}" class="img img-2 d-flex avatar justify-content-center align-items-center w-100" style="background-image: url(/images/${item.ownerId.avatar}">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a> 
                                                </div>
                                    </div>
    					<div class="text p-3">
                                            <div class="row">
                                                <div class="properties col-6">
    						<span class="status sale buyer">Buyer</span>
                                                </div>
                                                <div class="properties col-6 align-content-end">
                                                <span class="status rent seller">Seller</span>
                                                </div>
                                            </div>
    						
<!--    						<div class="row justify-content-around">
                                                    <a href="/preAddBuyer?property=${newProperty.propertyId}"><img src=""></img><input type="button" value="Buyer Info" class="btn p-2 blue rounded-0 text-white w-100"></a>
    							 <a href="/preAddBuyer?property=${newProperty.propertyId}"><input type="button" value="Seller Info" class="btn p-2 orange rounded-0 text-white w-100"></a>
    						</div>-->
<!--                                                <hr>-->
     						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="/getProperty?property=${item.propertyId}">${item.cityId.name}</a></h3>
<!--		    						<p>${item.type}</p>-->
	    						</div>
	    						<div class="two">
	    							<span class="price">${item.price} &euro;</span>
    							</div>
<!--                                                        <a href="/preAddBuyer?property=${newProperty.propertyId}"><img src=""></img><input type="button" value="Buyer Info" class="btn p-3 blue rounded-0 text-white w-100"></a>-->
    						</div>                                               
    					</div>
    				</div>
    			</div>

            </c:forEach>
        </c:when>
        <c:otherwise>
            <div class="container">
                <center><h4> You haven't been booked yet!</h4></center>
            </div>
        </c:otherwise>
    </c:choose>



                   
                
                    
                    <%--
                     <c:forEach items="${data}" var="item">
<!--                        <tr style="color: red">
                            <td>${item.propertyId}</td>
                            <td>${item.description}</td>
                            <td>${item.ownerId.lastname}</td>
                        </tr>-->
                                     

    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-9.jpg);">
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
    						<p>${item.description}</p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="flaticon-selection"></i> 250sqft</span>
    							<span class="ml-auto"><i class="flaticon-bathtub"></i> 3</span>
    							<span><i class="flaticon-bed"></i> 4</span>
    						</p>
    					</div>
    				</div>
    			</div>
                    
                    </c:forEach> --%> 
                    
    		</div>
    		<div class="row mt-5">
          <div class="col text-center">

     <c:if test="${data.size() > 0 }">
        <div class="panel-footer">
            
        <%--        WORKING
            Showing page ${number+1} of ${totalPages} 
        
        --%>
            <%--out of ${totalElements} elements--%>
<%--            <ul class="pagination">
                <c:forEach begin="0" end="${totalPages-1}" var="page">
                    <li class="page-item">
                        <a href="/getPropertyList?page=${page}&size=9" class="page-link">${page+1}</a>
                    </li>
                </c:forEach>
            </ul>--%>
             <div class="block-27">
<!--              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>-->
                <ul>
                    <li><a href="#">&lt;</a></li>
                <c:forEach begin="0" end="${totalPages-1}" var="page">
                <li  <c:if test="${page == number }">class="active"</c:if>>
                        <a href="/getPropertyList?page=${page}&size=9">${page+1}</a>
                    </li>
                </c:forEach>
                    <li><a href="#">&gt;</a></li>
            </ul>
             </div>
        </div>
       
    </c:if>               
         
          </div>
        </div>
    	</div>
    </section>

<!--    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-4 ftco-animate">
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
    			<div class="col-md-4 ftco-animate">
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-3.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<span class="status rent">Rent</span>
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="property-single.html">North Parchmore Street</a></h3>
		    						<p>Apartment</p>
	    						</div>
	    						<div class="two">
	    							<span class="price">$800 <small>/ month</small></span>
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-4.jpg);">
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-5.jpg);">
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-6.jpg);">
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-7.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<span class="status rent">Rent</span>
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="property-single.html">North Parchmore Street</a></h3>
		    						<p>Apartment</p>
	    						</div>
	    						<div class="two">
	    							<span class="price">$899 <small>/ month</small></span>
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-8.jpg);">
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
    			<div class="col-md-4 ftco-animate">
    				<div class="properties">
    					<a href="property-single.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(properties-9.jpg);">
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
    		<div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
    	</div>
    </section>-->


  
<!--        <h1>All the Properties</h1>-->
        
<!--        <div class="container col-md-6" style="margin-top:30px">
            <table class="table table-border c-dark" id="myTable">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Description</th>
                        <th scope="col">Owner Id</th>
                    </tr>
                </thead>
                <tbody>
                    
<%--                <div>${resultusers}</div>

 
                    <c:forEach items="${resultProperties}" var="item">
                        <tr style="color: red">
                            <td>${item.propertyId}</td>
                            <td>${item.description}</td>
                            <td>${item.ownerId.lastname}</td>
                        </tr>
                    </c:forEach>
--%>

                </tbody>
            </table>
        </div>         -->
        
 
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
