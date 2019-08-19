<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuscarPelicula.aspx.cs" Inherits="BuscarPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Seleccione el genero de la pelicula a buscar:"></asp:Label>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSGenero" DataTextField="genero" DataValueField="id_genero">
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" />
        </p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:SqlDataSource ID="DSPelicula" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" SelectCommand="SELECT nombre_pelicula FROM Peliculas WHERE id_genero = @id_genero">
            <SelectParameters>
                <asp:Parameter Name="id_genero" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DSGenero" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" SelectCommand="SELECT * FROM [Generos]"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
