<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DiseñoWeb.Index" %>

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
            <h1><strong> Ingreso de usuarios.</strong></h1>
        

            <div class="mb-3">
                <asp:Label class="form-label" ID="Label3" runat="server" Text="Usuario" ></asp:Label>
                <asp:TextBox class="form-control" ID="txtCorreo" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label  class="form-label" ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox class="form-control" ID="txtContraseña" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button class="btn btn-outline-success" ID="btnCrear" runat="server" Text="crear usuario" OnClick="btnCrear_Click" />
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>

        </div>
        <div class="align-content-center">
        <asp:GridView ID="GridView1"  runat="server"  CssClass="table table-responsive tabla_datos"  BorderColor="Transparent" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Correo" HeaderText="CORREOS" />
                <asp:BoundField DataField="Contraseña" HeaderText="CONTRASEÑA" />
 
                <asp:TemplateField>
            <ItemTemplate>
<asp:LinkButton ID="btn_Asignar_rc" runat="server"  CommandArgument='<%# Eval("Correos") %>'   CssClass="btn btn-primary" BorderColor="Transparent" OnClick="btnEliminar_Click" >
                       <span class="glyphicon glyphicon-list-alt">ELIMINAR</span>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                </Columns>

            </asp:GridView>

        </div>

    </form>
</body>
</html>
