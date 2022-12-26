<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="E_library.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
	
<!DOCTYPE html>
<html>

<head>
	<title>Active Login form Responsive Widget Template :: W3layouts</title>
	<!-- Meta tags -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- //Meta tags -->
    <link href="Content/UserLogin/style.css" rel="stylesheet" type="text/css" media="all"  />
	<!-- Style-CSS -->
    <link href="Content/UserLogin/font-awesome.css" rel="stylesheet" />
	<!-- font-awesome-icons -->
</head>

<body>
	<section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
					<h3>User Login</h3>
					<form action="#" method="post" class="signin-form">
						 
						<div class="form-input">
							
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <asp:TextBox ID="TextBox1" runat="server"  type="text" name="Member ID"
								placeholder="Member ID"  required="True" /> </asp:TextBox>
							
						</div>
						
						<div class="form-input">
							<span class="fa fa-key" aria-hidden="true"></span> <asp:TextBox ID="TextBox2" runat="server"  type="password" name="password"  placeholder="Password"
								required /> </asp:TextBox>
						</div>
						<div class="login-remember d-grid">
							<label class="check-remaind">
								<input type="checkbox">
								<span class="checkmark"></span>
								<p class="remember">Remember me</p>
							</label>
						<asp:Button class="btn theme-button" ID="Button1" runat="server" Text=Login OnClick="Button1_Click1" />
		                </div>
						<div class="new-signup">
							<a href="#reload" class="signuplink">Forgot password?</a>
						</div>
					</form>
					<div class="social-icons">
						<p class="continue"><span>Or</span></p>
						<div class="social-login">
							<a href="www.facebook.com">
								<div class="facebook">
									<span class="fa fa-facebook" aria-hidden="true"></span>

								</div>
							</a>
							<a href="www.google.com/login">
								<div class="google">
									<span class="fa fa-google-plus" aria-hidden="true"></span>
								</div>
							</a>
							<asp:LinkButton runat="server" ID = "LinkButton6" >
							<a href="Adminlogin.aspx"> 
								<div class="google">
								<span  class="admin" aria-hidden="true">ADMIN LOGIN</span>	
								</div>
							</a>
								 </asp:LinkButton>
						</div>
						
					</div>
					<p class="signup">Don’t have an account? <a href="Signup.aspx" class="signuplink">Sign up</a></p>
					<!--<p><a href="homePage.aspx"> <<< Back To Home</a></p> -->
				 <asp:LinkButton runat="server" ID="ClickButton2"  class="btn theme-button" BorderStyle="Ridge" OnClick="ClickButton2_Click"> <<< BACK TO HOME</asp:LinkButton> 
				</div>
           				



				<!-- copyright -->
				<div class="copy-right">
					<p hidden >© 2020 Active Login Form. All rights reserved | Design by <a href="http://w3layouts.com/"
							target="_blank">W3Layouts</a></p>
				</div>
				<!-- //copyright -->
				
			</div>
		</div>
	</section>
	
</body>

</html>

</asp:Content>
