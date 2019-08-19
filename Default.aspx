<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Bienvenido<p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaPelicula.aspx">Alta Pelicula</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AltaGenero.aspx">Alta Genero</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BorrarGenero.aspx">Borrar Genero</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/BuscarPelicula.aspx">Buscar Pelicula</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ModificarGenero.aspx">Modificar Genero</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Default.aspx">Modificar o Borrar Pelicula</asp:HyperLink>
        </p>
    </form>
</body>
</html>
