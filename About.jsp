<%-- 
    Document   : About
    Created on : 6 Jun, 2022, 4:04:56 PM
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
        <title>About Travel</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/style2.css" rel="stylesheet" type="text/css"/>

        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <script src="https://kit.fontawesome.com/3c273b998f.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <!--navbar-->
        <%@include file="navbar.jsp" %>


        <div class="container-fluid" id="aboutBanner"  >
            <div class="row">

                <div class="col-md-12 text-center mt-5 text-white" id="aboutBanner-text">
                    <h1 class="h3" id="banner-heading" style="font-weight: bolder;font-size: 3em;">About Travel</h1>

                </div>

            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12 ">
                <h1 class="ps-4" style="font-weight: bolder;font-size: 2em;">Mobility and Traveling company</h1>
            </div>

        </div>

        <div class="row mt-4">

            <div class="col-md-6 ">
                <p class="ps-4">Travel is India’s largest mobility platform and one of the world’s largest ride-hailing companies, serving 250+ cities across India, Australia, New Zealand, and the UK. The Ola app offers mobility solutions by connecting customers to drivers and a wide range of vehicles across bikes, auto-rickshaws, metered taxis, and cabs, enabling convenience and transparency for hundreds of millions of consumers and over 1.5 million driver-partners. <br><br>
                    Travel’s core mobility offering in India is supplemented by its electric-vehicle arm, Ola Electric; India’s largest fleet management business, Ola Fleet Technologies and Ola Skilling, that aims to enable millions of livelihood opportunities for India's youth. With its acquisition of Ridlr, India’s leading public transportation app and investment in Vogo, a dockless scooter sharing solution, Ola is looking to build mobility for the next billion Indians. Ola also extends its consumer offerings like micro-insurance and credit led payments through Ola Financial Services and a range of owned food brands through India’s largest network of kitchens under its Food business. <br><br>
                    Travel was founded in Dec 2023 by Vikram kumar verma and with a mission to build mobility for a billion people.<br> </p>
            </div>

            <div class="col-md-6 ">
                <img src="images/red-luxury-sedan-road.jpg" class="img-fluid ps-4">
            </div>

        </div>




        <!--    footer-->
        
            <%@include file="footer.jsp" %>

        
        <!--js cdn-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>


    </body>
</html>
