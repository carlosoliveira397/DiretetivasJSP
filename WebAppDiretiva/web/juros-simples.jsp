<%-- 
    Document   : juros-simples
    Created on : 2 de abr. de 2024, 16:39:09
    Author     : Fatec
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
            juros = juros / 100;
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
        <div>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </div>
        <h3>Juros Simples</h3>
        <form action="juros-simples.jsp">
            <label>Valor</label>
            <input type="number" name="valor"/><br><br>
            <label>Nº Parcela</label>
            <input type="number" name="parcela" min="1"/><label> Mês</label><br><br>
            <label>Juros</label>
            <input type="number" name="juros"/><br><br>
            <input type="submit" name="calc" value="Calcular">
        </form>
        <br><br>
        <% if(errorMessage==null){ %>
            <div>Meses: <%= parcela %></div>
            <div>Porcentagem: <%= juros %> %</div>
            <div>Juros: R$ <%= total %></div>
            <div>Valor total: R$ <%= total + valor %></div>
        <% } else { %>
            <h2><%= errorMessage %></h2>
        <% } %>
    </body>
</html>
