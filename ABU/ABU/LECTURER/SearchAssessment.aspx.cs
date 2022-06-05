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
    public partial class SearchAssessment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Assessment where AssessmentName Like '%" + txtAN.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string Course = reader.GetString(1);
                string Year = reader.GetString(2);
                string AssessmentName = reader.GetString(3);             
                string Deadline = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                string Document = reader.GetString(6);

                htmlStr += "<tr><td>" + Course + "</td><td>" + Year + "</td><td>" + AssessmentName + "</td><td>" + Deadline + "</td><td><a href =" + Document + " >  Download </a></td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}