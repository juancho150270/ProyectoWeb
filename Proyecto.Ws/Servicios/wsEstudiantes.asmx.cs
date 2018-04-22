using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI.WebControls;
using System.Data;

namespace Proyecto.Ws.Servicios
{
    /// <summary>
    /// Descripción breve de wsEstudiantes
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
     [System.Web.Script.Services.ScriptService]
    public class wsEstudiantes : System.Web.Services.WebService
    {

        [WebMethod]
        public string insertarEstudiante(Proyecto.Logica.Entidades.TbEstudiante estudiante)
        {

           return Proyecto.Logica.Clases.clsEstudiante.insertarEstudiante(estudiante);
            
            
        }


        [WebMethod]
        public string actualizarEstudiante(Proyecto.Logica.Entidades.TbEstudiante estudiante)
        {

            return Proyecto.Logica.Clases.clsEstudiante.actualizarEstudiante(estudiante);
        }



        [WebMethod]
        public List<Logica.Entidades.TbEstudiante> GetList()
        {

            return Proyecto.Logica.Clases.clsEstudiante.GetList();
            

            
        }

        


    }
}
