<%-- 
    Document   : users
    Created on : Jul 26, 2020, 10:21:00 PM
    Author     : alex
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Test</title>
    </head>
    <body>
        <h1>All the Users</h1>
        
        <div class="container col-md-6" style="margin-top:30px">
            <table class="table table-border c-dark" id="myTable">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Description</th>
                        <th scope="col">Owner Id</th>
                    </tr>
                </thead>
                <tbody>
                    
<!--                <div>${resultusers}</div>-->

 
                    <c:forEach items="${resultProperties}" var="item">
                        <tr style="color: red">
                            <td>${item.propertyId}</td>
                            <td>${item.description}</td>
                            <td>${item.ownerId.lastname}</td>
                        </tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>         
        
        
    </body>
</html>
