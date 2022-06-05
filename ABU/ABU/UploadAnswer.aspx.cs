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
    public partial class UploadAnswer : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            txtuploaddate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            string studid = Request.QueryString["id"].ToString();
        }

        protected void submit_click(object sender, EventArgs e)
        {
            string studid = Request.QueryString["id"].ToString();
            if (!FileUpload.HasFile)
            {
                Response.Write("No file Selected"); return;
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    con.Open();
                    string fileName = FileUpload.PostedFile.FileName; //get file name
                    FileUpload.SaveAs(Server.MapPath("LECTURER/Answer/" + fileName)); //upload to folder Images

                    //upload the content to table Library
                    string query1 = " insert into Answer (File_Name, Stud_ID, UploadDate, File_Path, AssID) values (@filename, @studid, @uploaddate, @filepath, @assid) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@filename", txtfilename.Text);
                    cmd1.Parameters.AddWithValue("@studid", studid);
                    cmd1.Parameters.AddWithValue("@uploaddate", txtuploaddate.Text);
                    cmd1.Parameters.AddWithValue("@filepath", "Answer/" + fileName);
                    cmd1.Parameters.AddWithValue("@assid", ddlAssID.SelectedItem.ToString());
                    cmd1.ExecuteNonQuery();
                    Label1.ForeColor = System.Drawing.Color.ForestGreen;
                    Label1.Text = "Submitted Successfully";
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
        }


        public string fetchfile()
        {
            string studid = Request.QueryString["id"].ToString();
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Answer where Stud_ID = '" + studid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int answerid = reader.GetInt32(0);
                string filename = reader.GetString(1);
                string uploaddate = reader.GetDateTime(3).ToString("yyyy-MM-dd");
                string filepath = reader.GetString(4);

                htmlStr += "<tr><td>" + filename + "</td><td>" + uploaddate + "</td><td><a href =" + filepath + " > View File </ a ></td><td><a href = RemoveAnswer.aspx?id=" + studid + "&ansID=" + answerid + " > Remove </ a ></td></tr>";

            }
            con.Close();
            return htmlStr;

        }


    }
}