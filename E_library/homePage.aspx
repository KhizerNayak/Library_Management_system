<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="E_library.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Content/css/Homepage.css" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <section>
      <img src="Images/home-bg.jpg" class="img-fluid" />
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img   src="Images/digital-inventory.png" width="150px" />
                  <h4>Digital Book Inventory</h4>
                  <p class="text-justify">This is a Digital world and you can find here what you need</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img   src="Images/search-online.png" width="150px" />
                  <h4>Search Books</h4>
                  <p class="text-justify"> You can search books here!!!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img  src="Images/defaulters-list.png" width="150px" />
                  <h4>Defaulter List</h4>
                  <p class="text-justify">If you are in a defaulter list than you account will show on hold</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>  
      <img  src="Images/in-homepage-banner.jpg" class="img-fluid"   />
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="Images/sign-up.png" />
                  <h4>Sign Up</h4>
                  <p class="text-justify"> You can sign up at the top right corner</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="Images/search-online.png" />
                  <h4>Search Books</h4>
                  <p class="text-justify">You can search book at our website</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px"   src="Images/library.png" />
                  <h4>Visit Us</h4>
                  <p class="text-justify">Also you can visit us at our local library</p>
               </center>
            </div>
         </div>
      </div>
   </section>



</asp:Content>
