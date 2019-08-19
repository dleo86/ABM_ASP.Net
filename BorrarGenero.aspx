<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BorrarGenero.aspx.cs" Inherits="BorrarGenero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del genero a borrar:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:SqlDataSource ID="DSGenero" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" DeleteCommand="DELETE FROM Generos WHERE genero = @genero" SelectCommand="SELECT id_genero FROM Generos WHERE genero = @genero">
            <DeleteParameters>
                <asp:Parameter Name="genero" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="genero" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
