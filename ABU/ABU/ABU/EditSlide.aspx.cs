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
    public partial class EditSlide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }

        public string fetchSlide() { 
        string htmlStr = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
            string query = "select * from Template where Category='Slide'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int ID = reader.GetInt32(0);
                string Title = reader.GetString(1);
                string Image = reader.GetString(2);
                string Link = reader.GetString(5);
                htmlStr += "<tr><td>" + Title + "</td><td><img src=" + Image + " style=\"width:250px; height:150px\" /></td><td>" + Link + "</td><td><button><a href=EditSlidePage.aspx?id=" + ID + ">Edit</a></button></td></tr>";

                }
             con.Close();
            return htmlStr;
        }
    }
}