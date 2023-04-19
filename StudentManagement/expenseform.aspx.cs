using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class expenseform : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // Transferred button click
        protected void Button_Click(object sender, EventArgs e)
        {
            if (checkIfSalaryExist())
            {
                Response.Write("<script>alert('Student already exist');</script>");
            }
            else
            {
                transferred();
            }
        }


        // Go button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getTeacherDetails();
        }

        // user defined fuction
        void getTeacherDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Teacher WHERE TeacherID='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["Fname"].ToString();
                    TextBox6.Text = dt.Rows[0]["Lname"].ToString();
                    TextBox1.Text = dt.Rows[0]["AccNo"].ToString();
                    TextBox2.Text = dt.Rows[0]["BankName"].ToString();


                }



                else
                {
                    Response.Write("<script>alert('Invalid Teacher ID')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        
        bool checkIfSalaryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Expense where ExpenseID = '" + TextBox5.Text.Trim() + "'", con);
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
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void transferred()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Expense (ExpenseID, PaidFee, TeacherID, Date) values(@ExpenseID, @PaidFee, @TeacherID, @Date)", con);
                cmd.Parameters.AddWithValue("@ExpenseID", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PaidFee", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@TeacherID", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox13.Text.Trim());
                


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}