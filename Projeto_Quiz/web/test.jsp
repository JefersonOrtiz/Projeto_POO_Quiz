<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("test")!=null){
        Quiz.validateTest(new String[]{
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3"),
            request.getParameter("4"),
            request.getParameter("5"),
            request.getParameter("6"),
            request.getParameter("7"),
            request.getParameter("8"),
            request.getParameter("9"),
        });
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
    </head>
    <body>
        
        <div class="container">

  
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h3 class="panel-title">
						Quiz:Conhecimento Gerais e Atualidades
					</h3>
      </div>
      <div class="panel-body">
        <form>
            <%ArrayList<Question> test = Quiz.getTest();%>
            <%for(Question q: test) { %>
            <h4><%= q.getQuestion() %></h4>
                <%for(String alternative: q.getAlternatives()){%>
                <input type="radio" name="<%=test.indexOf(q)%>"
                       value="<%=alternative%>"/><%=alternative%> 
                <%}%> 
            <hr/>
            <%}%>
            <input type="submit" name="test" value="Concluir"/>
        </form>
      </div>
    </div>
    <div class="col-md-1 column">
    </div>
  </div>
</div>
    </body>
</html>
