using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Proyecto.Web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ctrl + k + c comentar
            //ctrl + k + u quitar comentario
            //if(!IsPostBack)
            //ClientScript.RegisterStartupScript(this.GetType(),"mensaje", "<script>swal('Buen Trabajo!', 'Se realizo proceso con exito!', 'success')</script>");

            if (!IsPostBack)
                if (Request.Cookies["Token"] != null)//ARCHIVO TEMPORAL
                    txtLogin.Text = Request.Cookies["Token"].Value;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
              

                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(txtLogin.Text)) stMensaje += "Ingrese login,";
                if (string.IsNullOrEmpty(txtPassword.Text))  stMensaje += "Ingrese password,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                //Response.Redirect("../Registrar/")

                Logica.Clases.clsUsuario obclsUsuario = new Logica.Clases.clsUsuario();
                DataSet dsConsulta = obclsUsuario.dsConsultar(txtLogin.Text, txtPassword.Text);

                if (dsConsulta.Tables[0].Rows.Count > 0)
                {
                    if (chkRecordar.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("Token", txtLogin.Text);
                        //Tiempo de vida de la Cookies
                        cookie.Expires = DateTime.Now.AddDays(2);
                        this.Response.Cookies.Add(cookie);
                    }
                    else
                    {
                        HttpCookie cookie = new HttpCookie("Token", txtLogin.Text);
                        cookie.Expires = DateTime.Now.AddDays(-1);
                        this.Response.Cookies.Add(cookie);
                    }

                    Session["Login"] = txtLogin.Text;
                    Response.Redirect("../Inicio.aspx");
                }
                else
                    throw new Exception("Login o Password incorrectos");

            }
            catch (Exception ex)
            {
                //Response.Write("<script Language='JavaScript'>parent.alert('" + ex.Message + "');</Script>");
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Error!', '"+ ex.Message +"!', 'error')</script>");
            }

        }
    }
}