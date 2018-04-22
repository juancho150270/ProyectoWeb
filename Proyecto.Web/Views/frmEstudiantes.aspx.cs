using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.Web.Views
{
    public partial class frmEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            wsEstudiantes.TbEstudiante estudiante = new wsEstudiantes.TbEstudiante();

            estudiante.EstPrimerNombre = txtPrimerNombre.Text;
            estudiante.EstSegundoNombre = txtSegundoApellido.Text;
            estudiante.EstPrimerApellido = txtPrimerApellido.Text;
            estudiante.EstSegundoApellido = txtSegundoApellido.Text;
            estudiante.EstDireccion = txtDireccion.Text;
            estudiante.EstTelefono = txtTelefono.Text;
            estudiante.EstGrupo = txtGrupo.Text;
            estudiante.EstEdad = txtEdad.Text;
            estudiante.EstAcudientePrimerNombre = txtAcudientePrimerNombre.Text;
            estudiante.EstAcudienteSegundoNombre = txtAcudienteSegundoNombre.Text;
            estudiante.EstAcudientePrimerApellido = txtPrimerApellido.Text;
            estudiante.EstAcudienteSegundoApellido = txtAcudienteSegundoApellido.Text;
            estudiante.EstAcudienteParentesco = txtAcudienteParentesco.Text;
            estudiante.EstAcudienteDireccion = txtAcudienteParentesco.Text;
            estudiante.EstAcudienteCorreo = txtAcudienteCorreo.Text;





            wsEstudiantes.wsEstudiantes ws = new wsEstudiantes.wsEstudiantes();

            ws.insertarEstudiante(estudiante);

           


        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            wsEstudiantes.TbEstudiante estudiante = new wsEstudiantes.TbEstudiante();

            estudiante.EstPrimerNombre = txtPrimerNombre.Text;
            estudiante.EstSegundoNombre = txtSegundoApellido.Text;
            estudiante.EstPrimerApellido = txtPrimerApellido.Text;
            estudiante.EstSegundoApellido = txtSegundoApellido.Text;
            estudiante.EstDireccion = txtDireccion.Text;
            estudiante.EstTelefono = txtTelefono.Text;
            estudiante.EstGrupo = txtGrupo.Text;
            estudiante.EstEdad = txtEdad.Text;
            estudiante.EstAcudientePrimerNombre = txtAcudientePrimerNombre.Text;
            estudiante.EstAcudienteSegundoNombre = txtAcudienteSegundoNombre.Text;
            estudiante.EstAcudientePrimerApellido = txtPrimerApellido.Text;
            estudiante.EstAcudienteSegundoApellido = txtAcudienteSegundoApellido.Text;
            estudiante.EstAcudienteParentesco = txtAcudienteParentesco.Text;
            estudiante.EstAcudienteDireccion = txtAcudienteParentesco.Text;
            estudiante.EstAcudienteCorreo = txtAcudienteCorreo.Text;


            estudiante.Id = int.Parse(txtId.Text);

            if (estudiante.Id > 0)
            {
                wsEstudiantes.wsEstudiantes ws = new wsEstudiantes.wsEstudiantes();

                ws.actualizarEstudiante(estudiante);
            }
        }
    }
}