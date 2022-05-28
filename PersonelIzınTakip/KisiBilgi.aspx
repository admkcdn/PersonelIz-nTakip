<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KisiBilgi.aspx.cs" Inherits="PersonelIzınTakip.KisiBilgi" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>
        <asp:Literal ID="headertitle" runat="server"></asp:Literal>
    </title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Classy User Ui Kit Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->

    <!-- css files -->
    <link rel="stylesheet" href="web2/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="web2/css/monthly.css">
    <!-- Calender-CSS -->
    <link rel="stylesheet" href="web2/css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->

    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Philosopher:400,400i,700,700i&amp;subset=cyrillic" rel="stylesheet">
    <!-- //online-fonts -->

</head>
<body>
    <br />
    <br />
    <br />
    <asp:Label ID="adsoyad" runat="server" Text="Label" CssClass="agile-head" Font-Size="XX-Large" ForeColor="White"></asp:Label>
    <div class="agile-wi">

        <!-- Profile-form -->
        <form runat="server">
            <div class="top-grids">
                <div class="profile-agile">
                    <div class="profile-w3">
                        <img src="web2/images/bgp.jpg" alt="">
                    </div>
                    <div class="w3layouts">
                        <img src="web2/images/pro.jpg" alt=" " />
                        <label class="line"></label>
                        <asp:Label ID="departmanlbl" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="agileits-w3layouts">
                        <div class="w3l">
                            <asp:Label ID="izingunulbl" runat="server" Text="Label"></asp:Label>
                            <h5>Gün İzin Hakkı</h5>
                        </div>
                        <div class="w3-agile">
                            <h5>İzin Talep Et</h5>
                            <asp:TextBox ID="talepizintxt" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:Button ID="talepEtBtn" runat="server" Text="Talep Et" OnClick="talepEtBtn_Click"/>
                            <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        <!-- //Profile-form -->

        <div class="submit-button" style="margin-left:15px">
            <asp:Button ID="Button3" runat="server" Text="Çıkış" CssClass="btn btn-danger" OnClick="Button3_Click" />
        </div>

        </form>
    </div>

    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>


    <!-- //js -->
</body>
</html>
