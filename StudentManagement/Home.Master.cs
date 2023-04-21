using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //user signup link button

                    LinkButton5.Visible = false; //add class link button
                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //hello user link button
                    LinkButton13.Visible = false; //View class link button
                    LinkButton14.Visible = false; //Pay user link button

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton11.Visible = false; //student management link button
                    LinkButton12.Visible = false; //teacher management link button
                    LinkButton8.Visible = false; //class details link button
                    LinkButton9.Visible = false; //payment details link button
                    LinkButton10.Visible = false; //expense link button
                }
                else if (Session["role"].Equals("teacher"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //user signup link button

                    LinkButton5.Visible = true; //add class link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton13.Visible = false; //View class link button
                    LinkButton14.Visible = false; //Pay user link button
                    LinkButton7.Text = "Hello " + Session["TeacherID"].ToString();

                    LinkButton6.Visible = false; //admin login link button
                    LinkButton11.Visible = false; //student management link button
                    LinkButton12.Visible = false; //teacher management link button
                    LinkButton8.Visible = false; //class details link button
                    LinkButton9.Visible = false; //payment details link button
                    LinkButton10.Visible = false; //expense link button
                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //user signup link button

                    LinkButton5.Visible = false; //add class link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton13.Visible = true; //View class link button
                    LinkButton14.Visible = true; //Pay user link button
                    LinkButton7.Text = "Hello " + Session["StudentID"].ToString();

                    LinkButton6.Visible = false; //admin login link button
                    LinkButton11.Visible = false; //student management link button
                    LinkButton12.Visible = false; //teacher management link button
                    LinkButton8.Visible = false; //class details link button
                    LinkButton9.Visible = false; //payment details link button
                    LinkButton10.Visible = false; //expense link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //user signup link button

                    LinkButton5.Visible = false; //add class link button
                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton13.Visible = false; //View class link button
                    LinkButton14.Visible = false; //Pay user link button
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; //admin login link button
                    LinkButton11.Visible = true; //student management link button
                    LinkButton12.Visible = true; //teacher management link button
                    LinkButton8.Visible = true; //class details link button
                    LinkButton9.Visible = true; //payment details link button
                    LinkButton10.Visible = true; //expense link button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentmanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("teachermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("classdetails.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("paydetails.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("expenseform.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["Fname"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //user signup link button

            LinkButton3.Visible = false; //logout link button
            LinkButton7.Visible = false; //hello user link button

            LinkButton6.Visible = true; //admin login link button
            LinkButton11.Visible = false; //student management link button
            LinkButton12.Visible = false; //teacher management link button
            LinkButton8.Visible = false; //class details link button
            LinkButton9.Visible = false; //payment details link button
            LinkButton10.Visible = false; //expense link button

            Response.Redirect("homepage.aspx");
        }

        // view profile
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
                if (Session["role"] != null)
                {
                    if (Session["role"].ToString() == "student")
                    {
                        Response.Redirect("studentprofile.aspx");
                    }
                    else if (Session["role"].ToString() == "teacher")
                    {
                        Response.Redirect("teacherprofile.aspx");
                    }
                }
            

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("addclass.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("classdetails.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("paymentform.aspx");
        }
    }
}