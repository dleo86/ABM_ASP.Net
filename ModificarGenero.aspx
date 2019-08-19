<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificarGenero.aspx.cs" Inherits="ModificarGenero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Modificar Genero</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_genero" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_genero" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="id_genero" />
                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                <asp:BoundField DataField="descripcion_genero" HeaderText="descripcion" SortExpression="descripcion_genero" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" DeleteCommand="DELETE FROM Generos WHERE id_genero = @id_genero 
" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM Generos" UpdateCommand="UPDATE Generos SET genero = @genero, descripcion_genero = @descripcion_genero WHERE id_genero = @id_genero 
">
            <DeleteParameters>
                <asp:Parameter Name="id_genero" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="genero" />
                <asp:Parameter Name="descripcion_genero" />
                <asp:Parameter Name="id_genero" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
