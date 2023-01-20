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
        <title>careers page</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/careers.css" rel="stylesheet" type="text/css"/>

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
                    <h1 class="h3 " id="banner-heading" style="font-weight: bolder;font-size: 3em;">Life at Travel</h1>

                </div>

            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12 ">
                <h1 class="ps-4" style="font-weight: bolder;font-size: 2em;">Life at Travel</h1>
            </div>

        </div>

        <div class="row mt-4">

            <div class="col-md-6 ">
                <p class="ps-4">Travel is built on an entrepreneurial DNA. Innovation, experimentation and problem-solving are at the core of what we do. This has helped us revolutionize mobility like never before, helping build locally relevant and scalable solutions, as well as cutting edge technology for India and the world.<br>

                    From changing the way India commutes using bikes, autos and cabs through an app, to making bold futuristic bets on emerging areas like Electric, or scaling our technology to serve the unique needs of global markets, Ola’s team of 7,000+, are torchbearers of its mission to build mobility for a billion people.<br> </p>
            </div>

            <div class="col-md-6 ">
                <img src="images/manwork.jpg" class="img-fluid ps-4" height="150px">
            </div>

        </div>




        <!--    footer-->
        <%@include file="footer.jsp" %>


        <!--js cdn-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>


    </body>
</html>