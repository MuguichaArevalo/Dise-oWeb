using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiseñoWeb
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            String correo = txtCorreo.Text;
            String password = txtContraseña.Text;

            NegocioUser modelo = new NegocioUser();
            int filas = modelo.registro_usuario(correo, password);

            txtCorreo.Text = "";
            txtContraseña.Text = "";

            Response.Write("<script language=javascript>alert('USUARIOS CREADO CORECTAMENTE ');</script>");

        }
    }
}