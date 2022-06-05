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
    public partial class ViewAssessment : System.Web.UI.Page
    {
        string lecID = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "Select * from Assessment";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int AssessmentID = reader.GetInt32(0);
                string Course = reader.GetString(1);
                int Year = reader.GetInt32(2);
                string AssessmentName = reader.GetString(3);
                int Total_Marks = reader.GetInt32(4);
                DateTime Deadline = reader.GetDateTime(5);
                htmlStr += "<tr><td>" + Course + "</td><td>" + Year + "</td><td>" + AssessmentName + "</td><td>" + Total_Marks +
                    "</td><td>" + Deadline + "</td><td><a href=EditAssessment.aspx?SNo=" + AssessmentID + ">Edit</a></td></tr>";
            }
            con.Close();
            return htmlStr;
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAssessment.aspx");
        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.Rows[GridView1.SelectedIndex];
            string AssessmentID = (selectedRow.Cells[1]).Text;
            Response.Write(AssessmentID);
            string target = String.Format("EditAssessment.aspx?AssessmentID={0}", AssessmentID);
            Response.Redirect(target);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchAssessment.aspx");
        }
    }
}