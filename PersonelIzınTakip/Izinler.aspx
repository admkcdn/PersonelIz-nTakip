<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Izinler.aspx.cs" Inherits="PersonelIzınTakip.Izinler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>İzinler</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   
   

    <form id="form1" runat="server">

        <div style="row-gap:normal">
            <tr>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IzinTakipConnectionString %>" SelectCommand="SELECT * FROM [Izinler]"></asp:SqlDataSource>
                </td>
                <td>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="495px">
            <Columns>
                <asp:BoundField DataField="IzinID" HeaderText="IzinID" InsertVisible="False" ReadOnly="True" SortExpression="IzinID" />
                <asp:BoundField DataField="IzinIsmi" HeaderText="IzinIsmi" SortExpression="IzinIsmi" />
                <asp:BoundField DataField="IzinGunu" HeaderText="IzinGunu" SortExpression="IzinGunu" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="IzinID" DataValueField="IzinID" Height="32px" Width="255px">
        </asp:CheckBoxList>
                </td>
            </tr>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="Button1_Click1" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
   
   

</body>
</html>
