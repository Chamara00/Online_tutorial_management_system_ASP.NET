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
    public partial class addclass : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        //add class button click
        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Class (ClassName, Grade, Syllabus, Fee, Media , Link) values(@ClassName, @Grade, @Syllabus, @Fee, @Media , @Link)", con);

                cmd.Parameters.AddWithValue("@ClassName", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Grade", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Syllabus", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Fee", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Media", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Link", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();

                
                con.Close();
                Response.Write("<script>alert('Class added successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        private DataTable GetTeacherClass(int teacherID)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed) {
                    con.Open(); 
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Teacher_schedule WHERE TeacherID = @TeacherID", con);
                cmd.Parameters.AddWithValue("@TeacherID", teacherID);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return dt;
        }

        private int GetCurrentTeacherID()
        {
            return 1;
        }
    }
}