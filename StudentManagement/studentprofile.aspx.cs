using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class studentprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                if (Session["role"] == null || string.IsNullOrEmpty(Session["role"].ToString()))
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    getUserData();

                    if (!Page.IsPostBack)
                    {
                        getPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            
        }

        // update button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        // user defined function
        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Payment WHERE StudentID='" + Session["username"].ToString() +"';", con);
            
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE StudentID='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox3.Text = dt.Rows[0]["Fname"].ToString();
                TextBox4.Text = dt.Rows[0]["Lname"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["Gender"].ToString().Trim();
                TextBox1.Text = dt.Rows[0]["ContactNo"].ToString();
                TextBox2.Text = dt.Rows[0]["Email"].ToString();
                TextBox6.Text = dt.Rows[0]["DOB"].ToString();
                DropDownList3.SelectedValue = dt.Rows[0]["Gender"].ToString().Trim();
                TextBox5.Text = dt.Rows[0]["Address"].ToString();
                TextBox7.Text = dt.Rows[0]["StudentID"].ToString();
                TextBox8.Text = dt.Rows[0]["Password"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}