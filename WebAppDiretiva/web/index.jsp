<%-- 
    Document   : index
    Created on : 2 de abr. de 2024, 14:51:38
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </div>
        <h3>Index</h3>
    <div><%= new Date() %></div>
    </body>
</html>
