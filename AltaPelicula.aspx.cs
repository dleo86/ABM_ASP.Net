using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AltaPelicula : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DSPelicula.InsertParameters["nombre_pelicula"].DefaultValue = TextBox1.Text;
        DSPelicula.InsertParameters["web_pelicula"].DefaultValue = TextBox2.Text;
        DSPelicula.InsertParameters["descripcion"].DefaultValue = TextBox3.Text;
        DSPelicula.InsertParameters["anio"].DefaultValue = TextBox5.Text;
        DSPelicula.InsertParameters["id_genero"].DefaultValue = DropDownList1.SelectedValue;
        DSPelicula.Insert();
        Label6.Text = "Los datos fueron cargados";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
    }
}