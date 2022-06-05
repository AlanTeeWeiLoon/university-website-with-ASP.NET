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
    public partial class RemoveRecommendedBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            id = Convert.ToString(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Book where BookId = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtBookId.Text = id.ToString();
                txtBookName.Text = dt.Rows[0][1].ToString();
                txtAuthor.Text = dt.Rows[0][2].ToString();
                ddlCategory.Text = dt.Rows[0][3].ToString();
                ddlRakNo.Text = dt.Rows[0][4].ToString();
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Book set Recommend ='0' where BookId = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Book Unrecommended Successfully";
            con.Close();
        }
    }
}