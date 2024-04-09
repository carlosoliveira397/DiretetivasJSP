<%-- 
    Document   : juros-simples-total
    Created on : 8 de abr. de 2024, 22:08:53
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<%
    String errorMessage = null;
    int parcela = 0;
    double valor = 0, juros = 0, total = 0;
    try{
        if(request.getParameter("calc")!=null){
            valor = Double.parseDouble(request.getParameter("valor"));
            parcela = Integer.parseInt(request.getParameter("parcela"));
            juros = Double.parseDouble(request.getParameter("juros"));
            total = valor * juros * parcela;
        }
    }catch(Exception ex){
        errorMessage = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% if(errorMessage==null){ %>
            <div><%= total %></div>
        <% } else { %>
            <h2><%= errorMessage %></h2>
        <% } %>
    </body>
</html>
