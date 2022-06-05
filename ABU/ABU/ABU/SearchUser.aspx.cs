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
    public partial class SearchUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        public string fetchSData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Student";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                string id = reader.GetString(0);
                string name = reader.GetString(1);
                int phone = reader.GetInt32(3);
                string email = reader.GetString(4);
                string image = reader.GetString(5);
                string course = reader.GetString(6);
                string level = reader.GetString(7);

                //a table
                htmlStr += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + phone + "</td><td>" + email 
                    + "</td><td><img src=" + image + " style=\"width:50px; height:50px\" /></td><td>" 
                    + course + "</td><td>" + level + "</td><td><button><a href=EditStudent.aspx?id=" + id + ">Edit</a></button></td></tr>";
                //append into table
            }
            con.Close();
            return htmlStr;
        }

        public string fetchLData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Lecturer";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                string id = reader.GetString(0);
                string name = reader.GetString(1);
                int phone = reader.GetInt32(3);
                string email = reader.GetString(4);
                string image = reader.GetString(5);
                string course = reader.GetString(8);

                //a table
                htmlStr += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + phone + "</td><td>" + email
                    + "</td><td><img src=" + image + " style=\"width:50px; height:50px\" /></td><td>"
                    + course + "</td><td><button><a href=EditLecturer.aspx?id=" + id + ">Edit</a></button></td></tr>";
                //append into table
            }
            con.Close();
            return htmlStr;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
}