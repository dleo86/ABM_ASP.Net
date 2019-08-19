using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;


public partial class BorrarGenero : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        DSGenero.DeleteParameters["genero"].DefaultValue = TextBox1.Text;
        int cant;
        cant = DSGenero.Delete();
        if (cant == 0)
            this.Label2.Text = "No existe el genero ingresado";
        else
        {
            this.Label2.Text = "Se borro el genero";
            DSGenero.SelectParameters["genero"].DefaultValue = TextBox1.Text;
          
        }
    }
}
