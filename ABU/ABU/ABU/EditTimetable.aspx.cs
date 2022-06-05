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
    public partial class EditTimetable : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("select * from TimeTable where TT_Id = '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlCourse.Text = dt.Rows[0][1].ToString();
                ddlLvl.Text = dt.Rows[0][2].ToString();
                ddlDay.Text = dt.Rows[0][3].ToString();
                txtModule.Text = dt.Rows[0][5].ToString();
                ddlLecturer.Text = dt.Rows[0][7].ToString();

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            
            string query = "update Timetable set TT_Course = '" + ddlCourse.Text + "',TT_Lvl='" + ddlLvl.Text +
                "',TT_Day ='" + ddlDay.Text + "',TT_Module ='" + txtModule.Text + "',TT_Lecturer ='" + ddlLecturer.SelectedItem +
                "'where TT_ID = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ShowTimetable.aspx");
        }
    }
}