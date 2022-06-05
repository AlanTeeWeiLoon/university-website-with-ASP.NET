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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }
        public string fetchAdmin()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Applicant";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string AName = reader.GetString(1);
                string ABirth = reader.GetDateTime(2).ToString("yyyy-MM-dd");
                string AGender = reader.GetString(3);
                int APhone = reader.GetInt32(4);
                string AEmail = reader.GetString(5);
                string ACourse = reader.GetString(6);
                string Transcript = reader.GetString(7);
                htmlStr += "<tr><td>" + AName + "</td><td>" + ABirth + "</td><td>" + AGender + "</td><td>" + APhone + "</td><td>" + AEmail + "</td><td>" + ACourse + "</td><td><a href =" + Transcript + " > View </ a ></td><td><button><a href=ReplyEmail.aspx?id=" + AEmail + ">Email</a></button></td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}