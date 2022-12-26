<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="E_library.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>ADMIN LOGIN PAGE</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flashy Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<!-- <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> -->
    <link href="Content/Admin_login/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Style-CSS --> 
  <!-- <link rel="stylesheet" href="css/font-awesome.css"> -->
    <link href="Content/Admin_login/font-awesome.css" rel="stylesheet" />
	<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //online-fonts -->
</head>
<body>
	<!-- main -->
	<div data-vide-bg="Images/video/animation.mp4">
        
		<div class="center-container">
			<!--header-->
			<div class="header-w3l">
				<h1 style="font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif">ADMIN LOGIN </h1>
			</div>
			<!--//header-->
			<div class="main-content-agile">
				<div class="left-w3l-mk">
					<img src="Images/adminuser.png" alt="Lib_Login ">
					<h3>Hey! SUPER USER </h3>
				<!--	<div class="social-icon">
							<a href="www.twitter.com" class="social-button twitter"><i class="fa fa-twitter"></i></a>
							<a href="www.facebook.com" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
							<a href="www.google.com" class="social-button google"><i class="fa fa-google-plus"></i></a> 
							
						</div>   -->
				</div>
				<div class="sub-main-w3">	
					<div class="wthree-pro">
						<h2><span>Connect</span> to Your Account</h2>
					</div>
					<form action="#" method="post">
				  <asp:TextBox ID="TextBox1" runat="server" placeholder="SUPER USER ID" name="Name" class="user" type="text" required > </asp:TextBox>
					 <span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span> 
  
						<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br><br>

					<asp:TextBox ID="TextBox2" runat="server" placeholder="Password" name="Password" class="pass" type="password" required></asp:TextBox>
						<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
						  <div class="demo5">
							 <div class="switch demo3">
								<input type="checkbox">
								<label><i></i></label>
							  </div>	
							</div>  

						<div class="sub-w3l">
							<h6><a href="#">Stay Signed In</a></h6>
							<div class="right-w3l">
						<asp:Button ID="Button1" runat="server"  type="submit" Text=Login OnClick="Button1_Click" />		 
							</div>
						</div>

						<div class="sub-w3l">
						<div class="right-w3l">
						<asp:LinkButton ID="Button2" type="link" href="Userlogin.aspx"  runat="server" >USER LOGIN</asp:LinkButton>	 
							</div>
							</div>

						
						

					</form>
				</div>
				<div class="clear"></div>
			</div>
			<!--//main-->

			<!--footer-->
			<div class="footer" hidden >
				<p>&copy; 2017 Flashy Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
			<!--//footer-->
		</div>
	</div>
	
<!-- js -->
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>  -->
    <script type="text/javascript"  src="Scripts/admin_login/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- <script src="js/jquery.vide.min.js"></script>  -->
    <script src="Scripts/admin_login/jquery.vide.min.js"></script>
</body>
</html>
</asp:Content>
