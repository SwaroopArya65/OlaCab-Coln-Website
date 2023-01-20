
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something went wrong</title>
        <!--bootstrap css cdn-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>
        <div class="container p-4 text-center ">
           
            <img src="images/execption.png " width="25%" class="img-fluid">
            <h2 class="display-3">Something went wrong</h2>
            <p><%=exception %></p>
            <a href="index.jsp" class="btn btn-outline-primary mt-3">Home Page</a>
      
            
        </div>
        
        
    </body>
</html>
