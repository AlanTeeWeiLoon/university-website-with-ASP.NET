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
    public partial class SFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        protected void btnLecturer_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
        }

        protected void btnUniversity_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            txtUniversity.Text = "All Best University";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "insert into SFeedback (name, comment, rate) values (@name, @comment, @rate)";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.Parameters.AddWithValue("@name", txtLecName.Text);
            cmd1.Parameters.AddWithValue("@comment", txtComments.Text);
            cmd1.Parameters.AddWithValue("@rate", rdbRate.SelectedItem.ToString());
            cmd1.ExecuteNonQuery();
            Response.Write("<script type=\"text/javascript\">alert('Feedback Submitted.');</script>");
            con.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtLecName.Text = string.Empty;
            txtComments.Text = string.Empty;
            rdbRate.SelectedIndex = 0;
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "insert into SFeedback (name, comment, rate) values (@name, @comment, @rate)";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.Parameters.AddWithValue("@name", txtUniversity.Text);
            cmd1.Parameters.AddWithValue("@comment", txtComments1.Text);
            cmd1.Parameters.AddWithValue("@rate", rdbrate1.SelectedItem.ToString());
            cmd1.ExecuteNonQuery();
            Response.Write("<script type=\"text/javascript\">alert('Feedback Submitted.');</script>");
            con.Close();
        }

        protected void btnReset1_Click(object sender, EventArgs e)
        {
            txtComments1.Text = string.Empty;
            rdbrate1.SelectedIndex = 0;
        }
    }
}