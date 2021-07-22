<%-- 
    Document   : alta
    Created on : 21/07/2021, 01:03:31 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Hospital Gutierrez Alta</title>
        <!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<!--Ventanas emergentes-->
<link rel="stylesheet" type="text/css" href="css/ventanas.css">
<link rel="stylesheet" href="style.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link ref="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/geolocation.css">
<link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
<script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="demobar_files/bootstrap.js"></script>
<script src="js/ie-emulation-modes-warning.js"> </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-----------------------------/BOOTSTRAP----------------------------->

    </head>
<body style="background-color: #5289F0">

<h1>Sistema Hospital GUTIERREZ SA de CV</h1>
<hr>

<%@page import = "java.sql.*"%>
<%@page import = "conexionbd.ConexionJSP"%>
<%@page errorPage = "error.jsp"%>

<%
ConexionJSP conexion = new ConexionJSP ("jdbc:mysql://localhost/bddtigutierrez", "root", "");
String curp=request.getParameter("curp");
String nombre=request.getParameter("nombre");
String apePaterno=request.getParameter("apepat");
String apeMaterno=request.getParameter("apemat");
String fecha = request.getParameter("fecha");
String fechafinal = request.getParameter("fechafinal");
int costo = Integer.parseInt (request.getParameter("costo"));

String altaQuery="INSERT INTO tpaciente VALUES ('"+curp+"','"+nombre+"','"+apePaterno+"','"+apeMaterno+"','"+fecha+"','"+fechafinal+"','"+costo+"')";

int c = conexion.ejecutaSentencia(altaQuery);
if (c==1){// 

%>
<div class="container">

    <div class="jumbotron">
        <center>
        <<h2>Confirmar Alta de paciente</h2>
        <hr>
        <div class="thumbnail">
            <h2>Se agrego de forma exitosa el paciente</h2>
            <hr>
            <h3>CURP: <%= curp%></h3>
            <h3>Nombre : <%= nombre%></h3>
            <h3>Apellido Paterno : <%= apePaterno%></h3>
            <h3>Apellido Materno : <%= apeMaterno%></h3>
            <h3>Fecha : <%= fecha%></h3>
             <h3>Fecha Final : <%= fechafinal%></h3>
               <h3>costo : <%= costo%></h3>
        </div>
        <h2>Fecha y hora del sistema : <%= new java.util.Date() %></h2>
        <a href="index.html"><h3>Regresar al menu principal</h3></a>
    </center>
        <%
            }
        %>
        </div>
        </div>

        
    
       
        
        
        
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script type="js/jquery-1.8.0.min"></script>        
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
