using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library
{
    
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add Button click //issue book
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('author with this ID already exists... you cannot add another author with same Author  ID ');</script>");
            }
            else
            {
                AddNewAuthor();
            }

        }

        //update Button Click
        protected void Button3_Click(object sender, EventArgs e)
        {


            if (checkIfAuthorExists())
            {
                updateAuthor();
                
            }
            else
            {
                Response.Write("<script>alert('Author Does Not Exist... ');</script>");
            }

        }

        //Delete Button Click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
               DeleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author Does Not Exist... ');</script>");
            }


        }


        //Go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorById();


        }

        //User DEfined Function

        //go buttom
        void getAuthorById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('INVALID AUTHOR ID')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }


        //to delete author
        void DeleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl  WHERE author_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully ');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //for Updating Author detail/Name
        void updateAuthor()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name = @author_name WHERE author_id='"+TextBox1.Text.Trim()+"'", con);

                 //basically values are parameter which can be anthing but use same   
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());




                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated Successfully ');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }



        //for adding new author
        void AddNewAuthor()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id,author_name) values(@author_id,@author_name) ", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim()); //basically values are parameter which can be anthing but use same   
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
                



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added Successfully ');</script>");

                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

       
        

        //for chechking if Author is present or not
        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }


        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }


    }
    
}