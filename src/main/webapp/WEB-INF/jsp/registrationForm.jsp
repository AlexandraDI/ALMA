<%-- 
    Document   : restrationForm
    Created on : Aug 4, 2020, 1:35:20 AM
    Author     : alex
--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %> 



<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <!--        <script src='https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js'></script>
                <script type="text/javascript" src="/form-validation.js"></script>-->





    </head>
    <body>
        //enctype="multipart/form-data"
        <springform:form action="loginUser" method="post"
                         modelAttribute="newUser" enctype="multipart/form-data" name="registerForm3">
            <table>


                <td>Firstname:</td>
                <td> <springform:input path="firstname"/></td>
                <td><springform:errors  path="firstname" cssStyle="color:red"/></td>

                <tr>
                    <td>Lastname:</td>
                    <td> <springform:input path="lastname"/></td>
                    <td><springform:errors  path="lastname" cssStyle="color:red"/></td>
                </tr>           
                <tr>
                    <td>Username:</td>
                    <td> <springform:input path="username" id="username"/></td>
                    <td><springform:errors  path="username" cssStyle="color:red"/></td>
                    <td> <label id="usernameError" style="display:none">Username already exists. Please enter a different username</label></td>
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
            <label id="emailError" style="display:none; color: red;">Email already exists. Please enter a different email</label>  
        </tr>             
        <tr>
            <td>Roles:</td>
            <td>
                <c:forEach items="${allRoles}" var="role">
                    <springform:radiobutton name="roleSelected" path="roleId" value="${role.roleId}"/>${role.rolename}
                </c:forEach> 
                <%-- <springform:select  items="${allRoles}" path="roleId" itemLabel="rolename" itemValue="roleId"/>  
                Needs PropertyEditors --%>
            </td>
        </tr>  
        <tr>
            <td>Profile Picture:</td>
            <td><input type="file" name="avatarFilename" accept="image/*"/></td>
        </tr> 
    </table>
    <button type="submit">Submit</button>

</springform:form>
<!--<input type="text" id="latitude"/>
<input type="text" id="longitude"/></br>-->


<button id="geolocation">Get Geolocation</button></br>
<label>Ip</label>
<input type="text" id="ip"/></br>
<label>City</label>
<input type="text" id="city"/></br>
<label>Country</label>
<input type="text" id="country"/>




${parserror}
<script>
    //htan keyup
    $("#username").focusout(function () {
        var name = $("#username").val();
        var myurl = "checkUsername/" + name;
        $.ajax({
            url: myurl
        }).done(function (data) {
            //alert(data);
            if (data) {
                $('#usernameError').show();
            } else {
                $('#usernameError').hide();
            }
        });
    });
    $("#email").focusout(function () {
        var email = $("#email").val();
        var myurl = "checkEmail/" + email;
        $.ajax({
            url: myurl
        }).done(function (data) {
            if (data) {
                $('#emailError').show();
                //$('#submitButton').hide();
            } else {
                $('#emailError').hide();
                //$('#submitButton').show();
            }
        });
    });


 <%--var youAreHere = getLocation(true);


    function getLocation(enableHighAccuracy) {
        if (navigator.geolocation) {
            var obj = {};
            navigator.geolocation.getCurrentPosition(function (position) {

                // Accuracy in meters, latitude and longitude
                obj.ACCURACY = position.coords.accuracy;
                obj.LATITUDE = position.coords.latitude;
                obj.LONGITUDE = position.coords.longitude;

                // Get address from geolocation
                try {
                    $.ajax({
                        url: 'https://maps.googleapis.com/maps/api/geocode/json',
                        data: {
                            latlng: position.coords.latitude + ',' + position.coords.longitude,
                            sensor: true
                        },
                        success: function (data) {
                            if (data.status == 'OK') {
                                var strt = $.grep(data.results, function (e) {
                                    return e.types == 'street_address';
                                });
                                if (strt.length === 1) {
                                    var route = $.grep(strt[0].address_components, function (e) {
                                        return e.types == 'route';
                                    });
                                    if (route.length === 1) {
                                        obj.STREET = route[0].long_name;
                                    }
                                    var no = $.grep(strt[0].address_components, function (e) {
                                        return e.types == 'street_number';
                                    });
                                    if (no.length === 1) {
                                        obj.STREET_NUMBER = no[0].long_name;
                                    }
                                    var zipcode = $.grep(strt[0].address_components, function (e) {
                                        return e.types == 'postal_code';
                                    });
                                    if (zipcode.length === 1) {
                                        obj.POSTAL_CODE = zipcode[0].long_name;
                                    }
                                    var town = $.grep(strt[0].address_components, function (e) {
                                        return e.types == 'postal_town';
                                    });
                                    if (town.length === 1) {
                                        obj.CITY = town[0].long_name;
                                    }
                                }
                            }
                        }
                    }).then(
                            function () {
                                //alert("I know where you are! "+ obj.ACCURACY);
                                $('#latitude').val(obj.LATITUDE).change();
                                $('#longitude').val(obj.LONGITUDE).change();
                            });
                } catch (error) {
                    console.warn(error);
                }

            }, function (error) {
                console.warn(error.code + ' ' + error.message);
            }, {
                enableHighAccuracy: enableHighAccuracy
            });
            return obj;
        }
    } --%>

// fetch('http://api.ipify.org/?format=json')
// .then(results => results.json())
// .then(data => $('#ip').val(data.ip).change()); 

    $("#geolocation").click(function () {
    $.ajax({
        url: 'http://api.ipify.org/?format=json'
    }).done(function (data) {
        if (data) {
            const ip = data.ip;
            //alert(ip);
            //alert("test");
            $('#ip').val(data.ip).change();
            //alert(ip);
            var access_key = '43d20a75aa0380f79c50923588c61b72';

           // get the API result via jQuery.ajax
            $.ajax({
                url: 'http://api.ipstack.com/' + ip + '?access_key=' + access_key,
                dataType: 'jsonp',
                success: function (json) {

                    // output the "capital" object inside "location"
                    //alert(json.location.capital);
                    $('#location').val(json.location.capital+" , "+json.country_name).change();
                    $('#country').val(json.country_name).change();

                }
            });


        } else {
            alert("den elave thn ip");
            //$('#submitButton').show();
        }
    });
    });

   


</script>
</body>
</html>
