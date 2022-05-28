<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Talepler.aspx.cs" Inherits="PersonelIzınTakip.Talepler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personel İzin Talepleri</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Departman</th>
                    <th>Talep Edilen İzin Günü</th>
                    <th>Onayla</th>
                    <th>Reddet</th>
                </tr>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("TalepID") %></th>
                            <td><%# Eval("PersonelAdi") %></td>
                            <td><%# Eval("PersonelSoyadi") %></td>
                            <td><%# Eval("PersonelDepartman") %></td>
                            <td><%# Eval("PersonelTalep") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "TalepOnayla.aspx?ID="+Eval("PersonelID")%>' ID="HyperLink1" CssClass="btn btn-success" runat="server">Onayla</asp:HyperLink></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "TalepReddet.aspx?ID="+Eval("TalepID") %>' ID="HyperLink2" CssClass="btn btn-danger" runat="server">Reddet</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <div class="submit-button" style="margin-left:15px">
            <asp:Button ID="Button2" runat="server" Text="Personeller Sayfasına Dön" CssClass="btn btn-outline-dark" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
