using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class SProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Student where Stud_ID = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Stud_Image.ImageUrl = dt.Rows[0][5].ToString();
                txtStudName.Text = dt.Rows[0][1].ToString();
                txtPhoneNo.Text = dt.Rows[0][3].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                txtCourse.Text = dt.Rows[0][6].ToString();
                txtLvl.Text = dt.Rows[0][7].ToString();
            }
        }

        protected void btnEditS_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("EditProfile.aspx?id=" + id);
        }
    }
}