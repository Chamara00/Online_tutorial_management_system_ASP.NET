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
    public partial class studentmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView4.DataBind();
        }

        //add class button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfPaymentExist())
            {
                Response.Write("<script>alert('Student already exist');</script>");
            }
            else
            {
                addNewStudent();
            }
        }

        //remove class button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteStudent();
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        // Go button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getStudentDetails();
        }
        //Go 2 button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getTeacherDetails();
        }

        //user defined function
        void getStudentDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE StudentID='"+TextBox1.Text.Trim()+"';",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1 ) 
                {
                    TextBox2.Text = dt.Rows[0]["Fname"].ToString();
                    TextBox3.Text = dt.Rows[0]["Lname"].ToString();
                    TextBox4.Text = dt.Rows[0]["ContactNo"].ToString();
                    TextBox5.Text = dt.Rows[0]["Email"].ToString();

                    
                }

                

                else
                {
                    Response.Write("<script>alert('Invalid student ID')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfPaymentExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open() ;
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Payment where PayID = '" + TextBox11.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void addNewStudent()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Payment (PayID, StudentID, ClassName, TeacherID, AdminID) values(@PayID, @StudentID, @ClassName, @TeacherID, 'user')", con);
                cmd.Parameters.AddWithValue("@PayID", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@StudentID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ClassName", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@TeacherID", TextBox8.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added successfully');</script>");
                GridView4.DataBind();
            }
            catch(Exception ex )
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getTeacherDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Teacher WHERE TeacherID='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox9.Text = dt.Rows[0]["Fname"].ToString();
                    TextBox10.Text = dt.Rows[0]["Lname"].ToString();
                    

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

        void deleteStudent()
        {
            if (checkIfPaymentExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if(con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Payment WHERE PayID ='" + TextBox11.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Deleted successfully')</script>");
                    GridView4.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }


    }
}