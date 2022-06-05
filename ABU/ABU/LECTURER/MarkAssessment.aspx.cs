using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace ABU.LECTURER
{
    public partial class MarkAssessment : System.Web.UI.Page
    {
        static int ansID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select * from Assessment", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lblMarks.DataBind();
                lblMarks.Text = dt.Rows[0][4].ToString();
            }
        }

        public string fetchData()
        {

            string Stud_ID =Request.QueryString["Stud_ID"];
            string assName = Request.QueryString["assName"];
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "Select Student.Stud_Name, Student.Stud_Course, Student.Stud_Lvl, Answer.AnsID, Answer.File_Path FROM Answer INNER JOIN Student on Student.Stud_ID = Answer.Stud_ID INNER JOIN Assessment ON Assessment.AssessmentName = Answer.AssID WHERE Assessment.AssessmentName ='" + assName + "' AND Answer.Stud_ID = '" + Stud_ID + "'" ;
         
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                string Stud_Name = reader.GetString(0);
                string Stud_Course = reader.GetString(1);
                string Stud_Lvl = reader.GetString(2);
                if (ansID == 0)
                {
                    ansID = reader.GetInt32(3);
                }
                
                string File_Path = reader.GetString(4);

                htmlStr += "<tr><td><b>" + "Student Name : " + "</b></td><td>" + Stud_Name + "</td></tr>" +
                    "<tr><td><b>" + "Course : " + "</b></td><td>" + Stud_Course + "</td></tr>" +
                    "<tr><td><b>" + "Year : " + "</b></td><td>" + Stud_Lvl + "</td></tr>" +                   
                    "<tr><td><b>" + "File : " + "</b></td><td><a href =" + File_Path + " > Download </a></td></tr>";

            }
            
            con.Close();
            return htmlStr;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int Marks = int.Parse(txtMarks.Text);
            int TotalMarks = Int16.Parse(lblMarks.Text);

            if (Marks>TotalMarks)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Marks must be within the range";
            }
            else
            {
                try
                {
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    connection.Open();
                    string query = "Update Answer SET Marks = @Marks WHERE AnsID = @ansID";
                    SqlCommand cmd = new SqlCommand(query, connection);

                    cmd.Parameters.AddWithValue("@Marks", int.Parse(txtMarks.Text));
                    cmd.Parameters.AddWithValue("@ansID", ansID);
                    cmd.ExecuteNonQuery();

                    Label1.ForeColor = System.Drawing.Color.ForestGreen;
                    Label1.Text = "Mark had updated";
                    connection.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("Please enter numbering format");
                }
            }
            

        }
    }
}