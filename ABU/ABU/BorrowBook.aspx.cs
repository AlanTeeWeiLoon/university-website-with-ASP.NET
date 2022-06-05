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
    public partial class BorrowBook : System.Web.UI.Page
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
                    SqlDataAdapter da = new SqlDataAdapter("select * from Student where Stud_ID = '" + id + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtID.Text = dt.Rows[0][0].ToString();
                    txtName.Text = dt.Rows[0][1].ToString();
                }

                else if (cat == "Lecturer")
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from Lecturer where Lec_Id = '" + id + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtID.Text = dt.Rows[0][0].ToString();
                    txtName.Text = dt.Rows[0][1].ToString();
                }
            }

            txtBrwDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            txtExpDate.Text = DateTime.Now.AddDays(7).ToString("yyyy-MM-dd");

        }


        protected void btnBorrow_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Select TOP 1 BorrowID FROM Borrow ORDER BY convert(int,right(BorrowID, charindex('w', reverse(BorrowID)) -1 )) DESC", con);

                string LastCode = (string)cmd.ExecuteScalar();
                string getID = LastCode.Split('w')[1];
                int getIntID = Convert.ToInt32(getID);


                string borrowid = "Brw" + (getIntID + 1).ToString();

                //upload the content to table Borrow
                string query1 = " insert into Borrow (BorrowID, BorrowerID, BookID, BorrowDate, ExpireDate) values (@brwid, @brwerid, @bookid, @brwdate, @expdate) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@brwid", borrowid);
                cmd1.Parameters.AddWithValue("@brwerid", txtID.Text);
                cmd1.Parameters.AddWithValue("@bookid", txtBookID.Text);
                cmd1.Parameters.AddWithValue("@brwdate", txtBrwDate.Text);
                cmd1.Parameters.AddWithValue("@expdate", txtExpDate.Text);
                cmd1.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Book Borrowed Successfully";

                string query2 = "update Book set Status ='Unavailable' where BookId = '" + txtBookID.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtBookID.Text = string.Empty;
        }
    }
}