<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaPelicula.aspx.cs" Inherits="AltaPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Web:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="226px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Descripción:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="153px"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Género:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSGenero" DataTextField="genero" DataValueField="id_genero">
            </asp:DropDownList>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Año:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="136px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Alta" Width="106px" OnClick="Button1_Click" />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:SqlDataSource ID="DSGenero" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" SelectCommand="SELECT * FROM [Generos]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSPelicula" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" InsertCommand="INSERT INTO Peliculas (nombre_pelicula, web_pelicula, descripcion, id_genero, anio) VALUES (@nombre_pelicula, @web_pelicula, @descripcion, @id_genero, @anio) " SelectCommand="SELECT * FROM Peliculas">
            <InsertParameters>
                <asp:Parameter Name="nombre_pelicula" />
                <asp:Parameter Name="web_pelicula" />
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="id_genero" />
                <asp:Parameter Name="anio" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
