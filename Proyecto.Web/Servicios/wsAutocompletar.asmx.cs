using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Services;

namespace Proyecto.Web.Servicios
{
    /// <summary>
    /// Descripción breve de wsAutocompletar
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class wsAutocompletar : System.Web.Services.WebService
    {

        [WebMethod]
        
        public  List<string> dsConsultaEstudiante(string prefixText, int count)
        {
            
            var listaConsulta = Logica.Clases.clsEstudiante.dsConsultaEstudiante(Convert.ToInt64(prefixText));

            return listaConsulta;            
  
           
        }

    }
}
