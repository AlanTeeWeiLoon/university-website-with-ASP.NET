using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ABU.LECTURER
{
    public partial class EditAssessment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int AssessmentID = 0;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if ( AssessmentID == 0)
            {
                AssessmentID = Convert.ToInt16(Request.QueryString["AssessmentID"]);
            }
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select Lec_Course from Lecturer", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                txtCourse.DataBind();

                SqlDataAdapter da = new SqlDataAdapter("Select * from Assessment where AssessmentID= '" + AssessmentID + "'", con);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                txtCourse.Text = dt1.Rows[0][1].ToString();
                DropDownList1.SelectedValue = dt1.Rows[0][2].ToString();
                txtAN.Text = dt1.Rows[0][3].ToString();
                txtMarks.Text = dt1.Rows[0][4].ToString();
                DateTime date = Convert.ToDateTime(dt1.Rows[0][5].ToString());
                calendarDeadline.SelectedDate = date;
                calendarDeadline.VisibleDate = date;

            }


        }

        protected void btnEdit_Click(object sender, EventArgs e)
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
                string query = "update Assessment set Year = '" + DropDownList1.SelectedValue + "',AssessmentName = '" + txtAN.Text + "',Total_Marks = '" + txtMarks.Text + "'," +
                    "Deadline = '" + calendarDeadline.SelectedDate.ToString("yyyy-MM-dd") + "'" + " where AssessmentID = '" + AssessmentID + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Edit Successfully";
            }
            catch (Exception ex)
            {
                Response.Write("Counld'nt Upload Assessment, please check your Internet Connection" + ex.Message);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Assessment where AssessmentID = '" + AssessmentID + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("Delete Successfully");
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