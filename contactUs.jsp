<%-- 
    Document   : contactUs
    Created on : 11 Jun, 2022, 2:17:22 PM
    Author     : dangi
--%>

<%@page import="com.travel.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     User user = (User) session.getAttribute("currentUser");
    String display;
    if (user == null) {
        display="block";
    } else {
        display="none";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer page</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <link href="css/contactUsStyle.css" rel="stylesheet" type="text/css"/>


        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <script src="https://kit.fontawesome.com/3c273b998f.js" crossorigin="anonymous"></script>


    </head>
    <body>

        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <div class="form-deck">
            <div class="form-row">
                <div class="map-deck">
                    <div class="map">
                        <iframe class="company-map"
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31108.540466395247!2d77.61468276628004!3d12.935492193083011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15e6ba6f3583%3A0x7d12f96e6fac6a75!2sDMart%20Koramangala!5e0!3m2!1sen!2sin!4v1654939749467!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></iframe>
                    </div>
                </div>
                <div class="pt-5 ps-5 pb-5">

                    <h3 class="form-header">Address</h3><br>
                    <h5>REGISTERED OFFICE</h5><br>
                    <P>TRAVEL Technologies Private Limited<br>
                        Regent Insignia,<br>
                        #414, 3rd Floor, 4th Block,<br>
                        17th Main, 100 Feet Road<br>
                        Koramangala, Bengaluru, 560034<br>
                        Phone number 080-67350900<br>
                        Fax number 080-67350904<br>
                        Email id : travel.officer@travelcabs.com
                        <br>

                    </P>
                </div>
            </div>

        </div>

        <!--footer page-->
        <%@include file="footer.jsp" %>

        <!--js cdn-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>


    </body>
</html>
