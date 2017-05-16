<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjetoPOO</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
    </head>
    <body>
        <h1>WebQUiz</h1>
        <h2>Índice</h2>
        <hr/>
        <h3>Última nota:</h3>
        <%= 100.0*Quiz.getLastGrade()%>%
        <h3>Média</h3>
        <%= 100.0*Quiz.getGradeAverage()%>%
        <hr/>
        <a href="test.jsp">
            <button>Iniciar Teste</button>
        </a>
    </body>
</html>
