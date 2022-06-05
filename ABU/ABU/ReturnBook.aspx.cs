using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string id = "";
        public static string cat = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            id = Convert.ToString(Request.QueryString["id"]);
            cat = Convert.ToString(Request.QueryString["cat"]);

            txtCategory.Text = cat;
            if (!IsPostBack)
            {
                if (cat == "Student")
                {
                    SqlDataAdapter da = new SqlDataAdapter("select Borrow.BorrowerID, Student.Stud_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow inner join Student on Borrow.BorrowerID = Student.Stud_ID inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID = '" + id + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtID.Text = dt.Rows[0][0].ToString();
                    txtName.Text = dt.Rows[0][1].ToString();

                }
                else if (cat == "Lecturer")
                {
                    SqlDataAdapter da = new SqlDataAdapter("select Borrow.BorrowerID, Lecturer.Lec_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow inner join Lecturer on Borrow.BorrowerID = Lecturer.Lec_Id inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID = '" + id + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtID.Text = dt.Rows[0][0].ToString();
                    txtName.Text = dt.Rows[0][1].ToString();

                }

            }

        }
        protected void btnReturn_Click(object sender, EventArgs e)
        {


            con.Open();
            string query = "delete from Borrow where BorrowerID ='" + id + "' and BookID = '" + txtBookID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Book Returned Successfully";


            string query1 = "update Book set Status ='Available' where BookId = '" + txtBookID.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
        }

        public string fetchReturn()
        {
            string htmlStr = "";

            con.Open();
            if (txtCategory.Text == "Student")
            {
                string query2 = "select Student.Stud_ID, Student.Stud_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Student on Borrow.BorrowerID = Student.Stud_ID inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID = '" + txtID.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlDataReader reader2 = cmd2.ExecuteReader();

                while (reader2.Read())
                {
                    string StudID = reader2.GetString(0);
                    string StudName = reader2.GetString(1);
                    string BookID = reader2.GetString(2);
                    string BookName = reader2.GetString(3);
                    string BrwDate = reader2.GetDateTime(4).ToString("yyyy-MM-dd");
                    string ExpDate = reader2.GetDateTime(5).ToString("yyyy-MM-dd");
                    int LeftDate = reader2.GetDateTime(5).Subtract(DateTime.Now).Days;

                    htmlStr += "<tr><td>" + StudID + "</td><td>" + StudName + "</td><td>" + BookID + "</td><td>" + BookName + "</td><td>" + BrwDate + "</td><td>" + ExpDate + "</td><td>" + LeftDate + "</td></tr>";
                }
            }

            else if (txtCategory.Text == "Lecturer")
            {
                string query3 = "select Lecturer.Lec_ID, Lecturer.Lec_Name, Borrow.Book_ID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Lecturer on Borrow.BorrowerID = Lecturer.Lec_ID inner join Book on  Borrow.BookID = Book.BookID where Borrow.BorrowerID = '" + txtID.Text + "' ";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                SqlDataReader reader3 = cmd3.ExecuteReader();

                while (reader3.Read())
                {
                    string LecID = reader3.GetString(0);
                    string LecName = reader3.GetString(1);
                    string BookID = reader3.GetString(2);
                    string BookName = reader3.GetString(3);
                    string BrwDate = reader3.GetDateTime(4).ToString("yyyy-MM-dd");
                    string ExpDate = reader3.GetDateTime(5).ToString("yyyy-MM-dd");
                    string LeftDate = reader3.GetDateTime(5).Subtract(DateTime.Now).ToString("dd");

                    htmlStr += "<tr><td>" + LecID + "</td><td>" + LecName + "</td><td>" + BookID + "</td><td>" + BookName + "</td><td>" + BrwDate + "</td><td>" + ExpDate + "</td><td>" + LeftDate + "</td></tr>";


                }
            }
            con.Close();
            return htmlStr;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtBookID.Text = string.Empty;
        }
    }
}