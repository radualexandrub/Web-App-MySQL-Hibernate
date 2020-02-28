<%-- 
    Document   : adauga_Poeti
    Created on : Jan 19, 2019, 9:37:24 PM
    Author     : raddu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tabela Poeti</title>
    
    
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

<body class="text-center" style="background-image: url(images/adauga2-2.jpg);
      background-position: top left;
      background-size: 100%;
      background-repeat: repeat;">

  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-4 text-left w-75">Biblioteca Poetilor</h1>
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
    
 <div align="center">   
            <font size="3">
    
            <div id="add">
            <h1> Adauga Poeti </h1>

            <form action="PoetiController" method="GET" >
                <table>
                    <tr>
                        <td> Nume Poet: </td>
                        <td><input type="text" name="Nume"></td>
                    </tr>
                    <tr>
                        <td> Prenume Poet: </td>
                        <td><input type="text" name="Prenume"></td>
                    </tr>
                    <tr>
                        <td> Nationalitate Poet: </td>
                        <td><input type="text" name="Nationalitate"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="adaugaPoeti" value="Adauga"></td>
                    </tr>
                </table>
            </form>
        </div>

        <form action="PoetiController" method="POST">
            <input type="submit" name="afiseazaPoeti" value="Afiseaza"> &nbsp; &nbsp;<br>
        </form>
        <br>
    
        </font>
 </div>   
    
    
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <!-- Script: Smooth scrolling between anchors in a same page -->
  <script src="js/smooth-scroll.js" style=""></script>
</body>

</html>