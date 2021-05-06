﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SBD_PIA.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--CSS-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" media="screen,projection" />
    <link rel='stylesheet' href="https://cdn.materialdesignicons.com/3.8.95/css/materialdesignicons.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"> 
    <link type="text/css" rel="stylesheet" href="sbd.css" />
    <!--/CSS-->
    <title>SBD PIA</title>

    <style></style>
</head>
<body class= "light-blue lighten-5">
<form id="form3" runat="server">

<header class="light-blue darken-4" style="height: 50px; vertical-align: middle;">
<center>
<b>
SEGURIDAD EN BASE DE DATOS / PROYECTO FINAL
</b>
<br/>
<b>
MEN&Uacute;
</b>

</center>
</header>
    <div id="canvas" class="row" style= "margin-left: 20px; margin-top: 20px; margin-right: 20px" >

        <br>
        "Desarrollar una aplicación que registre la información del dólar interbancario (compra y venta) junto con el banco proveedor, la fecha actual y permita imprimir dicha información en la pantalla, según el banco seleccionado.
        Casi toda la actividad complementaria debe reutilizarse, excluyendo el punto de insertar valores manualmente (usando Insertar en).
        La aplicación debe estar alojada en un servicio en la nube (aws, azure o ibm)"
        <br>

    <center>
    
     <h4><b>MEN&Uacute; DE OPCIONES</b></h4>
    
    </center>


    </div>

    <!--JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="SBD_JS.js"></script>
    <!--/JS-->
    <center>
    <asp:Button ID="registro" runat="server" Text="Registrar valores" />
    <p>
    <asp:Button ID="consulta" runat="server" Text="Consultar valores" />
    </p>

    </center>
</form>

    </body>

</html>

