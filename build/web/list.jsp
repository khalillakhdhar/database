<%-- 
    Document   : list.jsp
    Created on : 20 oct. 2020, 15:41:32
    Author     : TPC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           if(!session.getAttribute("etat").equals("connecté"))
           {
           response.sendRedirect("index.jsp");
           
           }
            %>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <%
            Admin ad=new Admin();
            ResultSet res=ad.aff();
            %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Page de liste!</h1> <a href="index.jsp">Déconnexion</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Type</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    while(res.next())
                
                { 
                %>
                <tr>
                    <td><%= res.getInt("id") %></td>
                    <td><%= res.getString("nom") %></td>
                    <td><%= res.getString("type") %></td>
                </tr>
               <% } %>
            </tbody>
        </table>

        
        
    </body>
</html>
