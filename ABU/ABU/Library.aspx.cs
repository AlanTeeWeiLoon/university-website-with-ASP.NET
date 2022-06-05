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
    public partial class Library : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;


        }

        public string fetchBook()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Book where BookName Like'%" + txtBookName.Text + "%'";
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

                htmlStr += "<tr><td>" + BookID + "</td><td>" + BookName + "</td><td>" + Author + "</td><td>" + Category + "</td><td>" + RakNo + "</td><td><a href =" + BookImage + " > View Image </ a ></td><td>" + Status + "</td></tr>";

            }
            con.Close();
            return htmlStr;

        }
    }
}