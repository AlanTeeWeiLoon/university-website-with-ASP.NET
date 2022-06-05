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
    public partial class ViewAssignment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string fetchAssignment()
        {
            string id = Request.QueryString["id"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from Student where Stud_ID = '" + id + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string course = dt.Rows[0][6].ToString();
            string lvl = dt.Rows[0][7].ToString();
           
            string htmlStr = "";
           
            con.Open();
            string query = "select * from Assessment where Course = '"+ course +"' and Year = '"+ lvl + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int AssID = reader.GetInt32(0);
                string AssName = reader.GetString(3);
                string UploadDate = reader.GetDateTime(7).ToString("yyyy-MM-dd");
                string Deadline = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                string filepath = reader.GetString(6);

                htmlStr += "<tr><td>" + AssID + "</td><td>" + AssName + "</td><td>" + UploadDate + "</td><td>" + Deadline + "</td><td><a href =" + filepath + " > Download File </ a ></td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}