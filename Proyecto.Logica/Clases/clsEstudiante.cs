using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.Logica.Clases
{
    public static class clsEstudiante
    {
        static string stConexion;

        static SqlConnection _SqlConnection = null;
        static SqlCommand _SqlCommand= null;
        static SqlDataAdapter _SqlDataAdapter = null;
        static SqlParameter _SqlParameter = null;

        static SqlConnection sqlConnection = null;
        static SqlCommand cmd = null;
        static SqlDataAdapter sqlAdapter = null;
        static SqlParameter sqlParameter = null;
        static SqlDataReader reader = null;
        static clsConexion obclsConexion = new clsConexion();

        //Autocompletar
        
            public static List<string> dsConsultaEstudiante (long Id)
        {
            try
            {
                stConexion = obclsConexion.stGetConexion();
                List<string> resultado = new List<string>();
                _SqlConnection = new SqlConnection(stConexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("spAutocomplementarEstudiante", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@codigo",Id));
                reader= _SqlCommand.ExecuteReader();

                while (reader.Read())
                {
                    resultado.Add(reader["Nombre"].ToString());
                }

                

                return resultado;

            }
            catch (Exception ex) {throw ex;}
            finally
            {
                _SqlConnection.Close();
            }
        }

        //Finalizar Autocompletar


        public static string insertarEstudiante(Entidades.TbEstudiante estudiante)
        {

            try
            {
                //Obtine la conexion 
                stConexion = obclsConexion.stGetConexion();

                //Se establece la conexión enviando la cadena configurada
                sqlConnection = new SqlConnection(stConexion);

                //Abrimos la conexión para realizar la ejecución
                sqlConnection.Open();

                //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
                cmd = new SqlCommand("sp_InsertarEstudiante", sqlConnection);

                //Definimos que es de tipo procedimiento de almacenado
                cmd.CommandType = CommandType.StoredProcedure;

                //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
                cmd.Parameters.Add(new SqlParameter("@PrimerNombre", estudiante.EstPrimerNombre));
                cmd.Parameters.Add(new SqlParameter("@SegundoNombre", estudiante.EstSegundoNombre));
                cmd.Parameters.Add(new SqlParameter("@PrimerApellido", estudiante.EstAcudientePrimerApellido));
                cmd.Parameters.Add(new SqlParameter("@SegundoApellido", estudiante.EstAcudienteSegundoApellido));
                cmd.Parameters.Add(new SqlParameter("@Direccion", estudiante.EstDireccion));
                cmd.Parameters.Add(new SqlParameter("@Telefono", estudiante.EstTelefono));
                cmd.Parameters.Add(new SqlParameter("@Grupo", estudiante.EstGrupo));
                cmd.Parameters.Add(new SqlParameter("@Edad", estudiante.EstEdad));
                cmd.Parameters.Add(new SqlParameter("@AcudientePrimerNombre", estudiante.EstAcudientePrimerNombre));
                cmd.Parameters.Add(new SqlParameter("@AcudienteSegundoNombre", estudiante.EstAcudienteSegundoNombre));
                cmd.Parameters.Add(new SqlParameter("@AcudientePrimerApellido", estudiante.EstAcudientePrimerApellido));
                cmd.Parameters.Add(new SqlParameter("@AcudienteSegunApelldio", estudiante.EstSegundoApellido));
                cmd.Parameters.Add(new SqlParameter("@AcudienteParentesco", estudiante.EstAcudienteParentesco));
                cmd.Parameters.Add(new SqlParameter("@AcudienteDireccion", estudiante.EstAcudienteDireccion));
                cmd.Parameters.Add(new SqlParameter("@AcudienteCorreo", estudiante.EstAcudienteCorreo));


                cmd.ExecuteNonQuery();


                return "Se inserto correctamente";

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { sqlConnection.Close(); }
        }


        public static string actualizarEstudiante(Entidades.TbEstudiante estudiante)
        {
            try
            {
                //Obtine la conexion 
                stConexion = obclsConexion.stGetConexion();

                //Se establece la conexión enviando la cadena configurada
                sqlConnection = new SqlConnection(stConexion);

                //Abrimos la conexión para realizar la ejecución
                sqlConnection.Open();

                //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
                cmd = new SqlCommand("spModificarEstudiante", sqlConnection);

                //Definimos que es de tipo procedimiento de almacenado
                cmd.CommandType = CommandType.StoredProcedure;

                //Parametros que espera el procedimiento de almacenado, deben tener los mismos nombres
                cmd.Parameters.Add(new SqlParameter("@Codigo", estudiante.Id));
                cmd.Parameters.Add(new SqlParameter("@PrimerNombre", estudiante.EstPrimerNombre));
                cmd.Parameters.Add(new SqlParameter("@SegundoNombre", estudiante.EstSegundoNombre));
                cmd.Parameters.Add(new SqlParameter("@PrimerApellido", estudiante.EstAcudientePrimerApellido));
                cmd.Parameters.Add(new SqlParameter("@SegundoApellido", estudiante.EstAcudienteSegundoApellido));
                cmd.Parameters.Add(new SqlParameter("@Direccion", estudiante.EstDireccion));
                cmd.Parameters.Add(new SqlParameter("@Telefono", estudiante.EstTelefono));
                cmd.Parameters.Add(new SqlParameter("@Grupo", estudiante.EstGrupo));
                cmd.Parameters.Add(new SqlParameter("@Edad", estudiante.EstEdad));
                cmd.Parameters.Add(new SqlParameter("@AcudientePrimerNombre", estudiante.EstAcudientePrimerNombre));
                cmd.Parameters.Add(new SqlParameter("@AcudienteSegundoNombre", estudiante.EstAcudienteSegundoNombre));
                cmd.Parameters.Add(new SqlParameter("@AcudientePrimerApellido", estudiante.EstAcudientePrimerApellido));
                cmd.Parameters.Add(new SqlParameter("@AcudienteSegunApelldio", estudiante.EstSegundoApellido));
                cmd.Parameters.Add(new SqlParameter("@AcudienteParentesco", estudiante.EstAcudienteParentesco));
                cmd.Parameters.Add(new SqlParameter("@AcudienteDireccion", estudiante.EstAcudienteDireccion));
                cmd.Parameters.Add(new SqlParameter("@AcudienteCorreo", estudiante.EstAcudienteCorreo));


                cmd.ExecuteNonQuery();


                return "Se inserto correctamente";

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { sqlConnection.Close(); }
        }



        public static List<Entidades.TbEstudiante> GetList()
        {
            List<Entidades.TbEstudiante> lista = new List<Entidades.TbEstudiante>();

            try
            {
                //Obtine la conexion 
                stConexion = obclsConexion.stGetConexion();

                //Se establece la conexión enviando la cadena configurada
                sqlConnection = new SqlConnection(stConexion);

                //Abrimos la conexión para realizar la ejecución
                sqlConnection.Open();

                //Enviamos dos parametros, procedimiento SQL a ejecutar y la conexión donde se va a ejecutar
                cmd = new SqlCommand("spConsultarEstudiante", sqlConnection);

                //Definimos que es de tipo procedimiento de almacenado
                cmd.CommandType = CommandType.StoredProcedure;


                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Entidades.TbEstudiante estudiante = new Entidades.TbEstudiante();
                    
                    estudiante.EstPrimerNombre = reader["EstPrimerNombre"].ToString();
                    estudiante.EstSegundoNombre = reader["EstSegundoNombre"].ToString();
                    estudiante.EstPrimerApellido = reader["EstPrimerApellido"].ToString();
                    estudiante.EstSegundoApellido = reader["EstSegundoApellido"].ToString();
                    estudiante.EstDireccion = reader["EstDireccion"].ToString();
                    estudiante.EstTelefono = reader["EstTelefono"].ToString();
                    estudiante.EstGrupo = reader["EstGrupo"].ToString();
                    estudiante.EstEdad = reader["EstEdad"].ToString();
                    estudiante.EstAcudientePrimerNombre = reader["EstAcudientePrimerNombre"].ToString();
                    estudiante.EstAcudienteSegundoNombre = reader["EstAcudienteSegundoNombre"].ToString();
                    estudiante.EstAcudientePrimerApellido = reader["EstAcudientePrimerApellido"].ToString();
                    estudiante.EstAcudienteSegundoApellido = reader["EstAcudienteSegundoApellido"].ToString();
                    estudiante.EstAcudienteParentesco = reader["EstAcudienteParentesco"].ToString();
                    estudiante.EstAcudienteDireccion = reader["EstAcudienteDireccion"].ToString();
                    estudiante.EstAcudienteCorreo = reader["EstAcudienteCorreo"].ToString();

                    lista.Add(estudiante);
                }

                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { sqlConnection.Close(); }
        }


    }
}
