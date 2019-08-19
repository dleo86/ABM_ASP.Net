<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaGenero.aspx.cs" Inherits="AltaGenero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Alta genero"></asp:Label>
    
    </div>
        <p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SDGenero">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_genero" HeaderText="id_genero" InsertVisible="False" ReadOnly="True" SortExpression="id_genero" />
                    <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                    <asp:BoundField DataField="descripcion_genero" HeaderText="descripcion_genero" SortExpression="descripcion_genero" />
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
            <asp:SqlDataSource ID="SDGenero" runat="server" ConnectionString="<%$ ConnectionStrings:parcial2_dai5ConnectionString %>" SelectCommand="SELECT * FROM [Generos]" InsertCommand="INSERT INTO Generos(genero, descripcion_genero) VALUES (@genero, @descripcion_genero)" OnSelecting="SDGenero_Selecting">
                <InsertParameters>
                    <asp:Parameter Name="genero" />
                    <asp:Parameter Name="descripcion_genero" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Genero:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="143px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Alta" Width="76px" OnClick="Button1_Click" />
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>
