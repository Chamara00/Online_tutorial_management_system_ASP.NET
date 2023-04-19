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
    public partial class student_signup : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkStudentExists())
            {
                Response.Write("<script>alert('Student ID already exist. Try another one');</script>");
            }
            else
            {
                signupNewStudent();
            }
            
        }

        // Student defined method

        bool checkStudentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Student where StudentID='" +TextBox7.Text.Trim()+ "';", con);
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

            
        }

        void signupNewStudent()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Student (Fname, Lname, Gender, ContactNo, Email, DOB, Grade, Address, StudentID, Password, AdminID) values(@Fname, @Lname, @Gender, @ContactNo, @Email, @DOB, @Grade, @Address, @StudentID, @Password, 'user')", con);

                cmd.Parameters.AddWithValue("@Fname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Lname", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ContactNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Grade", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim()); // add a placeholder for the Address field
                cmd.Parameters.AddWithValue("@StudentID", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox8.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign up successful. Go to login page');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
            }
        }
        
    }
}


