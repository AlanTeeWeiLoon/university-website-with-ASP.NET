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
    public partial class ManageFine : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
            id = Convert.ToString(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select Student.Stud_ID, Student.Stud_Name, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Student on Borrow.BorrowerID = Student.Stud_ID where Borrow.BorrowerID = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtStudId.Text = id.ToString();
                txtStudName.Text = dt.Rows[0][1].ToString();
            }

            con.Open();
            string query = "select Student.Stud_ID, Student.Stud_Name, Borrow.BookID, Book.BookName, Borrow.BorrowDate, Borrow.ExpireDate from Borrow INNER join Student on Borrow.BorrowerID = Student.Stud_ID inner join Book on  Borrow.BookID = Book.BookID where Student.Stud_ID = '" + txtStudId.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();


            while (reader.Read())
            {
                int LeftDate = reader.GetDateTime(5).Subtract(DateTime.Now).Days;
                int fine = Math.Abs(LeftDate) * 5;
                txtArrear.Text = "RM" + fine.ToString();
            }
            con.Close();
        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Fine Settled Successfully";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtAmount.Text = string.Empty;
        }
    }
}