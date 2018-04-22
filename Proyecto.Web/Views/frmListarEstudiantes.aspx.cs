using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.Web.Views
{
    public partial class frmListarEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                wsEstudiantes.wsEstudiantes ws = new wsEstudiantes.wsEstudiantes();

                gridEstudiantes.DataSource = ws.GetList();
                gridEstudiantes.DataBind();
            }
        }
    }
}