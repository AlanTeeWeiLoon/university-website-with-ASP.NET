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
    public partial class LeaveApprove : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Leave where SNo = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblName.Text = dt.Rows[0][1].ToString();
                lblReason.Text = dt.Rows[0][2].ToString();
                lblDate.Text = dt.Rows[0][3].ToString() + "to" + dt.Rows[0][4].ToString();
                lblNotes.Text = dt.Rows[0][5].ToString();
                ddlStatus.Text = dt.Rows[0][7].ToString();


            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();

            string query = "update Leave set Name ='" + lblName.Text + "',Reason = '" + lblReason.Text + "',Notes='" + lblNotes.Text +
                "',Status ='" + ddlStatus.Text + "'where SNo = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("LecturerLeave.aspx");
        }
    }
}