<%-- 
    Document   : restrationForm
    Created on : Aug 4, 2020, 1:35:20 AM
    Author     : alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous">
        </script>
        <script src='https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js'></script>
        <script type="text/javascript" src="/form-validation.js"></script>

    </head>
    <body>
        //enctype="multipart/form-data"
        <springform:form action="registerUser" method="post"
                         modelAttribute="newUser" enctype="multipart/form-data" name="registerForm">
            <table>

                <tr>
                    <td>Firstname:</td>
                    <td> <springform:input path="firstname"/></td>
                    <td><springform:errors  path="firstname" cssStyle="color:red"/></td>
                </tr>
                <tr>
                    <td>Lastname:</td>
                    <td> <springform:input path="lastname"/></td>
                    <td><springform:errors  path="lastname" cssStyle="color:red"/></td>
                </tr>           
                <tr>
                    <td>Username:</td>
                    <td> <springform:input path="username" id="username"/></td>
                    <td><springform:errors  path="username" cssStyle="color:red"/></td>
                <span></span>
                <%--                TODO    AJAX call the see if nickname exists--%>
            </tr>
            <tr>
                <td>Password:</td>
                <td><springform:password path="password"/></td>
                <td><springform:errors  path="password" cssStyle="color:red"/></td>
            </tr>
            <tr>
                <td>Repeat Password:</td>
                <td><input type="password" placeholder="Repeat password" name="secondPassword"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td> <springform:input path="email" id="email"/></td>
                <td><springform:errors  path="email" cssStyle="color:red"/></td>
            </tr>             
            <tr>
                <td>Roles:</td>
                <td>
                    <c:forEach items="${allRoles}" var="role">
                        <springform:radiobutton name="roleSelected" path="roleId" value="${role.roleId}"/>${role.rolename}
                    </c:forEach> 
                    <%-- <springform:select  items="${allRoles}" path="roleId" itemLabel="rolename" itemValue="roleId"/>  --%>
                    <!--Needs PropertyEditors-->
                </td>
            </tr>
            <tr>
                <td>Profile Picture:</td>
                <td><input type="file" name="avatarFilename" accept="image/*"/></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </springform:form>
    ${parserror}
    <script>
                //htan keyup
                $("#username").focusout(function () {
                    var name = $("#username").val();
                    var myurl = "checkUsername/" + name;
                    $.ajax({
                        url: myurl
                    }).done(function (data) {
                        alert(data);
                        //$("#usernameError").val(data);
                        $(document).ready(function () {
                            var newInput = $("<input name='new_field' type='text'>");
                            $('input#username').after(newInput);
                        });
                    });
                });
                $("#email").focusout(function () {
                    var email = $("#email").val();
                    var myurl = "checkEmail/" + email;
                    $.ajax({
                        url: myurl
                    }).done(function (data) {
                        alert(data);
                    });
                });
    </script>
</body>
</html>
