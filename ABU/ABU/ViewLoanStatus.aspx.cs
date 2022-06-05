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
    public partial class ViewLoanStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
        }

        public string fetchLoan()
        {
            string htmlStr = "";
            int fine;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select Student.Stud_ID, Student.Stud_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Student on Borrow.BorrowerID = Student.Stud_ID inner join Book on  Borrow.BookID = Book.BookID";
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

                if (LeftDate < 0)
                {
                    fine = Math.Abs(LeftDate) * 5;
                    htmlStr += "<tr><td>" + StudID + "</td><td>" + StudName + "</td><td>" + BookID + "</td><td>" + BookName + "</td><td>" + BrwDate + "</td><td>" + ExpDate + "</td><td>" + LeftDate + "</td><td>" + "RM" + fine + "</td><td><a href=ManageFine.aspx?id=" + StudID + ">Manage</a></td></tr>";
                }
            }
            con.Close();
            return htmlStr;
        }
    }
}