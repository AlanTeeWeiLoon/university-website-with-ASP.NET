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
    public partial class EditStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Student where Stud_Id = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                UserID.Text = dt.Rows[0][0].ToString();
                txtName.Text = dt.Rows[0][1].ToString();
                txtPhone.Text = dt.Rows[0][3].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                Image1.ImageUrl = dt.Rows[0][5].ToString();
                ddlCourse.Text = dt.Rows[0][6].ToString();
                ddlLvl.Text= dt.Rows[0][7].ToString();


            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            string filename = fuImage.PostedFile.FileName;
            fuImage.SaveAs(Server.MapPath("applicant/" + filename));
            string query = "update Student set Stud_ID ='" + UserID.Text + "',Stud_Name = '" + txtName.Text + "',Stud_Phone='" + txtPhone.Text +
                "',Stud_Email ='" + txtEmail.Text + "',Stud_Image ='" + "applicant/" + filename + "',Stud_Course ='" + ddlCourse.SelectedItem + "',Stud_Lvl ='" + ddlLvl.SelectedItem +
                "'where Stud_ID = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SearchUser.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Student where Stud_ID='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SearchUser.aspx");
        }
    }
}