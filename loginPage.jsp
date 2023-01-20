
<%@page import="com.travel.entities.User"%>
<%@page import="com.travel.entities.Message"%>
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
        <title>Login Page</title>
        <!--bootstrap cdn?-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--normal css link-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/style2.css" rel="stylesheet" type="text/css"/>
        <!--<link href="css/signUpStyle.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/loginStyle.css" rel="stylesheet" type="text/css"/>


        <!--telephone link-->
        <link href="css/intelTelInput.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/intlTelInput.css" rel="stylesheet" type="text/css"/>
        <link href="css/demo.css" rel="stylesheet" type="text/css"/>

        <!--bootstrap icon cdn-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--font awasome icon-->
        <script src="https://kit.fontawesome.com/3c273b998f.js" crossorigin="anonymous"></script>

        <style>
            .iti__flag {
                background-image: url("images/flags.png");
            }

            @media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi) {
                .iti__flag {
                    background-image: url("images/flags@2x.png");
                }
            }
        </style>

    </head>
    <body>
        
         <!--navbar include-->
        <div class="container-fluid p-0 m-0" style="    position: relative;top: -20px;left: -20px;">
        <%@include file="navbar.jsp" %>
        </div>

        <div class="row">
            <h4 class="text-center mb-1" style="margin-top: 6%"> Login with Travel</h4>
            <div class="col-md-6 col-sm-12 col-12 offset-md-3  d-flex justify-content-evenly">
                <div class="row">
                    <form action="LoginServlet" method="POST">

                        <%
                            Message m = (Message) session.getAttribute("msg");
                            if (m != null) {
                        %>
                        <div class=" mt-3 col-12 alert input-style <%=m.getCssClass() %>" role="alert" style="padding-left: 3%; padding-top: 6px; padding-bottom: 6px; width: 96%; margin-left: 3%;">
                            <%=m.getContent() %>
                        </div>


                        <%
                            session.removeAttribute("msg");
                            }
                        %>


                        <div class="mt-3 col-12" style="padding-left: 3%;" >
                            <label for="formGroupExampleInput" class="form-label  p-0 label-style" style="display: block">Enter phone number(required)</label>
                            <input id="phone" name="phone" type="tel" class="form-control input-style " aria-label="phone number" required >
                            <br>
                            <span id="valid-msg" class="hide"></span>
                            <span id="error-msg" class="hide pb-0" style="color: #e53935"  ></span>
                        </div>


                        <div class="mt-3 col-12" style="padding-left: 3%;" >
                            <label for="formGroupExampleInput" class="form-label  p-0 label-style" style="display: block">Enter a password(required)</label>
                            <input  name="password" type="password" class="form-control input-style " aria-label="email" placeholder="Enter a password" required>
                        </div>

                        <div class="mt-4 col-12" style="padding-left: 3%;" >

                            <button type="submit" class=" btn btn-primary form-control input-style  ">LOGIN</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>

        <script src="js/intlTelInput.min.js"></script>

        <script>
            var input = document.querySelector("#phone");
            var errorMsg = document.querySelector("#error-msg");
            var validMsg = document.querySelector("#valid-msg");

            // here, the index maps to the error code returned from getValidationError - see readme
            var errorMap = [
                "Invalid number",
                "Invalid country code",
                "Too short",
                "Too long",
                "Invalid number",
            ];

            var iti = window.intlTelInput(input, {
                initialCountry: "in",
                nationalMode: true,
                utilsScript: "js/utils.js",
            });

            var reset = function () {
                input.classList.remove("error");
                errorMsg.innerHTML = "";
                errorMsg.classList.add("hide");
                validMsg.classList.add("hide");
            };

            // on blur: validate
            input.addEventListener("blur", function () {
                reset();
                if (input.value.trim()) {
                    if (iti.isValidNumber()) {
                        validMsg.classList.remove("hide");
                    } else {
                        input.classList.add("error");
                        var errorCode = iti.getValidationError();
                        errorMsg.innerHTML = errorMap[errorCode];
                        errorMsg.classList.remove("hide");
                    }
                }
            });

            // on keyup / change flag: reset
            input.addEventListener("change", reset);
            input.addEventListener("keyup", reset);
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
