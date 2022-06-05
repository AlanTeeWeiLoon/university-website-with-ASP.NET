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
    public partial class HomeLibrarian : System.Web.UI.Page
    {
        public static string Category = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            Panel2.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        public string fetchBorrow()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (ddlCategory.SelectedItem.ToString() == "Student")
            {
                Category = ddlCategory.Text;
                string query = "select * from Student where Stud_ID = '" + txtID.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {

                    string StudID = reader.GetString(0);
                    string StudName = reader.GetString(1);
                    htmlStr += "<tr><td>" + StudID + " </td><td>" + StudName + "</td><td><a href=BorrowBook.aspx?id=" + StudID + "&cat=" + Category + ">Borrow</a></td><td><a href=ReturnBook.aspx?id=" + StudID + "&cat=" + Category + ">Return</a></td></tr>";

                }

            }
            else if (ddlCategory.SelectedItem.ToString() == "Lecturer")
            {
                Category = ddlCategory.Text;
                string query = "select * from Lecturer where Lec_Id ='" + txtID.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string LecID = reader.GetString(0);
                    string LecName = reader.GetString(1);
                    htmlStr += "<tr><td>" + LecID + "</td><td>" + LecName + "</td><td><a href=BorrowBook.aspx?id=" + LecID + "&cat=" + Category + ">Borrow</a></td><td><a href=ReturnBook.aspx?id=" + LecID + "&cat=" + Category + ">Return</a></td></tr>";

                }

            }
            con.Close();
            return htmlStr;

        }
    }
}