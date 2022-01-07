using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiseñoWeb
{
    public partial class IngresoAnimales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            String tipo= txtTipo.Text;
            String raza= txtRaza.Text;
            String edad = txtEdad.Text;
            String razondeingreso= txtRazon.Text;
            String color = txtColor.Text;


            NegocioUser modelo = new NegocioUser();
            int filas = modelo.registro_Animales(tipo, raza, edad, razondeingreso, color);

            txtTipo.Text = "";
            txtRaza.Text = "";
            txtEdad.Text = "";
            txtRazon.Text = "";
            txtColor.Text = "";

            Response.Write("<script language=javascript>alert('ANIMAL CREADO CORECTAMENTE ');</script>");
        }
    }
}