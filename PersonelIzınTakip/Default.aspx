<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PersonelIzınTakip.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personeller</title>

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
                    <th>Departman ID</th>
                    <th>Başlama Tarihi</th>
                    <th>İzin Günü</th>
                    <th>Statü ID</th>
                    <th>İzin Tanımla</th>
                    <th>Sil</th>
                </tr>
                
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("Ad") %></td>
                            <td><%# Eval("Soyad") %></td>
                            <td><%# Eval("DepartmanID") %></td>
                            <td><%# Eval("BaslamaTarihi") %></td>
                            <td><%# Eval("ToplamIzinGunu") %></td>
                            <td><%# Eval("StatuID") %></td>
                            <td><asp:HyperLink NavigateUrl='<%# "FreeStyle.aspx?ID="+Eval("ID") %>' ID="HyperLink2" CssClass="btn btn-secondary" runat="server">İzin Tanımla</asp:HyperLink></td>
                            <td><asp:HyperLink NavigateUrl='<%# "SilPersonel.aspx?ID="+Eval("ID") %>' ID="HyperLink1" CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <div class="submit-button" style="margin-left:15px">
            <asp:Button ID="Button1" runat="server" Text="Personel Ekle" CssClass="btn btn-info" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Personel İzin Talepleri" CssClass="btn btn-outline-dark" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Çıkış" CssClass="btn btn-danger" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Profil" CssClass="btn btn-dark" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
