using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace ABU.LECTURER
{
    public partial class ApplyLeave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select Lec_Name from Lecturer where Lec_Id ='"+Session["LecturerID"].ToString()+"'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                txtName.Text = dt.Rows[0][0].ToString(); 
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                string commandText = @"insert into Leave(Name,Reason,StartDate,EndDate,Notes,UploadDate) values (@Name, @Reason, @StartDate, @EndDate, @Notes, @UploadDate)";
                cmd.CommandText = commandText;
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Reason", rdbOperator.Text);
                cmd.Parameters.AddWithValue("@StartDate", StartDate.Text);
                cmd.Parameters.AddWithValue("@EndDate", EndDate.Text);
                cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);
                cmd.Parameters.AddWithValue("@UploadDate", DateTime.Today);
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Response.Write("<script language=javascript>alert('Application had been submitted.')</script>");
                connection.Close();

            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

            rdbOperator.SelectedIndex = 0;
            StartDate.Text = string.Empty;
            EndDate.Text = string.Empty;
            txtNotes.Text = string.Empty;
        }
    }
}