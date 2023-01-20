<%-- 
    Document   : feature
    Created on : 8 Jun, 2022, 8:55:04 AM
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
        <title>Feature of Travel</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/style2.css" rel="stylesheet" type="text/css"/>

        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>

        <!--navbar-->
        <%@include file="navbar.jsp" %>


        <div class="container-fluid" id="freatureBanner"  >
            <div class="row mb-0">

                <div class=" col-sm-12 col-12 col-md-12  text-center mt-5 text-white" id="freatureBanner-text">
                    <h1 class="h3" id="banner-heading" style="font-weight: bolder;font-size: 3em;">Travel Feature</h1>

                </div>

            </div>
        </div>


        <div class="container-fluid">

            <div class="row mt-5 ">

                <div class=" col-sm-12 col-12 col-md-4 feature-property-div">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="bi bi-wallet icon-size"></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Cabs for every Pocket </h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >We have cabs to suit every pocket. choose from a wide range of cars specific to your travel needs.</p>
                        </div>

                    </div>
                </div>

                <div class=" col-sm-12 col-12 col-md-4 feature-property-div">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="bi bi-wifi icon-size"></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Free Wi-Fi </h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >Always stay connected, even when you are on teh move with Travel's free.</p>
                        </div>

                    </div>
                </div>

                <div class=" col-sm-12 col-12 col-md-4 feature-property-div">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="bi bi-check-square icon-size"></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Cashless Ride</h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >No Cash? No worries. Always enjoy non-stop cashless and hassle-free ride with Travel.</p>
                        </div>

                    </div>
                </div>


                <div class=" col-sm-12 col-12 col-md-4 feature-property-div mt-4 mb-4">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="fa-solid fa-crown" style="padding-left: 27%;font-size: 39px; padding-top: 15%;"></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Top Rated Driver</h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >All our driver-partners are background verified and trained to deliver only the best experience </p>
                        </div>

                    </div>
                </div>


                <div class=" col-sm-12 col-12 col-md-4 feature-property-div mt-4 mb-4">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="fa-solid fa-user-shield" style="padding-left: 27%;font-size: 39px; padding-top: 18%;"></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Safety First</h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >keep your loved ones informed about your travel routes call emergency services when in need</p>
                        </div>

                    </div>

                </div>

                <div class=" col-sm-12 col-12 col-md-4 feature-property-div mt-4 mb-4">
                    <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                        <div class="" style="width: 20%;">
                            <i class="bi bi-stopwatch icon-size"></i></i>
                        </div>

                        <div class="ps-2 pe-3 pt-0 pb-1" style="width: 80%;padding-top: 0px">
                            <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">24/7 Customer Support</h4>
                            <p class="card-text mb-auto font-para" style=" padding-left: 10px" >A dedicated 24/7 customer support team always at you service to help solve any problem</p>
                        </div>

                    </div>

                </div>

            </div>
        </div>

        <!--footer--> 
        <%@include file="footer.jsp" %>

        <!--js cdn-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>


    </body>
</html>
