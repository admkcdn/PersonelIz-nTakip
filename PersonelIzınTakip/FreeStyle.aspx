<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FreeStyle.aspx.cs" Inherits="PersonelIzınTakip.freeStyle" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="grdKayitlar" OnRowDataBound="grdKayitlar_RowDataBound" AutoGenerateColumns="False" EnableTheming="True" Width="100%" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="İzin ID" DataField="IzinID" />
                    <asp:BoundField HeaderText="İzin İsmi" DataField="IzinIsmi" />
                    <asp:BoundField HeaderText="İzin Günü" DataField="IzinGunu" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnGuncelle" OnClick="btnGuncelle_Click" Text="Ekle" />
                            <asp:Label  runat="server" ID="lbl" Text="" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
               
            </asp:GridView>
        </div>
    </form>
</body>
</html>
