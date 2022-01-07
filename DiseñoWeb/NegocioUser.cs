using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DiseñoWeb
{
    public class NegocioUser
    {
        public List<User> consultar_Administrador(String users, String pass)
        {
            SqlConnection co = new SqlConnection(Conexion.Cadena());
            List<User> user = new List<User>();
            try
            {
                co.Open();
                SqlCommand sqlcom;
                String sql = "select * from Usuarios where Password ='" + pass + "' and Correo ='" + users + "'";
                sqlcom = new SqlCommand(sql, co);
                SqlDataReader r = sqlcom.ExecuteReader();
                while (r.Read())
                {
                    user.Add(new User
                    {
                        correo = r.GetString(0),
                        password = r.GetString(1),
                    });

                }
            }
            catch (Exception ex)
            {
                ex.ToString();

            }
            finally
            {
                co.Close();
            }

            return user;
        }
        public int registro_usuario(string Usuario, string Contraseña)
        {
            int filas = 0;
            SqlConnection con = new SqlConnection(Conexion.Cadena());
            try
            {
                con.Open();
                string query = @"INSERT INTO Usuarios(Usuario, Contraseña)
					                   values('" + Usuario + "','" + Contraseña + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                filas = cmd.ExecuteNonQuery();

            }

            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                con.Close();
            }
            return filas;
        }
        public int registro_Animales(string Tipo, string Raza, string Edad, string RazondeIngreso, string Color)
        {
            int filas = 0;
            SqlConnection con = new SqlConnection(Conexion.Cadena());
            try
            {
                con.Open();
                string query = @"INSERT INTO Animales(Tipo, Raza, Edad, RazondeIngreso, Color)
					                   values('" + Tipo + "','" + Raza + "','"+Edad+"','"+RazondeIngreso+"','"+Color+"')";
                SqlCommand cmd = new SqlCommand(query, con);
                filas = cmd.ExecuteNonQuery();

            }

            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                con.Close();
            }
            return filas;
        }

    }
}