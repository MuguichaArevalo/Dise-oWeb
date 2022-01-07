<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DiseñoWeb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">

        
        <div class ="Pantalla">
            <h1><strong> Inicio de sesion.</strong></h1>
        

            <div class="mb-3">
                <asp:Label class="form-label" ID="Label3" runat="server" Text="Usuario" ></asp:Label>
                <asp:TextBox class="form-control" ID="txtCorreo" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label  class="form-label" ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox class="form-control" ID="txtContraseña" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button class="btn btn-outline-success" ID="btnIngresar" runat="server" Text="Iniciar sesion" OnClick="btnIngresar_Click" />
            </div>

        </div>

    </form>
</body>
</html>
