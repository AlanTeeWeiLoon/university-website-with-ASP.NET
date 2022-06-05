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
    public partial class ShowTimetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            Panel1.Visible = false;
            Panel2.Visible = false;
        }


        public string fetchTimetable()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from TimeTable where TT_Course= '" + ddlCourse.SelectedItem.ToString() + "' and  TT_Lvl ='" + ddlLvl.SelectedItem.ToString() + "' and  TT_Day ='" + ddlDay.SelectedItem.ToString() + "' Order By TT_Time";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int TT_Id = reader.GetInt32(0);
                string TT_Time = reader.GetString(4);
                string TT_Module = reader.GetString(5);
                string TT_Room = reader.GetString(6);
                string TT_Lecturer = reader.GetString(7);
                htmlStr += "<tr><td>" + TT_Id + "</td><td>" + TT_Time + "</td><td>" + TT_Module + "</td><td>" + TT_Room + "</td><td>" + TT_Lecturer + " </td><td><a href=EditTimetable.aspx?id=" + TT_Id + ">Edit</a></td></tr> ";
            }
            con.Close();
            return htmlStr;
        }


        protected void btnShow_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void btnShow2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        public string fetchLecTimetable()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from TimeTable where TT_Lecturer= '" + ddlLecturer.SelectedItem.ToString() + "' and  TT_Day ='" + ddlDay0.SelectedItem.ToString() + "'Order By TT_Time ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int TT_Id = reader.GetInt32(0);
                string TT_Time = reader.GetString(4);
                string TT_Course = reader.GetString(1);
                string TT_Lvl = reader.GetString(2);
                string TT_Module = reader.GetString(5);
                string TT_Room = reader.GetString(6);
                
                htmlStr += "<tr><td>" + TT_Id + "</td><td>" + TT_Time + "</td><td>" + TT_Course + "</td><td>" + TT_Lvl + "</td><td>" + TT_Module + "</td><td>" + TT_Room + " </td><td><button><a href=EditTimetable.aspx?id=" + TT_Id + ">Edit</a></button></td></tr> ";
            }
            con.Close();
            return htmlStr;
        }

    }
}