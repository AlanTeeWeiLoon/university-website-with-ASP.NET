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
    public partial class LecturerLeave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
        }
        public string fetchManageLeave()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Leave";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int SNo = reader.GetInt32(0);
                string Name = reader.GetString(1);
                string Reason = reader.GetString(2);
                string Start = reader.GetDateTime(3).ToString("yyyy-MM-dd");
                string End = reader.GetDateTime(4).ToString("yyyy-MM-dd");
                string Upload = reader.GetDateTime(6).ToString("yyyy-MM-dd");
                string Note = reader.GetString(5);
                string Status = reader.GetString(7);

                htmlStr += "<tr><td>" + SNo + "</td><td>" + Upload + "</td><td>" + Name + "</td><td>" + Reason + "</td><td>" + Start + "</td><td>" + End + "</td>><td>" + Note + "</td>><td>" + Status + "</td><td><button><a href=LeaveApprove.aspx?id=" + SNo + ">Edit</a></button></td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}