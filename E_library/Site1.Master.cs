using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            try
            {
                //This condition will check if anybody is log in  or not
                if (Session["role"] == null)
                {
                    //this will show  userlogin to the users
                    LinkButton1.Visible = true; //Userlogin link  button
                    LinkButton2.Visible = true; //signup button link button

                    LinkButton3.Visible = false; //logout link  button
                    LinkButton7.Visible = false; //hello user button link button

                    

                    //this link will onl show to only admin except linkbutton 6 -->
                    LinkButton6.Visible = true; //admin login link  button
                    LinkButton11.Visible = false; //author button link button
                    LinkButton12.Visible = false; //publisher link  button
                    LinkButton8.Visible = false; //book inventory link  button
                    LinkButton9.Visible = false; //book issuing link  button
                    LinkButton10.Visible = false; //member management button link button
                }

                else if (Session["role"].Equals("user"))
                {

                    //this will show  userlogin to the users
                    LinkButton1.Visible = false; //Userlogin link  button
                    LinkButton2.Visible = false; //signup button link button

                    LinkButton3.Visible = true; //logout link  button
                    LinkButton7.Visible = true; //hello user button link button
                    LinkButton7.Text = "hello " + Session["username"].ToString();

                    //this condition will hide admin button which will onl be access by user
                    



                    //this link will onl show to only admin
                    LinkButton6.Visible = true; //admin login link  button
                    LinkButton11.Visible = false; //author button link button
                    LinkButton12.Visible = false; //publisher link  button
                    LinkButton10.Visible = false; //member management button link button
                }
                else if (Session["role"].Equals("admin"))
                {

                    //this will show  userlogin to the users
                    LinkButton1.Visible = false; //Userlogin link  button
                    LinkButton2.Visible = false; //signup button link button

                    LinkButton3.Visible = true; //logout link  button
                    LinkButton7.Visible = true; //hello user button link button
                    LinkButton7.Text = "HELLO SUPERUSER!  " + Session["username"].ToString();

                    



                    //this link will onl show to only admin as this is admin login all will be true except 1 one 
                    LinkButton6.Visible = false; //admin login link  button
                    LinkButton11.Visible = true; //author button link button
                    LinkButton12.Visible = true; //publisher link  button
                    LinkButton8.Visible = true; // book inventory link button
                    LinkButton9.Visible = true; // book issuing link button
                    LinkButton10.Visible = true; //member management button link button
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }




        }
    

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["fullname"] = null;
            Session["role"] = null;
            Session["status"] = null;



            //this will show  userlogin to the users
            LinkButton1.Visible = true; //Userlogin link  button
            LinkButton2.Visible = true; //signup button link button

            LinkButton3.Visible = false; //logout link  button
            LinkButton7.Visible = false; //hello user button link button



            //this link will onl show to only admin except linkbutton 6 -->
            LinkButton6.Visible = true; //admin login link  button
            LinkButton11.Visible = false; //author button link button
            LinkButton12.Visible = false; //publisher link  button
            LinkButton8.Visible = false; //book inventory link  button
            LinkButton9.Visible = false; //book issuing link  button
            LinkButton10.Visible = false; //member management button link button


        }
    }
}