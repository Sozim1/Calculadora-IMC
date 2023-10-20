<%-- 
    Document   : imc
    Created on : 19 de out. de 2023, 21:22:09
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
    </head>
    <body>
        <h1>Calculadora IMC = Resultados</h1>
        <hr>
        <%
          float peso = Float.parseFloat(request.getParameter("peso"));
          float altura = Float.parseFloat(request.getParameter("altura"));
          
          float imc = peso / (altura * altura);
          
          out.print(imc);
                  %>
        <h2>Dados Informados</h2>
        <ul>
            <li>Altura: <%=altura %> </li>
            <li>Peso: <%=peso %></li> 
        </ul>
        <h2>Resultados: </h2>
        <ul>
            <li><b>IMC:</b> <%=imc %></li>
        </ul>
    </body>
</html>
