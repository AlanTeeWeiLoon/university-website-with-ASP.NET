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
    public partial class InternationalScholarship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtBirth.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.LightGray;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();

                string filename = fuEducation.PostedFile.FileName;
                fuEducation.SaveAs(Server.MapPath("applicant/" + filename));

                string query = "Select count(*) from Scholarship where SEmail = '" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    //check cannot have double same email(Response -> pop down a word)
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");
                }
                else
                {
                    //Instantiate a new command with a query and connection
                    string query1 = "insert into Scholarship (SName, SGender, SEmail, SPassportIC, SPhone, SHPhone, SNationality, SBirth, SInterestCourse, SQualification, SAttachment) values (@name,@gender,@email,@passic,@phone,@hphone,@nation,@birth,@course,@qualify,@attachment)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@gender", ddlGender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@passic", txtPassport.Text);
                    cmd1.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd1.Parameters.AddWithValue("@hphone", txtHPhone.Text);
                    cmd1.Parameters.AddWithValue("@nation", txtNationality.Text);
                    cmd1.Parameters.AddWithValue("@birth", Calendar1.SelectedDate);
                    cmd1.Parameters.AddWithValue("@course", ddlCourse.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@qualify", txtQualification.Text);
                    cmd1.Parameters.AddWithValue("@attachment", "applicant/" + filename);
                    //insert data into a database
                    cmd1.ExecuteNonQuery();


                    Response.Write("<script type=\"text/javascript\">alert('Apply Successful, We will reply you through Email.');</script>");
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}
