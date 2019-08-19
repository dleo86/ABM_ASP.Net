using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
public partial class BuscarPelicula : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DSPelicula.SelectParameters["id_genero"].DefaultValue = DropDownList1.SelectedValue;
        DSPelicula.DataSourceMode = SqlDataSourceMode.DataReader;
        SqlDataReader registros = (SqlDataReader)DSPelicula.Select(DataSourceSelectArguments.Empty);
        this.Label2.Text = "";
        while (registros.Read() == true)
        {
            Label2.Text = Label2.Text + registros["nombre_pelicula"] + " ";
        }
    }
}