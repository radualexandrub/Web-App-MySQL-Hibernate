<%-- 
    Document   : tabela_Volumpoezii
    Created on : Jan 19, 2019, 9:38:31 PM
    Author     : raddu
--%>

<%@page import="DAOImpl.CartiDaoImpl"%>
<%@page import="DAOImpl.PoetiDaoImpl"%>
<%@page import="pojo.Carti"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Poeti"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volumpoezii</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeVolumpoezii").hide();
                $("#modificaVolumpoezii").hide();

                $("#update").click(function () {
                    $("#modificaVolumpoezii").show();
                    $("#stergeVolumpoezii").hide();
                });
                $("#delete").click(function () {
                    $("#stergeVolumpoezii").show();
                    $("#modificaVolumpoezii").hide();
                });
            });
        </script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Volum Poezii</title>
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
<body class="text-center" style="background-image: url(images/homepage0-2.jpg);
      background-position: top left;
      background-size: 100%;
      background-repeat: repeat;">
    
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-4 text-left w-75">Tabela Volum Poezii:</h1>
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
    
    
    <div align="center"> <font size="2">
    

        <%
            PoetiDaoImpl poetDaoImpl = new PoetiDaoImpl();
            CartiDaoImpl carteDaoImpl = new CartiDaoImpl();
            List<Poeti> listaPoeti = new ArrayList();
            listaPoeti = poetDaoImpl.afiseazaPoeti();
            List<Carti> listaCarti = new ArrayList();
            listaCarti = carteDaoImpl.afiseazaCarti();
            request.setAttribute("listaPoeti", listaPoeti);
            request.setAttribute("listaCarti", listaCarti);
        %>
        <h1 align="center"> Tabela Volumpoezii:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>Id Volum poezii:</b></td>
                <td><b>Id Poet:</b></td>
                <td><b>Nume:</b></td>
                <td><b>Prenume:</b></td>
                <td><b>Nationalitate:</b></td>
                <td><b>Id Carte:</b></td>
                <td><b>Nume:</b></td>
                <td><b>Editu:</b></td>
                <td><b>isbn :</b></td>
                <td><b>Nume Volum:</b></td>
                <td><b>Data lansare:</b></td>
                <td><b>Tema:</b></td>
            </tr>
            <c:forEach var="Volumpoezii" items="${listaVolumpoezii}">
                <tr>
                    <td>${Volumpoezii.idvolumpoezii}</td>
                    <td>${Volumpoezii.poeti.idpoet}</td>
                    <td>${Volumpoezii.poeti.nume}</td>
                    <td>${Volumpoezii.poeti.prenume}</td>
                    <td>${Volumpoezii.poeti.nationalitate}</td>
                    <td>${Volumpoezii.carti.idcarte}</td>
                    <td>${Volumpoezii.carti.numeCarte}</td>
                    <td>${Volumpoezii.carti.edituraCarte}</td>
                    <td>${Volumpoezii.carti.isbn}</td>
                    <td>${Volumpoezii.numeVolum}</td>
                    <td>${Volumpoezii.dataLansare}</td>
                    <td>${Volumpoezii.tema}</td>
                </tr>
            </c:forEach>
        </table>
        <form action="VolumpoeziiController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('idpoet').disabled = this.checked;
                        document.getElementById('idcarte').disabled = this.checked;
                        document.getElementById('NumeVolum').disabled = this.checked;
                        document.getElementById('DataLansare').disabled = this.checked;
                        document.getElementById('Tema').disabled = this.checked;"><br><br>
                idVolumpoezii:
                <select name="idvolumpoezii">
                    <c:forEach items="${listaVolumpoezii}" var="Volumpoezii">
                        <option value="${Volumpoezii.idvolumpoezii}">${Volumpoezii.idvolumpoezii}</option>
                    </c:forEach>
                </select>
                <br><br>
                idpoet:
                <select name="idpoet">
                    <c:forEach items="${listaPoeti}" var="Poeti">
                        <option value="${Poeti.idpoet}">${Poeti.idpoet}, ${Poeti.nume}, ${Poeti.prenume}</option>
                    </c:forEach>
                </select>
                <br><br>
                idcarte:
                <select name="idcarte">
                    <c:forEach items="${listaCarti}" var="Carti">
                        <option value="${Carti.idcarte}">${Carti.idcarte}, ${Carti.numeCarte}, ${Carti.edituraCarte}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica nume: <input id="NumeVolum" type="text" name="NumeVolum"><br><br>
                Modifica data lansarii: <input id="DataLansare" type="text" name="DataLansare"> <br><br>
                Modifica tema: <input id="Tema" type="text" name="Tema"> <br><br>
                <button type="submit" id="modificaVolumpoezii" name="modificaVolumpoezii"> Modifica</button> <br> <br>
                <button type="submit" id="stergeVolumpoezii" name="stergeVolumpoezii"> Sterge </button>
            </p>
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