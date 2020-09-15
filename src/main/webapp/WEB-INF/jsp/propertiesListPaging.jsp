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


<div class="hero-wrap" style="background-image: url('oia.webp'); height:110%;">

    <div class="overlay"></div>

    <div class="container">
       

        <div class="row no-gutters slider-text align-items-center">

            <div class="col-md-4 ftco-animate text-center bg-white my-4 p-4">

                <h4 class="mb-3 bread"><p class="text-dark">PROPERTIES LIST</p></h4>

                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><span class="icon-play"/><span class="text-dark">Home</span></a></span> <span class="mr-2"><span class="icon-play text-dark"/><span class="text-muted"> Property</span></span></p>

            </div>

        </div>
        

    </div>

</div>


<%@ include file="searchFilterForm.jsp" %> 

<!--    <section class="ftco-search">
    	<div class="container">
	    	<div class="row">
					<div class="col-md-12 search-wrap">
						<form action="#" class="search-property">
	        		<div class="row">
	        			<div class="col-md align-items-end">
	        				<div class="form-group">
	        					<label for="#">Keyword</label>
	          				<div class="form-field">
	          					<div class="icon"><span class="icon-my_location"></span></div>
			                <input type="text" class="form-control" placeholder="Keyword">
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md align-items-end">
	        				<div class="form-group">
	        					<label for="#">Location</label>
	          				<div class="form-field">
	          					<div class="icon"><span class="icon-my_location"></span></div>
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
	        			<div class="col-md align-items-end">
	        				<div class="form-group">
	        					<label for="#">Property Status</label>
	        					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                      <select name="" id="" class="form-control">
	                      	<option value="">Type</option>
	                        <option value="">Rent</option>
	                        <option value="">Sale</option>
	                      </select>
	                    </div>
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md align-items-end">
	        				<div class="form-group">
	        					<label for="#">Agents</label>
	        					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                      <select name="" id="" class="form-control">
	                      	<option value="">Any</option>
	                        <option value="">Jonh Doe</option>
	                        <option value="">Doe Mags</option>
	                        <option value="">Kenny Scott</option>
	                        <option value="">Emily Storm</option>
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
	                        <option value="">$1,000</option>
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
	        					<label for="#">Min Area <span>(sq ft)</span></label>
	          				<div class="form-field">
	          					<div class="icon"><span class="icon-my_location"></span></div>
			                <input type="text" class="form-control" placeholder="Min Area">
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md align-items-end">
	        				<div class="form-group">
	        					<label for="#">Max Area <span>(sq ft)</span></label>
	          				<div class="form-field">
	          					<div class="icon"><span class="icon-my_location"></span></div>
			                <input type="text" class="form-control" placeholder="Max Area">
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md align-self-end">
	        				<div class="form-group">
	        					<div class="form-field">
			                <input type="submit" value="Search" class="form-control btn btn-primary">
			              </div>
		              </div>
	        			</div>
	        		</div>
	        	</form>
					</div>
	    	</div>
	    </div>
    </section>-->
 

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
                                    
    					<a href="/getProperty?property=${item.propertyId}" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/${item.mediaCollection[0].path}">
    						
                                            <div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
<!--                                        <div class="ribbon" style="position: absolute;">BOOKED</div>-->
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
