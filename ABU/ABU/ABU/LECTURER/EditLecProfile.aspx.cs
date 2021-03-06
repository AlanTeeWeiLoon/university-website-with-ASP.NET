using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ABU
{
    public partial class EditLecProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["LecturerID"].ToString();
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * From Lecturer Where Lec_ID = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                LecImage.ImageUrl = dt.Rows[0][5].ToString();
                txtName.Text = dt.Rows[0][1].ToString();
                txtPhone.Text = dt.Rows[0][3].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                txtCourse.Text = dt.Rows[0][8].ToString();
            }

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            con.Open();
            string query = "update Lecturer set Lec_Phone = '" + txtPhone.Text + "', Lec_Email = '" + txtEmail.Text + "' where Lec_ID = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            lbl1.ForeColor = System.Drawing.Color.ForestGreen;
            lbl1.Text = "Profile Edited Successfully";
            con.Close();
        }
    }
}