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
    public partial class ViewBookStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
        }

        public string fetchBook()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Book";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string BookID = reader.GetString(0);
                string BookName = reader.GetString(1);
                string Author = reader.GetString(2);
                string Category = reader.GetString(3);
                int RakNo = reader.GetInt32(4);
                string BookImage = reader.GetString(5);
                string Status = reader.GetString(6);
                string Recommend = reader.GetString(7);
                htmlStr += "<tr><td>" + BookID + "</td><td>" + BookName + "</td><td>" + Author + "</td><td>" + Category + "</td><td>" + RakNo + "</td><td><a href =" + BookImage + " > View Image </ a ></td><td>" + Status + "</td><td>" + Recommend + "</td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}