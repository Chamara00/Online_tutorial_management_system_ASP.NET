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
    public partial class teacher_signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkTeacherExists())
            {
                Response.Write("<script>alert('Teacher ID already exist. Try another one');</script>");
            }
            else
            {
                signupNewTeacher();
            }
        }


        bool checkTeacherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Teacher where TeacherID='" + TextBox7.Text.Trim() + "';", con);
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

        void signupNewTeacher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.PostedFile.FileName;
                    string filepath = "images/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("/images/") + filename);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    byte[] imageData = FileUpload1.FileBytes;

                    SqlCommand cmd = new SqlCommand("INSERT INTO Teacher (Fname, Lname, Gender, ContactNo, Email, DOB, Equalification, Address, Fee, Media, AccNo, BankName, TeacherID, Password, Photo) values(@Fname, @Lname, @Gender, @ContactNo, @Email, @DOB, @Equalification, @Address, @Fee, @Media, @AccNo, @BankName, @TeacherID, @Password, @Photo)", con);

                    cmd.Parameters.AddWithValue("@Fname", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Lname", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@ContactNo", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@DOB", TextBox6.Text.Trim());

                    cmd.Parameters.AddWithValue("@Equalification", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Fee", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@Media", DropDownList4.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@AccNo", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@BankName", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@TeacherID", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@Photo", imageData);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("login.aspx");
                    
                }




                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}