<%-- 
    Document   : adauga_Volumpoezii
    Created on : Jan 19, 2019, 9:37:16 PM
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
      
<body class="text-center" style="background-image: url(images/homepage0-2.jpg);
      background-position: top left;	background-size: 100%;
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
<font size="3">
<div align="center">
        <div id="add">
            <h1> Adauga un nou volum:</h1>
            <form action="VolumpoeziiController" method="GET">
                <table>
                    <tr>
                        <td> Poet: </td>
                        <td>
                            <select name="idpoet">
                                <c:forEach items="${listaPoeti}" var="Poeti">
                                    <option value="${Poeti.idpoet}">${Poeti.idpoet}, ${Poeti.nume}, ${Poeti.prenume}, ${Poeti.nationalitate}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Carte: </td>
                        <td>
                            <select name="idcarte">
                                <c:forEach items="${listaCarti}" var="Carti">
                                    <option value="${Carti.idcarte}">${Carti.idcarte}, ${Carti.numeCarte}, ${Carti.edituraCarte}, ${Carti.isbn}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Nume Volum: </td>
                        <td><input type="text" name="NumeVolum"></td>
                    </tr>
                    <tr>
                        <td> Data: </td>
                        <td><input type="text" name="DataLansare"></td>
                    </tr>
                    <tr>
                        <td> Tema: </td>
                        <td><input type="text" name="Tema"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="adaugaVolumpoezii" value="Adauga"></td>

                    </tr>
                </table>
            </form>
        </div>

        <form action="VolumpoeziiController" method="POST">
            <input type="submit" name="afiseazaVolumpoezii" value="Afiseaza"> &nbsp; &nbsp;<br>
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