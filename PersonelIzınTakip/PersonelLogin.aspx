<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelLogin.aspx.cs" Inherits="PersonelIzınTakip.PersonelLogin" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <title>Personel Giriş Sayfası</title>
<head>
    <meta charset="utf-8">
    <link href="web4/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css' />
    <!--//webfonts-->
</head>

<body>
    <div class="main">
        <form runat="server">
            <h1><span>Personel</span>
                <lable>Giriş </lable>
            </h1>
            <div class="inset">
                <p>
                    <label for="text">Adı</label>
                    <asp:TextBox ID="adi" runat="server"></asp:TextBox>
                </p>
                <p>
                    <label for="text">Soyadı</label>
                    <asp:TextBox ID="Soyadi" runat="server"></asp:TextBox>
                </p>
            </div>

            <p class="p-container">
                <asp:Label ID="Label1" runat="server" Text="" BorderColor="White" BackColor="BlueViolet" ForeColor="White"></asp:Label>
                <asp:Button ID="btnPersonelGiris" runat="server" Text="Giriş Yap" OnClick="btnPersonelGiris_Click" />
            </p>
        </form>
    </div>
</body>
</html>
