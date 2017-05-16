<%-- 
    Document   : Inicio
    Created on : 15/05/2017, 23:48:19
    Author     : Jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

  
  <!-- /navbar -->

  <div class="row clearfix">
  </div>
  <div class="col-md-1 column">
  </div>
  <div class="col-md-10 column">
	<p class="lead">Completo al 40%</p>
    <div class="progress">
      <div class="progress-bar" role="progressbar" style="width: 40%;">
        <span class="sr-only">Completo al 40%</span>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h3 class="panel-title">
						Domanda
					</h3>
      </div>
      <div class="panel-body">
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked=""> Questa è la risposta uno. Fossi in te, la lascerei perdere
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Forse la due si avvicina... ma non ci giurerei
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3"> Opzione tre — da' retta, è questa
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios4" value="option4"> Sulla risposta quattro non ci metterei la mano sul fuoco...
          </label>
        </div>

      </div>
      <div class="panel-footer">
        <a href="#" class="btn btn-primary " role="button">Confirmar</a>
        <a href="#" class="btn btn-default disabled" role="button">Avançar</a>
      </div>
    </div>
    <div class="col-md-1 column">
    </div>
  </div>
</div>
    </body>
</html>
