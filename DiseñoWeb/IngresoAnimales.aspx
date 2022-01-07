<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAnimales.aspx.cs" Inherits="DiseñoWeb.IngresoAnimales" %>

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
            <h1><strong> Ingreso de Animales.</strong></h1>
        
           <div class="mb-3">
                <asp:Label  class="form-label" ID="Label5" runat="server" Text="Tipo"></asp:Label>
                <asp:TextBox class="form-control" ID="txtTipo" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label class="form-label" ID="Label3" runat="server" Text="Raza" ></asp:Label>
                <asp:TextBox class="form-control" ID="txtRaza" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label  class="form-label" ID="Label2" runat="server" Text="Edad"></asp:Label>
                <asp:TextBox class="form-control" ID="txtEdad" runat="server"></asp:TextBox>
            </div>
           <div class="mb-3">
                <asp:Label  class="form-label" ID="Label1" runat="server" Text="Razon de Ingreso"></asp:Label>
                <asp:TextBox class="form-control" ID="txtRazon" runat="server"></asp:TextBox>
            </div>
           <div class="mb-3">
                <asp:Label  class="form-label" ID="Label4" runat="server" Text="Color"></asp:Label>
                <asp:TextBox class="form-control" ID="txtColor" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button class="btn btn-outline-success" ID="btnCrear" runat="server" Text="Ingreso" OnClick="btnCrear_Click" />
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>

        </div>
        <div class="align-content-center">
        <asp:GridView ID="GridView1"  runat="server"  CssClass="table table-responsive tabla_datos"  BorderColor="Transparent" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Tipo" HeaderText="TIPO" />
                <asp:BoundField DataField="Raza" HeaderText="RAZA" />
                 <asp:BoundField DataField="Edad" HeaderText="EDAD" />
                 <asp:BoundField DataField="RazondeIngreso" HeaderText="RAZON" />
                 <asp:BoundField DataField="Color" HeaderText="COLOR" />
                <asp:TemplateField>
            <ItemTemplate>
<asp:LinkButton ID="btn_Asignar_rc" runat="server"  CommandArgument='<%# Eval("Tipo") %>'   CssClass="btn btn-primary" BorderColor="Transparent" OnClick="btnEliminar_Click" >
                       <span class="glyphicon glyphicon-list-alt">ELIMINAR</span>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                </Columns>

            </asp:GridView>

        </div>
dno-evjv-hye
    </form>
</body>
</html>
