<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelKayit.aspx.cs" Inherits="PersonelIzınTakip.PersonelKayit" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
	<head>	
		<title>Personel Kayıt</title>
		<link href="web/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Lobster|Pacifico:400,700,300|Roboto:400,100,100italic,300,300italic,400italic,500italic,500' ' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,500,600,700,300' rel='stylesheet' type='text/css'>
		<!--webfonts-->
	</head>
	<body>	
			<!--start-login-form-->
				<div class="main">
			    	<div class="login-head">
					    <h1>Personel Kayıt Sayfası</h1>
					</div>
					<div  class="wrap">
						  <div class="Regisration">
						  	<div class="Regisration-head">
						    	<h2><span></span>Personel Bilgileri</h2>
						 	 </div>
						  	<form runat="server">
								  <asp:TextBox ID="TextBox1" runat="server" placeholder="Adı" ></asp:TextBox>
								  <asp:TextBox ID="TextBox2" runat="server" placeholder="Soyadı" ></asp:TextBox>
								  <br /><h3 style="color:aliceblue">Departman:</h3>
								  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="DepartmanIsmi" DataValueField="DepartmanIsmi"></asp:DropDownList>
								  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IzinTakipConnectionString %>" SelectCommand="SELECT [DepartmanIsmi] FROM [Departmanlar]"></asp:SqlDataSource>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
								  <br />
								  <br />
								  <br />
								  <h3 style="color:aliceblue">Pozisyon</h3>
								  <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="StatuIsmi" DataValueField="StatuIsmi">
                                  </asp:DropDownList>
								  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IzinTakipConnectionString %>" SelectCommand="SELECT [StatuIsmi] FROM [Statuler]"></asp:SqlDataSource>
								  <br />
								  <br />
								  <br />
								  <h5 style="color:#ffffff">Başlama Tarihi</h5>
								  <div style="margin-left:190px">
								  <asp:Calendar ID="Calendar1" runat="server" BackColor="White"></asp:Calendar>
								  </div>
								 <div class="Remember-me">
								<div class="p-container">
								<div class ="clear"></div>
							</div>
												 
								<div class="submit">
									<asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
								</div>
									<div class="clear"> </div>
								</div>
											
						  </form>
					</div>
			</div>
				<!--//End-login-form-->	
					
			  </div>
	</body>
</html>


