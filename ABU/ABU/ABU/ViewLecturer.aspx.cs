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
    public partial class ViewLecturer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            Panel1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtLecID.Text = string.Empty;
        }

        public string fetchLecturer()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select Lecturer.Lec_ID, Lecturer.Lec_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Lecturer on Borrow.BorrowerID = Lecturer.Lec_ID inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID Like'%" + txtLecID.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string LecID = reader.GetString(0);
                string LecName = reader.GetString(1);
                string BookID = reader.GetString(2);
                string BookName = reader.GetString(3);
                string BrwDate = reader.GetDateTime(4).ToString("yyyy-MM-dd");
                string ExpDate = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                string LeftDate = reader.GetDateTime(5).Subtract(DateTime.Now).ToString("dd");

                htmlStr += "<tr><td>" + LecID + "</td><td>" + LecName + "</td><td>" + BookID + "</td><td>" + BookName + "</td><td>" + BrwDate + "</td><td>" + ExpDate + "</td><td>" + LeftDate + "</td></tr>";


            }
            con.Close();
            return htmlStr;
        }
    }
}