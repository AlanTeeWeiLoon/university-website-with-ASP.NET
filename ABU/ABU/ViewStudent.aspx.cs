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
    public partial class ViewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            Panel1.Visible = false;
        }

        public string fetchStudent()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select Student.Stud_ID, Student.Stud_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Student on Borrow.BorrowerID = Student.Stud_ID inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID Like'%" + txtStudID.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string StudID = reader.GetString(0);
                string StudName = reader.GetString(1);
                string BookID = reader.GetString(2);
                string BookName = reader.GetString(3);
                string BrwDate = reader.GetDateTime(4).ToString("yyyy-MM-dd");
                string ExpDate = reader.GetDateTime(5).ToString("yyyy-MM-dd");
                int LeftDate = reader.GetDateTime(5).Subtract(DateTime.Now).Days;


                htmlStr += "<tr><td>" + StudID + "</td><td>" + StudName + "</td><td>" + BookID + "</td><td>" + BookName + "</td><td>" + BrwDate + "</td><td>" + ExpDate + "</td><td>" + LeftDate + "</td></tr>";


            }
            con.Close();
            return htmlStr;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtStudID.Text = string.Empty;
        }
    }
}