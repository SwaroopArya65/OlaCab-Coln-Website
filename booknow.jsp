<%@page import="com.travel.entities.User"%>
<%@page errorPage="error_exc.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    String display = "block";
    if (user == null) {
        response.sendRedirect("loginPage.jsp");
    } else {
        display = "none";
    }
    session.removeAttribute("currentBook");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Now</title>

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
        <!--navbar start-->
        <div class="container-fluid p-0 m-0" style="position: fixed;z-index: 101 ">
            <nav class="navbar navbar-expand-lg  navbar-dark bg-dark " id="top-nav"  >
                <div class="container-fluid" >
                    <a href="index.jsp" class="active text-white" style="text-decoration: none "><i class="fab fa-slack" style="font-size: 24px;"></i>
                        <span class="logo_name" style="font-size: 21px;">TRAVEL</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <li class="nav-item dropdown  ">
                                <a class="nav-link dropdown-toggle fs-6 text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Company
                                </a>
                                <ul class="dropdown-menu m-0 p-0" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="About.jsp">About us</a></li>



                                    <li><a class="dropdown-item" href="careers.jsp">Careers</a></li>


                                    <li><a class="dropdown-item" href="contactUs.jsp">Contact us</a></li>

                                </ul>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link  fs-6 text-white" aria-current="page" href="feature.jsp">Feature</a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link  fs-6 text-white" aria-current="page" href="support.jsp">Support</a>
                            </li>


                        </ul>
                        <form class="d-flex" role="search">

                            <div class=" nav-btn">
                                <a class="btn text-white me-1" id="login-btn" href="" data-bs-toggle="modal" data-bs-target="#exampleModal"> <span><i class="fa fa-user-circle"> </i> </span><%=user.getFirstName()%></a>
                            </div>




                        </form>
                    </div>
                </div>
            </nav>

        </div>
        <!--navbar end-->



        <div class="container-fluid p-0 m-0">
            <div class="row  ms-3 justify-content-center"  >
                <div class="col-md-4 col-12 col-sm-12 mt-4 "  id="booknow-top-div" >
                    <div id="booknow-div" >
                        <!--jkhjlk-->
                        <div class="row bg-light m-0 p-0 pb-2 " style="border-top-left-radius:10px;border-top-right-radius: 10px;border-bottom: 1px solid #e0e0e0">
                            <div class="col-md-4 col-sm-4 col-4 p-2">

                                <a class="nav-link active anchor-black " style="margin-left: 12px;"  aria-current="page" href="#">CITY TEXY</a>

                            </div>
                            <div class="col-md-4 col-sm-4 col-4 p-2">
                                <a class="nav-link anchor-black"  href="#" style="padding-left: 10%">OUTSTATION</a>

                            </div>
                            <div class="col-md-4 col-sm-4 col-4 p-2">
                                <a class="nav-link anchor-black" href="#" style="padding-left: 34%">RENTAL</a>

                            </div>
                        </div>





                        <div class="bg-light pb-1 pt-3" id="banner-booknow-body" >

                            <div class="text-center">
                                <h5 class="" id="serchcar-hadd">Your everyday travel partner</h5>
                                <p id="serchcar-para">AC Cabs for point to point travel</p>
                            </div>


                        </div>
                        <form action="paymentDeatils.jsp" method="POST">
                            <div class="container-fluid  bg-light pb-2 ">
                                <div id="pickup-div" class="container-fluid">
                                    <div id="pickup"><p>PICKUP</p></div>
                                    <div id="location"><input  id="pickup-input" name="currentLocation" type="text" required placeholder="Current ride location" style="margin-left:6% ; background-color: transparent; padding-left: 4px; padding-right: 97px ;padding-top: 0px; padding-bottom: 0px ;border: 0px"></div>
                                </div>
                            </div>

                            <div class="container-fluid  bg-light pb-2 ">
                                <div id="drop-div" class="container-fluid">
                                    <div id="drop"><p>DROP</p></div>
                                    <div id="estimate"><input type="text" name="dropLocation" placeholder="Enter drop location" required style="margin-left:6% ; background-color: transparent; padding-left: 7px; padding-right: 97px ;padding-top: 0px; padding-bottom: 0px ;border: 0px"></div>
                                </div>
                            </div>
                            <div class="container-fluid  bg-light pb-2 ">
                                <div id="drop-div" class="container-fluid">
                                    <div id="drop"><p>DIST..</p></div>
                                    <div id="estimate"><input type="number" name="distance" placeholder="Enter distance (km)" required style="margin-left:6% ; background-color: transparent; padding-left: 7px; padding-right: 97px ;padding-top: 0px; padding-bottom: 0px ;border: 0px"></div>
                                </div>
                            </div>

                            <div class="container  bg-light pb-2 "  style="border-bottom-left-radius: 10px;border-bottom-right-radius:10px; width: 99%"  >

                                <div class="d-grid gap-2">
                                    <button class="btn btn-primary form-control " style="padding: 10px;background-color: #42a5f5; width: 100%;" type="submit">BOOK NOW</button>
                                </div>

                            </div>
                        </form>
                    </div>

                    <div class="container text-center mt-3">
                        <span style="font-size: 35px;color: #9e9e9e"><i class="bi bi-geo-alt-fill"></i></span>
                        <P style="color: #9e9e9e">For an accurate pickup-<br> Please allow location access</P>
                        <p style="color: #9e9e9e">
                            1.Turn on your device location.<br>
                            2.Give 'TravelCabs' access your <br>browser location.
                        </p>

                    </div>

                </div >


                <div class="col-md-8 col-12 col-sm-12  d-none d-md-block "  id="booknow-top-div"  style="background-image: url(images/booknow.jpeg);background-position: center;background-size: cover; height: 600px">

                </div>


            </div>
        </div>

        <!-- Modal start -->
        <div  class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm " >
                <div class="modal-content " >
                    <div class="modal-header" style="background-color: #80cbc4">
                        <h5 class="modal-title" id="exampleModalLabel">travel</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                    </div>
                    <div class="modal-body" style="background-color:#EEECEB; border-bottom-left-radius: 7px; border-bottom-right-radius: 7px">
                        <div class="container text-center mt-2" >


                            <img src="pic/<%=user.getProfile()%>" width="30%" style="border-radius: 50%">
                            <h5 class="modal-title" id="staticBackdropLabel"><%=user.getFirstName()%> &nbsp;<%=user.getLastName()%></h5>
                            <h5 class="modal-title" id="staticBackdropLabel" style="color: #616161"><%=user.getPhoneNo()%></h5>
                            <h6 class="modal-title" id="staticBackdropLabel" style="color: #616161"><%=user.getEmail()%></h6>

                        </div>
                        <div class="container text-center p-2 mt-3" style="background-color: white; border-radius: 5px; ">
                            <a href="allBookingDetails.jsp" style="text-decoration: none">See all rides</a>
                        </div>
                        <div class="container p-2 mt-3" style="background-color: white; border-radius: 5px; ">
                            <a href="#" style="text-decoration: none ;color: black;"> <span><i class="bi bi-headset"> </i></span>&nbsp;  Support messages</a>
                        </div>

                        <div class="container p-2 mt-3" style="background-color: white; border-radius: 5px; ">
                            <a href="#" style="text-decoration: none ;color: black;"> <span><i class="bi bi-wallet-fill"></i></span>&nbsp;  Wallet</a>
                        </div>

                        <div class="container text-center p-2 mt-3" style="background-color: white; border-radius: 5px; ">
                            <a href="LogoutServlet" style="text-decoration: none">Log out</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!--model end-->


        <script>
            function myFunction() {
                document.getElementById('select-menu').style.border = '0px solid red';
            }
        </script>

        <!--jQuery cdn-->
        <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

        <!--js cdn-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

        <!--geolocation api-->

        <script>
            function cmb() {
                if (navigator.geolocation) {
//                         alert("your browserr support geolocation api")

                    navigator.geolocation.getCurrentPosition(mycoords, );


                } else {
                    alert("your browserr not support geolocation api")
                }

            }
            function mycoords(position) {
                var lat = position.coords.latitude;
                var longt = position.coords.longitude;
//                     alert("latitude: " +lat+ "longitude: "+longt);

                var myapi = "https://api.opencagedata.com/geocode/v1/json?q=" + lat + "," + longt + "&key=6f1073da7a124b9bbbfea1e8fa908f54";

                // $("h1").text(myapi)


                $.get(myapi, function (data) {
                    console.log(data);
                    $("#pickup-input").val(data.results[0].components.road + " " + data.results[0].components.postcode + " " + data.results[0].components.state_district + " " + data.results[0].components.state + " " + data.results[0].components.country);
                    // $("h1").text(data.results[0].components.state);
                });


            }
        </script>



    </body>
</html>
