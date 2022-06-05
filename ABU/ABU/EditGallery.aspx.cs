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
    public partial class EditGallery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }

        public string fetchGallery()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Template where Category='Gallery'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int ID = reader.GetInt32(0);
                string Title = reader.GetString(1);
                string Image = reader.GetString(2);

                htmlStr += "<tr><td>" + Title + "</td><td><a href=" + Image +">ViewImage</a></td></tr>";

            }
            con.Close();
            return htmlStr;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string filename = fuImage.PostedFile.FileName;
                fuImage.SaveAs(Server.MapPath("applicant/" + filename));
              
                    //Instantiate a new command with a query and connection
                    string query1 = "insert into Template (Title,Image,Category) values (@title,@image,@category)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@title", txtTitle.Text);
                    cmd1.Parameters.AddWithValue("@image", "applicant/" + filename);
                    cmd1.Parameters.AddWithValue("@category", "Gallery");



                //insert data into a database
                cmd1.ExecuteNonQuery();


                    Response.Write("<script type=\"text/javascript\">alert('Add Image Successful.');</script>");
                    con.Close();
                    txtTitle.Text = string.Empty;

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}