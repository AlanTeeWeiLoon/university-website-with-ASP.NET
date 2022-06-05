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
    public partial class EditLecturer : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("select * from Lecturer where Lec_Id = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                UserID.Text = dt.Rows[0][0].ToString();
                txtName.Text = dt.Rows[0][1].ToString();
                txtPhone.Text = dt.Rows[0][3].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                Image1.ImageUrl = dt.Rows[0][5].ToString();
                ddlCourse.Text = dt.Rows[0][8].ToString();


            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            string filename = fuImage.PostedFile.FileName;
            fuImage.SaveAs(Server.MapPath("applicant/" + filename));
            string query = "update Lecturer set Lec_ID ='" + UserID.Text + "',Lec_Name = '" + txtName.Text + "',Lec_Phone='" + txtPhone.Text +
                "',Lec_Email ='" + txtEmail.Text + "',Lec_Image ='" + "applicant/" + filename + "',Lec_Course ='" + ddlCourse.SelectedItem + 
                "'where Lec_ID = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SearchUser.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Lecturer where Lec_ID='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SearchUser.aspx");
        }
    }
}