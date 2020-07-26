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
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Role</th>
                    </tr>
                </thead>
                <tbody>
                    
<!--                <div>${resultusers}</div>-->

 
                    <c:forEach items="${resultusers}" var="item">
                        <tr style="color: red">
                            <td>${item.firstname}</td>
                            <td>${item.lastname}</td>
                            <td>${item.roleId.rolename}</td>
                        </tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>         
        
        
    </body>
</html>
