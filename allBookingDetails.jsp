<%-- 
    Document   : allBookingDetails
    Created on : 6 Jul, 2022, 5:57:26 PM
    Author     : dangi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.travel.helper.ConnectionProvider"%>
<%@page import="com.travel.dao.BookDao"%>
<%@page import="com.travel.entities.Book"%>
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
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book|| Payment Details</title>

        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/style2.css" rel="stylesheet" type="text/css"/>

        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <script src="https://kit.fontawesome.com/3c273b998f.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
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
                <div class="col-12 col-sm-12 mt-4 "  id="booknow-top-div" >
                    <br>
                    <br>
                    <h1 class="text-center">Your All Rides</h1>

                    <table class="table table-group-divider" id="myTable">
                        <thead>
                            <tr>
                                <th>S.N</th>
                                <th>Book Id</th>
                                <th>Current Location</th>
                                <th>Drop Location</th>
                                <th>Distance</th>
                                <th>Total Fare</th>
                                <th>Payment Mode</th>
                                <th>Transaction Id</th>
                                <th>Payment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                int sn = 0;
                                String payment;
                                BookDao bookData = new BookDao(ConnectionProvider.getConnection());
                                ArrayList<Book> bookList = bookData.getBookDetailsByCustomerId(user.getId());
                                for (Book book : bookList) {
                                    sn++;
                                    payment = "NO";
                                    if (book.isPayment()) {
                                        payment = "YES";
                                    }
                            %>
                            <tr>
                                <td><%=sn%></td>
                                <td><%=book.getBookId()%></td>
                                <td><%=book.getCurrentLocation()%></td>
                                <td><%=book.getDropLocation()%></td>
                                <td><%=book.getDistance()%></td>
                                <td><%=book.getFare()%></td>
                                <td><%=book.getPaymentMode()%></td>
                                <td><%=book.getTransactionId()%></td>
                                <td><%=payment%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>



                </div>


            </div >




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


    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });
    </script>

</body>
</html>
