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
    public partial class ViewScholarship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }

        public string fetchScholarship()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Scholarship";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string SName = reader.GetString(1);
                string SGender = reader.GetString(2);
                string SBirth = reader.GetDateTime(8).ToString("yyyy-MM-dd");
                string SICPass = reader.GetString(4);
                int SHPhone = reader.GetInt32(5);
                int SPhone = reader.GetInt32(6);
                string SNatioanlity = reader.GetString(7);
                string SEmail = reader.GetString(3);
                string SCourse = reader.GetString(9);
                string SQualify = reader.GetString(10);
                string Attachment = reader.GetString(11);
                htmlStr += "<tr><td>" + SName + "</td><td>" + SGender + "</td><td>" + SBirth + "</td><td>" + SICPass + "</td><td>" + SHPhone + "</td><td>" +
                    SPhone + "</td><td>" + SNatioanlity + "</td><td>" + SEmail + "</td><td>" + SCourse + "</td><td>" + SQualify + "</td><td><a href =" + Attachment + " > View </ a ></td><td><button><a href=ReplyEmail.aspx?id=" + SEmail + ">Email</a></button></td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}