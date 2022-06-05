using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ABU.LECTURER
{
    public partial class CreateAssessment : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["LecturerID"].ToString();
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlDataAdapter da = new SqlDataAdapter("Select * From Lecturer", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtCourse.Text = dt.Rows[0][8].ToString();
            }
            

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if (!FileUpload1.HasFile)
            {
                Response.Write("No File Selected"); return;
            }

            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlDataReader reader = null;
                SqlCommand check = new SqlCommand("select * from Assessment where AssessmentName=@AssessmentName", con);
                check.Parameters.AddWithValue("@AssessmentName", txtAN.Text);
                check.Connection = con;
                reader = check.ExecuteReader();
                while (reader.Read())
                {
                    if (reader.GetString(3).Equals(txtAN.Text))
                    {
                        txtAN.Visible = true;
                        Response.Write("<script language=javascript>alert('Name already exist. Please enter again')</script>");
                        return;
                    }
                }
                con.Close();

                
                try
                {
                    con.Open();

                    string fileName = FileUpload1.PostedFile.FileName; //get file name
                    FileUpload1.SaveAs(Server.MapPath("UploadedAssessment/" + fileName));//Upload to folder 

                    //upload the content and image path to table 
                    string query1 = "insert into Assessment (Course, Year, AssessmentName,Total_Marks,Deadline,Document,UploadDate) values (@Course, @Year, @AssessmentName,@Total_Marks,@Deadline,@Document,@UploadDate)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@Course", txtCourse.Text);
                    cmd1.Parameters.AddWithValue("@Year", DropDownList1.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@AssessmentName", txtAN.Text);
                    cmd1.Parameters.AddWithValue("@Total_Marks", int.Parse(txtMarks.Text));
                    cmd1.Parameters.AddWithValue("@Deadline", calendarDeadline.SelectedDate);
                    cmd1.Parameters.AddWithValue("@Document", "UploadedAssessment/" + fileName);
                    cmd1.Parameters.AddWithValue("@UploadDate", DateTime.Today);
                    cmd1.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                    lblMessage.Text = "Assessment Added Successfully";
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
        }




        protected void btnReset_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = 0;
            txtAN.Text = string.Empty;
            txtMarks.Text = string.Empty;
            FileUpload1 = new FileUpload();
            calendarDeadline.VisibleDate = DateTime.Today;
            calendarDeadline.SelectedDates.Clear();
        }
    }
}