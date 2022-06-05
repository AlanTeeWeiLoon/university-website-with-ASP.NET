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
    public partial class EditEventPage : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("select * from Template where TemplateId = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtTitle.Text = dt.Rows[0][1].ToString();
                Image.ImageUrl = dt.Rows[0][2].ToString();
                txtDate.Text = dt.Rows[0][6].ToString();
                txtDescribe.Text = dt.Rows[0][4].ToString();

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            id = Request.QueryString["id"];
            string filename = fuImage.PostedFile.FileName;
            fuImage.SaveAs(Server.MapPath("applicant/" + filename));
            string query = "update Template set Title ='" + txtTitle.Text + "',Image ='" + "applicant/" + filename + "',Date ='" + txtDate.Text + "',Description ='" + txtDescribe.Text +
                "'where TemplateId = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("EditEvent.aspx");
        }
    }
}