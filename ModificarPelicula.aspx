<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificarPelicula.aspx.cs" Inherits="ModificarPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Peliculas disponibles<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_pelicula" DataSourceID="DSPelicula" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_pelicula" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="id_pelicula" />
                <asp:BoundField DataField="nombre_pelicula" HeaderText="nombre" SortExpression="nombre_pelicula" />
                <asp:BoundField DataField="web_pelicula" HeaderText="web" SortExpression="web_pelicula" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="id_genero" HeaderText="id_genero" SortExpression="id_genero" />
                <asp:BoundField DataField="anio" HeaderText="anio" SortExpression="anio" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="DSPelicula" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" DeleteCommand="DELETE FROM Peliculas WHERE [id_pelicula] = @id_pelicula" OnSelecting="DSPelicula_Selecting" ProviderName="<%$ ConnectionStrings:parcial2_dai5ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM Peliculas" UpdateCommand="UPDATE Peliculas SET nombre_pelicula = @nombre_pelicula, web_pelicula = @web_pelicula, descripcion = @descripcion, id_genero = @id_genero, anio = @anio WHERE id_pelicula = @id_pelicula">
            <DeleteParameters>
                <asp:Parameter Name="id_pelicula" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre_pelicula" />
                <asp:Parameter Name="web_pelicula" />
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="id_genero" />
                <asp:Parameter Name="anio" />
                <asp:Parameter Name="id_pelicula" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ModificarPelicula.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
