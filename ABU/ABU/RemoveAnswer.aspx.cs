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
    public partial class RemoveAnswer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            string ansid = Request.QueryString["ansID"].ToString();
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Answer where AnsID = '" + ansid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                txtid.Text = ansid.ToString();
                txtfilename.Text = dt.Rows[0][1].ToString();
                txtuploaddate.Text = dt.Rows[0][3].ToString();

            }
        }

        public string fetchfile()
        {
            string id = Request.QueryString["id"].ToString();
            string ansid = Request.QueryString["ansID"].ToString();
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Answer where Stud_ID = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int answerid = reader.GetInt32(0);
                string filename = reader.GetString(1);
                string uploaddate = reader.GetDateTime(3).ToString("yyyy-MM-dd");
                string filepath = reader.GetString(4);

                htmlStr += "<tr><td>" + answerid + "</td><td>" + filename + "</td><td>" + uploaddate + "</td><td><a href =" + filepath + " > View File </ a ></td><td></td></tr>";

            }
            con.Close();
            return htmlStr;

        }

        protected void btnRemove_click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            string ansid = Request.QueryString["ansID"].ToString();
            con.Open();
            string query = "delete from Answer where AnsID ='" + ansid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
            Label1.Text = "Answer File Deleted";
            con.Close();
        }
    }
}