using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace Proyecto.Logica.Clases
{
    public class clsUsuario
    {
        string stConexion;

        SqlConnection sqlConnection = null;
        SqlCommand cmd = null;
        SqlDataAdapter sqlAdapter = null;
        SqlParameter sqlParameter = null;

        public clsUsuario()//Metodo constructor
        {
            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.stGetConexion();
        }

        /// <summary>
        /// CONSULTAR USUARIOS
        /// </summary>
        /// <param name="stLogin">LOGIN USUARIO</param>
        /// <param name="stPassword">PASSWORD USUARIO</param>
        /// <returns>1 SI EXISTE</returns>
        public DataSet dsConsultar(string stLogin, string stPassword)
        {
            try
            {
                DataSet dsConsulta = new DataSet();

                //Se establece la conexión enviando la cadena configurada
                sqlConnection = new SqlConnection(stConexion);

                //Abrimos la conexión para realizar la ejecución
                sqlConnection.Open();

                //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
                cmd = new SqlCommand("spConsultarUsuario", sqlConnection);

                //Definimos que es de tipo procedimiento de almacenado
                cmd.CommandType = CommandType.StoredProcedure;

                //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
                cmd.Parameters.Add(new SqlParameter("@cLogin", stLogin));
                cmd.Parameters.Add(new SqlParameter("@cPassword", stPassword));

                cmd.ExecuteNonQuery();
                sqlAdapter = new SqlDataAdapter(cmd);
                sqlAdapter.Fill(dsConsulta);
                return dsConsulta;

               

            }
            catch (Exception ex) { throw ex; }
        }
    }
}
