<%-- 
    Document   : specialdOffers
    Created on : Aug 19, 2020, 7:03:44 PM
    Author     : alex
--%>

    <section class="ftco-section bg-light">
    	<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
<!--          	<span class="subheading">Special Offers</span>-->
                <h2 class="mb-4">Most Expensive Properties</h2>
          </div>
        </div>    		
    	</div>
    	<div class="container-fluid">
    		<div class="row">
                    
                      <c:choose>
                        <c:when test="${expensive.size() > 0 }">
                            <c:forEach var="property" items="${expensive}">                 
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="properties">
    					<a href="/getProperty?property=${property.propertyId}" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/${property.mediaCollection[0].path});">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<span class="status sale">Sale</span>
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="/getProperty?property=${property.propertyId}">${property.cityId.name}</a></h3>
		    						<p>${property.type}</p>
	    						</div>
	    						<div class="two">
	    							<span class="price">${property.price} &euro;</span>
    							</div>
    						</div>
    						<p>${property.title}</p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="flaticon-selection"></i> ${property.area} sqft</span>
    							<span class="ml-auto"><i class="flaticon-bathtub"></i> ${property.bathrooms}</span>
    							<span><i class="flaticon-bed"></i> ${property.rooms}</span>
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
                                                
    			
    		</div>
    	</div>
    </section>
