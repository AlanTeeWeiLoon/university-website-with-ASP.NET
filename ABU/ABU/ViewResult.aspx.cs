using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class ViewResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string fetchResult()
        {
            string id = Request.QueryString["id"].ToString();
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "Select Assessment.AssessmentName, Answer.File_Name, Answer.Marks from Assessment inner join Answer on Assessment.AssessmentName = Answer.AssID where Answer.Stud_ID='" + id +  "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string assessmentName = reader.GetString(0);
                string filename = reader.GetString(1);
                int marks = reader.GetInt32(2);
                htmlStr += "<tr><td>" + assessmentName + "</td><td>" + filename + "</td><td>" + marks + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}