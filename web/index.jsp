<%-- 
    Document   : index
    Created on : 20 oct. 2020, 15:29:15
    Author     : TPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <%
        session.setAttribute("etat","déconnecté");  

        %>
        
        
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align='center'><h1>Espace administrateur</h1></div>
        <form action="AuthServlet" method="post">
            
            <table align="center"><tr><td>Code d'accés:</td><td><input class="form-control" type="text" name="code" required pattern="[0-9]{3,20}"></td>
                <td><input type="submit" class="btn btn-primary" value="accéder"></td>
            
                </tr></table></form>
    </body>
</html>
