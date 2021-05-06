<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registroDolares.aspx.vb" Inherits="SBD_PIA.registroDolares" %>

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
    <title>SBD PIA Registrar</title>

    <style></style>
</head>
<body class= "light-blue lighten-5">
    <form id="form1" runat="server">

<header class="light-blue darken-4" style="height: 50px; vertical-align: middle;">
<center>
<b>
SEGURIDAD EN BASE DE DATOS / PROYECTO FINAL
</b>
<br/>
<b>
Registro de D&oacute;lares
</b>

</center>
</header>
    <div id="canvas" class="row" style= "margin-left: 20px; margin-top: 20px; margin-right: 20px" >
        <div class="col s12">
            Ingrese el precio de Compra para Dolar: 
            <asp:TextBox ID="compra" runat="server" required ="compra"></asp:TextBox>
           
            <br/>
            Ingrese el precio de Venta para Dolar: 
            <asp:TextBox ID="venta" runat="server" required ="venta"></asp:TextBox>
            <br/>
            <!--        
            <div class="input-field col s6" style="padding-left: 0px;"> Ingrese el Banco
            <select>
              <option value="1">CitiBanamex</option>
              <option value="2">Banorte</option>
              <option value="3">BBVA Bancomer</option>
            </select>
        </div>-->
            Ingrese el banco proveedor: 
            <asp:TextBox ID="banco" runat="server" required ="banco"></asp:TextBox>
    </div>
        
        <center>
        <asp:Button ID="registrar" runat="server" Text="Registrar"/>
        <!--<asp:Button ID="consulta" runat="server" Text="Consultar Compra/Venta"/>-->
            <asp:Button ID="consultar" runat="server" Text="Consultar" />
        </center>
       
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="compraActual" HeaderText="Compra Dolar">
                <ControlStyle BorderStyle="Groove" />
                <HeaderStyle BorderStyle="Solid" />
                <ItemStyle BorderStyle="Ridge" Font-Italic="True" />
                </asp:BoundField>
                <asp:BoundField DataField="ventaActual" HeaderText="Venta Dolar">
                <HeaderStyle BorderStyle="Solid" />
                <ItemStyle BorderStyle="Ridge" Font-Italic="True" />
                </asp:BoundField>
                <asp:BoundField DataField="banco" HeaderText="Banco">
                <HeaderStyle BorderStyle="Solid" />
                <ItemStyle BorderStyle="Ridge" Font-Italic="True" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        </p>
    </div>

    </form>

    <!--JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="SBD_JS.js"></script>
    <!--/JS-->
</body>

</html>
