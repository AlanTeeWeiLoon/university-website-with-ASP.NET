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
    public partial class DisplayStudentAss : System.Web.UI.Page
    {
        static string assName=null;
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (assName == null)
                {
                    assName = Request.QueryString["AssessmentName"];
                }
                    

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    String myQuery = ("Select Answer.Stud_ID, Student.Stud_Name, Answer.UploadDate, Answer.File_Name " +
                    "FROM Answer INNER JOIN Student ON Student.Stud_ID = Answer.Stud_ID  INNER JOIN Assessment ON Assessment.AssessmentName = Answer.AssID " +
                    "WHERE Answer.AssID ='" + assName + "';");
                SqlDataSource1.SelectCommand = myQuery;
                    GridView1.DataBind();
                    GridView1.Visible = true;
                
            } 
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.Rows[GridView1.SelectedIndex];
            string Stud_ID = (selectedRow.Cells[1]).Text;
            Response.Write(Stud_ID);
            string target = String.Format("MarkAssessment.aspx?Stud_ID={0}&&assName={1}", Stud_ID, assName);
            Response.Redirect(target);
        }
    }
}