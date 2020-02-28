<%-- 
    Document   : tabela_Carti
    Created on : Jan 19, 2019, 9:37:46 PM
    Author     : raddu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carti</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeCarti").hide();
                $("#modificaCarti").hide();

                $("#update").click(function () {
                    $("#modificaCarti").show();
                    $("#stergeCarti").hide();
                });
                $("#delete").click(function () {
                    $("#stergeCarti").show();
                    $("#modificaCarti").hide();
                });
            });
        </script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Conference Elegant - Pingendo template</title>
  <meta name="description" content="Free Bootstrap 4 Pingendo Elegant template for unique events.">
  <meta name="keywords" content="Pingendo conference event elegant free template bootstrap 4">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="elegant.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <!-- Script: Make my navbar transparent when the document is scrolled to top -->
  <script src="js/navbar-ontop.js"></script>
  <!-- Script: Animated entrance -->
  <script src="js/animate-in.js"></script>
        
    </head>
<body class="text-center" style="background-image: url(images/14521868575_bde0905396_h-2.jpg);	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
        
    
<div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-4 text-left w-75">Biblioteca poetilor</h1>
        </div>
      </div>
    </div>
    
    
    
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="nav">
            <li class="nav-item text-light bg-dark">
              <a href="index.html" class="nav-link active text-white">Acasa<br></a>
            </li>
            <li class="nav-item text-white bg-dark">
              <a href="adauga_Poeti.jsp" class="nav-link active text-white">Poeti</a>
            </li>
            <li class="nav-item text-white bg-dark">
              <a href="adauga_Carti.jsp" class="nav-link active text-white">Carti</a>
            </li>
            <li class="nav-item text-white bg-dark">
              <a href="adauga_Volumpoezii.jsp" class="nav-link active text-white">Volume<br></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
    <font size="2">
    
    
        <h1 align="center"> Tabela Carti:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>Id Carte:</b></td>
                <td><b>Nume Carte:</b></td>
                <td><b>Editura:</b></td>
                <td><b>ISBN:</b></td>
            </tr>
            <c:forEach var="Carti" items="${listaCarti}">
                <tr>
                    <td>${Carti.idcarte}</td>
                    <td>${Carti.numeCarte}</td>
                    <td>${Carti.edituraCarte}</td>
                    <td>${Carti.isbn}</td>

                </tr>
            </c:forEach>
        </table>
        <form action="CartiController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('NumeCarte').disabled = this.checked;
                        document.getElementById('EdituraCarte').disabled = this.checked;
                        document.getElementById('ISBN').disabled = this.checked;"><br><br>
                <select name="idcarte">
                    <c:forEach items="${listaCarti}" var="Carti">
                        <option value="${Carti.idcarte}">${Carti.idcarte}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica Nume: <input id="NumeCarte" type="text" name="NumeCarte"><br><br>
                Modifica Editura: <input id="EdituraCarte" type="text" name="EdituraCarte"> <br><br>
                Modifica ISBN: <input id="ISBN" type="text" name="ISBN"> <br><br>
                <button type="submit" id="modificaCarti" name="modificaCarti"> Modifica</button> <br> <br>
                <button type="submit" id="stergeCarti" name="stergeCarti"> Sterge </button>
            </p>
        </form>

        </font>   
        
        
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <!-- Script: Smooth scrolling between anchors in a same page -->
  <script src="js/smooth-scroll.js" style=""></script>
</body>

</html>