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
    public partial class CheckFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }
        public string fetchFeedback()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Feedback";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
             
                string FB_Name = reader.GetString(1);
                string FB_Email = reader.GetString(2);
                string FB_Purpose = reader.GetString(3);
                string FB_AddOn = reader.GetString(4);
                htmlStr += "<tr><td>" + FB_Name + "</td><td>" + FB_Email + "</td><td>" + FB_Purpose + "</td><td>" + FB_AddOn + "</td><td><button><a href=ReplyEmail.aspx?id=" + FB_Email + ">Email</a></button></td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}