<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="E_library.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <style>
       body{
           background-image:url( '../../Images/lib_login.jpg'); 
       }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px"src="Images/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>USER/MEMBER  SIGNUP</h4>
                        </center>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>

                        <div class="col-md-6">
                       <label>Date Of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>

                  </div>





                   <div class="row">
                     <div class="col-md-6">
                        <label>Contact no</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>

                        <div class="col-md-6">
                       <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>

                  </div>


                   


                  
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                          <asp:DropDownList   class="form-control" ID="DropDownList" runat="server" >
                              <asp:ListItem Text="Select" Value="Select">
                              </asp:ListItem>
                               <asp:ListItem Text=" Andhra Pradesh" Value=" Andhra Pradesh">
                              </asp:ListItem>
                               <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh">
                              </asp:ListItem>
                               <asp:ListItem Text="Assam" Value="Assam">
                              </asp:ListItem>
                               <asp:ListItem Text="Bihar" Value="Bihar">
                              </asp:ListItem>
                               <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh">
                              </asp:ListItem>
                               <asp:ListItem Text="Goa " Value="Goa ">
                              </asp:ListItem>
                               <asp:ListItem Text="Gujarat" Value="Gujarat">
                              </asp:ListItem>
                               <asp:ListItem Text="Haryana" Value="Haryana">
                              </asp:ListItem>
                               <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh">
                              </asp:ListItem>
                               <asp:ListItem Text="Jammu and Kashmi" Value="Jammu and Kashmi">
                              </asp:ListItem>
                               <asp:ListItem Text="Jharkhand" Value="Jharkhand">
                              </asp:ListItem>
                               <asp:ListItem Text="Karnataka" Value="Karnataka">
                              </asp:ListItem>
                              <asp:ListItem Text="Kerala" Value="Kerala">
                                 
                              </asp:ListItem>
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra">
                              </asp:ListItem>
                              <asp:ListItem Text="Manipur" Value="Manipur">
                              </asp:ListItem>
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya">
                              </asp:ListItem>
                              <asp:ListItem Text="Mizoram" Value="Mizoram">
                              </asp:ListItem>
                              <asp:ListItem Text="Nagaland" Value="Nagaland">
                              </asp:ListItem>
                              <asp:ListItem Text="Odisha" Value="Odisha">
                              </asp:ListItem>
                              <asp:ListItem Text="Punjab " Value="Punjab ">
                              </asp:ListItem>
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan">
                              </asp:ListItem>
                               <asp:ListItem Text="Sikkim" Value="Sikkim">
                              </asp:ListItem>
                               <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu">
                              </asp:ListItem>
                               <asp:ListItem Text="Telangana " Value="Telangana ">
                              </asp:ListItem>
                               <asp:ListItem Text="Tripura" Value="Tripura">
                              </asp:ListItem>
                               <asp:ListItem Text="Uttarakhand" Value="Uttarakhand">
                              </asp:ListItem>
                               <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh">
                              </asp:ListItem>
                               <asp:ListItem Text="West Bengal" Value="West Bengal">
                              </asp:ListItem>
                               






                          </asp:DropDownList>
                        </div>
                     </div>

                        <div class="col-md-4">
                       <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
                        </div>
                     </div>

                    <div class="col-md-4">
                       <label>Pin-code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>

                  </div>



                   
                   











                  <div class="row">
                     <div class="col">
                       
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>



                         <div class="row">
                             <div class="col">
                                 <center>
                                <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                                     </center>
                             </div>
                             
                         </div>
    
                         <br />

                         <div class="row">
                     <div class="col-md-6">
                        <label>USER/MEMBER ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="USER/MEMBER ID" TextMode="SingleLine"></asp:TextBox>
                        </div>
                     </div>

                        <div class="col-md-6">
                       <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>

                  </div>
                         <br />

                      </div>
                      <center>
                      <div class="row">
                          <div class="col">
                              <div class="form-group">
                                  <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" Width="171px" />  
                              </div>
                          </div>

                      </div>
                      </center>

                       
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>


    
</asp:Content>
