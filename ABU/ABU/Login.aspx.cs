using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "admin" & txtPassword.Text == "admin")
            {
                Session["ID"] = "admin";
                Response.Redirect("home.aspx");
            }
            else if (txtID.Text == "librarian" & txtPassword.Text == "librarian")
            {
                Session["ID"] = "librarian";
                Response.Redirect("HomeLibrarian.aspx");
            }
            else {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from Lecturer where Lec_Id = '" +
                    txtID.Text + "' and Lec_Password ='" + txtPassword.Text + "'", con);
                int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (count > 0)
                {
                    Session["LecturerID"] = txtID.Text;
                    Response.Redirect("/LECTURER/LectureMenu.aspx?id=" + txtID.Text);
                }
                else {

                    SqlCommand cmd1 = new SqlCommand("select count(*) from Student where Stud_ID = '" +
                        txtID.Text + "' and Stud_Password='" + txtPassword.Text + "'", con);
                    int count1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                    if (count1 > 0)
                    {
 
                        Response.Redirect("StudentHome.aspx?id="+ txtID.Text);
                        
                    }
                    else {
                        Response.Write("<script type=\"text/javascript\">alert('Login Failed.');</script>");
                    }


                }

                con.Close();

            }


        }

        protected void btnForget_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");

        }
    }
}