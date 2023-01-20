<%-- 
    Document   : index
    Created on : 30 May, 2022, 10:46:09 PM
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
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>travel tec</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/footerStyle.css" rel="stylesheet" type="text/css"/>


        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <script src="https://kit.fontawesome.com/3c273b998f.js" crossorigin="anonymous"></script>

    </head>
    <body>

        <!--navbar start-->

        <%@include file="navbar.jsp" %>
        <!--navbar end-->

        <!--banner start-->
        <div class="container-fluid" id="banner">
            <div class="row ">

                <div class="col-md-12 text-center  text-white" id="banner-text" style="margin-top:10%">
                    <h2 class="h3" id="banner-heading">Traveling  with TRavel and enjoy  destination</h2>
                    <p class="fs-6" id="banner-para">choose from a variety of vahicals and prices</p>
                </div>

            </div>
            <!--small banner search carbs area-->


            <div class="row mt-5 ms-3"  >
                <div class="col-md-4 col-12 col-sm-12 "  id="booknow-top-div" >
                    <div id="booknow-div" >
                        <!--jkhjlk-->
                        <div class="row bg-light m-0 p-0 pb-2 " style="border-top-left-radius:10px;border-top-right-radius: 10px;border-bottom: 1px solid #e0e0e0">
                            <div class="col-md-4 col-sm-4 col-4 p-2">

                                <a class="nav-link active anchor-black " onclick="linkFunction()" style="margin-left: 12px;"  aria-current="page" href="#">CITY TEXY</a>

                            </div>
                            <div class="col-md-4 col-sm-4 col-4 p-2">
                                <a class="nav-link anchor-black" onclick="linkFunction()" href="#" style="padding-left: 10%">OUTSTATION</a>

                            </div>
                            <div class="col-md-4 col-sm-4 col-4 p-2">
                                <a class="nav-link anchor-black" onclick="linkFunction()" href="#" style="padding-left: 34%">RENTAL</a>

                            </div>
                        </div>





                        <div class="bg-light pb-1 pt-3" id="banner-booknow-body" >

                            <div class="text-center">
                                <h5 class="" id="serchcar-hadd">Your everyday travel partner</h5>
                                <p id="serchcar-para">AC Cabs for point to point travel</p>
                            </div>


                        </div>

                        <div class="container-fluid  bg-light pb-2 ">
                            <div id="pickup-div" class="container-fluid">
                                <div id="pickup"><p>PICKUP</p></div>
                                <div id="location"><input type="text" placeholder="Current ride location" style="margin-left:6% ; background-color: transparent; padding-left: 4px; padding-right: 80px ;padding-top: 0px; padding-bottom: 0px ;border: 0px"></div>
                            </div>
                        </div>

                        <div class="container-fluid  bg-light pb-2 ">
                            <div id="drop-div" class="container-fluid">
                                <div id="drop"><p>DROP</p></div>
                                <div id="estimate"><input type="text" placeholder="Enter drop location" style="margin-left:6% ; background-color: transparent; padding-left: 7px; padding-right: 95px ;padding-top: 0px; padding-bottom: 0px ;border: 0px"></div>
                            </div>
                        </div>

                        <div class="container-fluid  bg-light pb-2 ">
                            <div id="when-div" class="container-fluid">
                                <div id="when"><p>WHEN</p></div>
                                <div  id="select-menu" class="ms-2 mt-1">
                                    <select class="" style=" background-color: transparent; padding-left: 10px; padding-right: 35% ;padding-top: 0px; padding-bottom: 0px ;border: 0px">
                                        <option selected>Now</option>
                                        <option value="1">Schedule for later</option>
                                    </select></div>
                            </div>
                        </div>

                        <div class="container-fluid  bg-light pb-2 " style="border-bottom-left-radius: 10px;border-bottom-right-radius:10px" >

                            <div class="d-grid gap-2">
                                <button class="btn btn-primary " style="padding: 10px;background-color: #42a5f5" type="button">Search Cabs</button>
                            </div>

                        </div>

                    </div>

                </div>
                <!--banner end
                
                <!--container fluid end-->

            </div>


            <!--CAR OCCASION SECTION START -->
            <div class="container-fluid ">

                <div class="row  mt-5">
                    <div class="col-md-12 col-12 col-sm-12">
                        <div class="mt-5" id="heading-sec text-start">
                            <h3 style="font-weight: bolder">A car for every occasion </h3>
                            <p >Ola offers city taxis, inter-city cabs, and local cabs at hourly packages</p>

                        </div>
                    </div>

                </div>


                <div class="row d-flex justify-content-start mt-5">

                    <div class="col-md-4 col-sm-12 col-12 mb-3" style="">

                        <div class="card" style="width: 100%;" id="texi-occasion">
                            <img src="images/texi.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">CITY TEXI</h5>
                                <p class="card-text mt-3">The perfect way to get through your everyday travel needs. City taxis are available 24/7 and you can book and travel in an instant. With rides starting from as low as Rs. 6/km, you can choose from a wide range of options! you can also opt to do your bit environment with Travel Share! .</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-4 col-sm-12 col-12 mb-3">
                        <div class="card" style="width: 100%;" id="outsta-occasion">
                            <img src="images/outstation.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">OUTSTATION</h5>
                                <p class="card-text mt-3">Ride out of town at affordable one-way and round-trip fares with Travel's intercity travel service. Choose from a range of AC cabs driven by top partners, available in 1 hour or book upto 7 days in advance. We have you covered across India presence in 90+ cities with over 500 one ways routes.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-4 col-sm-12 col-12 ">
                        <div class="card" style="width: 100%;" id="rental-occasion">
                            <img src="images/rental.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">RENTAL</h5>
                                <p class="card-text mt-3">With Travel you get a cab at your disposal. So be it a day long business meeting, a shopping trip with your friends or just a day out in a new city, we have you covered. Packages start at 1 hour and can be extended upto 12 hours! . This is wanderfull riding situation and enjoyed the journey.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                    </div>

                </div>


                <!--CAR OCCASION SECTION END -->


                <!--Why us section start-->

                <div class="row  mt-0">
                    <div class="col-md-12 col-12 col-sm-12">
                        <div class="mt-5" id="heading-sec text-start">
                            <h3 style="font-weight: bolder">Why ride with Travel?</h3>
                            <p >The best way to travel to your destination </p>

                        </div>
                    </div>

                </div>

                <div class="row mb-2" style="border-bottom: 1px solid #e0e0e0">
                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/saveMoney.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px">Cabs for Every Pocket </h4>
                                <p class="card-text mb-auto font-para" style=" padding-left: 10px" >From Sedans and SUVs to Luxury cars for special occasions, we have cabs to suit every pocket </p>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/secure.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px ">Secure and Safer Rides </h4>
                                <p class="card-text mb-auto font-para" style=" padding-left: 10px">Verified drivers, an emergency alert button, and live ride tracking are some of the features that we have in place to ensure you a safe travel experience. </p>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/select.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px ">travel Select </h4>
                                <p class="card-text mb-auto font-para" style=" padding-left: 10px">A membership program with Ola that lets you ride a Prime Sedan at Mini fares, book cabs without peak pricing and has zero wait time  </p>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/intertainment.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px ">In Cab Entertainment </h4>                              <p class="card-text mb-auto font-para" style=" padding-left: 10px">

                                    Play music, watch videos and a lot more with Ola Play! Also stay connected even if you are travelling through poor network areas with our free wifi facility. </p>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/share.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px ">Share and Express </h4>
                                <p class="card-text mb-auto font-para" style=" padding-left: 10px"> To travel with the lowest fares choose Ola Share. For a faster travel experience we have Share Express on some fixed routes with zero deviations. Choose your ride and zoom away!</p>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="row g-0 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">

                            <div class="" style="width: 30%;">
                                <img class="img-fluid rounded" src="images/saveMoney.jpg">
                            </div>

                            <div class="ps-2 pe-3 pt-0 pb-1" style="width: 70%;padding-top: 0px">
                                <h4 class="mb-0 font-heading" style="margin-top: -2px; padding-left: 10px ">Cashless Rides</h4>
                                <p class="card-text mb-auto font-para" style=" padding-left: 10px">Now go cashless and travel easy. Simply recharge your Ola money or add your credit/debit card to enjoy hassle free payments</p>
                            </div>

                        </div>
                    </div>
                </div>


                <!--Why us section end-->

                <!--download section start-->

                <div class="row mt-4">

                    <div class="col-md-5 col-sm-12 col-12 mb-4">
                        <img src="images/mobile1.png" class="img-fluid " style="background-color: #EEECEB">
                    </div>

                    <div class="col-md-6 col-sm-12 col-12">
                        <div>
                            <h1 style="font-weight: bolder;" id="download-heading">Download the App</h1>
                            <p style="font-size: 20px;color: #424242;margin-bottom: -8px;" id="downlaod-para">Download the app for the better experience</p>
                        </div>
                        <div>
                            <a href="#"><img src="images/googlePlaystore.ico" class="img-fluid me-2" style="width: 33%;"></a>
                            <a href="#"><img src="images/appleStore.ico" class="img-fluid" style="width: 33%;"></a>
                        </div>
                    </div>

                </div>

                <!--download section end-->


                <!--container fluid end-->
            </div>

            <!--footer start -->

            <%@include file="footer.jsp" %>



            <script>
                function linkFunction(){
                    document.getElementsByClassName('anchor-black').style.color = 'red';
                }
            </script>



            <!--js cdn-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
