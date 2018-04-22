using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Logica.Clases
{
    public class clsDocente
    {
        string stConexion;

        SqlConnection sqlConnection = null;
        SqlCommand cmd = null;
        SqlDataAdapter sqlAdapter = null;
        SqlParameter sqlParameter = null;
        SqlDataReader reader = null;

        public clsDocente()//Metodo constructor
        {
            clsConexion obclsConexion = new clsConexion();
            stConexion = obclsConexion.stGetConexion();
        }


        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="InId"></param>
        ///// <param name="stNombre"></param>
        ///// <param name="stApellido"></param>
        ///// <param name="stDireccion"></param>
        ///// <param name="stTelefono"></param>
        ///// <param name="stCelular"></param>
        ///// <param name="stCorreo"></param>
        ///// <param name="stNivelAcademico"></param>
        ///// <param name="stArea"></param>
        ///// <param name="inIdAsignatura"></param>
        ///// <returns></returns>
        public string stInsertarDocente(long InId,
            string stNombre,
            string stApellido,
            string stDireccion,
            string stTelefono,
            string stCelular,
            string stCorreo,
            string stNivelAcademico,
            string stArea,
            int inIdAsignatura)
        {
            try
            {
                //Se establece la conexión enviando la cadena configurada
                sqlConnection = new SqlConnection(stConexion);

                //Abrimos la conexión para realizar la ejecución
                sqlConnection.Open();

                //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
                cmd = new SqlCommand("spConsultarUsuario", sqlConnection);

                //Definimos que es de tipo procedimiento de almacenado
                cmd.CommandType = CommandType.StoredProcedure;

                //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
                //cmd.Parameters.Add(new SqlParameter("@cLogin", stLogin));
                //cmd.Parameters.Add(new SqlParameter("@cPassword", stPassword));

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex) { throw ex; }
            finally { sqlConnection.Close(); }
            return "Se realizo proceso con exito";

        }

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="InId"></param>
        ///// <param name="stNombre"></param>
        ///// <param name="stApellido"></param>
        ///// <param name="stDireccion"></param>
        ///// <param name="stTelefono"></param>
        ///// <param name="stCelular"></param>
        ///// <param name="stCorreo"></param>
        ///// <param name="stNivelAcademico"></param>
        ///// <param name="stArea"></param>
        ///// <param name="inIdAsignatura"></param>
        ///// <returns></returns>
        //public string stModificarDocente(long InId,
        //    string stNombre,
        //    string stApellido,
        //    string stDireccion,
        //    string stTelefono,
        //    string stCelular,
        //    string stCorreo,
        //    string stNivelAcademico,
        //    string stArea,
        //    string stLogin,
        //    string stPassword,
        //    int inIdAsignatura)
        //{
        //    try
        //    {
        //        //Se establece la conexión enviando la cadena configurada
        //        sqlConnection = new SqlConnection(stConexion);

        //        //Abrimos la conexión para realizar la ejecución
        //        sqlConnection.Open();

        //        //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
        //        cmd = new SqlCommand("spConsultarUsuario", sqlConnection);

        //        //Definimos que es de tipo procedimiento de almacenado
        //        cmd.CommandType = CommandType.StoredProcedure;

        //        //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
        //        cmd.Parameters.Add(new SqlParameter("@cLogin", stLogin));
        //        cmd.Parameters.Add(new SqlParameter("@cPassword", stPassword));

        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (Exception ex) { throw ex; }
        //    finally { sqlConnection.Close(); }
        //    return "Se realizo proceso con exito";

        //}


        //public string stEliminarDocente(int InId)
        //{
        //    try
        //    {
        //        using (Entidades.Cnx obCnx = new Entidades.Cnx())
        //        {
        //            Entidades.tbDocentes obtbDocentes = (from q in obCnx.tbDocentes
        //                                             where q.doceId == InId
        //                                             select q).First();

        //            obCnx.tbDocentes.Remove(obtbDocentes);
        //            obCnx.SaveChanges();
        //        }

        //    }
        //    catch (Exception ex) { throw ex; }

        //    return "Se realizo el proceso con exito";
        //}

        //public List<Entidades.tbDocentes> ConsultarDocente(long lnId)
        //{
        //    List<Entidades.tbDocentes> list = new List<Entidades.tbDocentes>();

        //    Entidades.tbDocentes docentes = null;

        //    try
        //    {
        //        //Se establece la conexión enviando la cadena configurada
        //        sqlConnection = new SqlConnection(stConexion);

        //        //Abrimos la conexión para realizar la ejecución
        //        sqlConnection.Open();

        //        //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
        //        cmd = new SqlCommand("spConsultarUsuario", sqlConnection);

        //        //Definimos que es de tipo procedimiento de almacenado
        //        cmd.CommandType = CommandType.StoredProcedure;

        //        //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
        //        cmd.Parameters.Add(new SqlParameter("@cLogin", stLogin));
        //        cmd.Parameters.Add(new SqlParameter("@cPassword", stPassword));

        //        reader = cmd.ExecuteReader();

        //        while (reader.Read())
        //        {
        //            docentes = new Entidades.tbDocentes();

        //            docentes.doceNombre = reader["columna tabla"].ToString();



        //            list.Add(docentes);
        //        }


        //    }
        //    catch (Exception ex) { throw ex; }
        //    finally { sqlConnection.Close();  reader.Close(); }
        //    return list;
        //}


        /*public void llenarDropCategoria(ref DropDownList ddl)
        {
            var info = (from i in conexion.tbDocentes
                        select new
                        {
                            text = i.cateDescripcion,
                            value = i.cateCodigo
                        }).ToList();

            ddl.DataSource = info;
            ddl.DataTextField = "text";
            ddl.DataValueField = "value";
            ddl.DataBind();

        }


        public void llenarDropProveedor(ref DropDownList ddl)
        {
            var info = (from i in conexion.tbDocentes
                        select new
                        {
                            text = i.provNombres + " " + i.provApellidos,
                            value = i.provIdentificacion
                        }).ToList();

            ddl.DataSource = info;
            ddl.DataTextField = "text";
            ddl.DataValueField = "value";
            ddl.DataBind();
        }*/





    }


}
