using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;



public partial class AltaGenero : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            this.SDGenero.InsertParameters["genero"].DefaultValue = this.TextBox2.Text;
            this.SDGenero.InsertParameters["descripcion_genero"].DefaultValue = this.TextBox1.Text;
            this.SDGenero.Insert();

            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
      
    }

    protected void SDGenero_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}