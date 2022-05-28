<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="PersonelIzınTakip.AdminLogin" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
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
            <h1><span>Giriş Yap</span>
            </h1>
            <div class="inset">
                <p>
                    <label for="text">Kullanıcı ID</label>
                    <asp:TextBox ID="kadi" runat="server"></asp:TextBox>
                </p>
                <p>
                    <label for="password">Şifre</label>
                    <asp:TextBox ID="sifretxt" runat="server" TextMode="Password"></asp:TextBox>
                </p>
            </div>

            <p class="p-container">
                <asp:Label ID="Label1" runat="server" Text="" BorderColor="White" BackColor="BlueViolet" ForeColor="White"></asp:Label>
                <asp:Button ID="btnAdminGiris" runat="server" Text="Giriş Yap" OnClick="btnAdminGiris_Click" />
            </p>
        </form>
    </div>
</body>
</html>
