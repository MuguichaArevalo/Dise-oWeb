using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiseñoWeb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            List<User> log = new List<User>();

            String user = txtCorreo.Text;
            String pass = txtContraseña.Text;
            

            NegocioUser modelo = new NegocioUser();
            log = modelo.consultar_Administrador(user, pass);
            User user1 = log.FirstOrDefault();
            if (user1 != null)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Usuario o contraseña incorrectos');</script>");
            }

        }
    }
}