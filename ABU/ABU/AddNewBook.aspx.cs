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
    public partial class AddNewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("librarian"))
                Response.Redirect("Login.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select TOP 1 BookId FROM Book ORDER  BY convert(int,right(BookID, charindex('k', reverse(BookID)) -1 )) DESC", con);

                string LastCode = (string)cmd.ExecuteScalar();
                string getID = LastCode.Split('k')[1];
                int getIntID = Convert.ToInt32(getID);


                string bookid = "Book" + (getIntID + 1).ToString();


                string fileName = fuBookImg.PostedFile.FileName; //get file name
                fuBookImg.SaveAs(Server.MapPath("Img4/" + fileName)); //upload to folder Images

                //upload the content to table Library
                string query1 = " insert into Book (BookId, BookName, Author, Category, RakNo, BookImage) values (@bookid, @bookName, @author, @category, @rakNo, @pImage) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@bookid", bookid);
                cmd1.Parameters.AddWithValue("@bookName", txtBookName.Text);
                cmd1.Parameters.AddWithValue("@author", txtAuthor.Text);
                cmd1.Parameters.AddWithValue("@category", ddlCategory.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@rakNo", ddlRakNo.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@pImage", "Img4/" + fileName);
                cmd1.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Book Added Successfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtBookName.Text = string.Empty;
            txtAuthor.Text = string.Empty;
            ddlCategory.SelectedIndex = 0;
            ddlRakNo.SelectedIndex = 0;
        }
    }
}