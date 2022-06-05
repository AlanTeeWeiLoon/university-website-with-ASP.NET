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
    public partial class createTimetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from TimeTable where TT_Course = '" + ddlCourse.SelectedItem.ToString() + "' and  TT_Time ='" + ddltfrom.SelectedItem.ToString() + " to " + ddltto.SelectedItem.ToString() + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                //Retrieve a single value from the database
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    //check cannot have double same email(Response -> pop down a word)
                    Response.Write("<script type=\"text/javascript\">alert('This period already has other class.');</script>");
                }
                else
                {
                    string query1 = "insert into TimeTable (TT_Course, TT_Lvl, TT_Day, TT_Time, TT_Module, TT_Room, TT_Lecturer) values (@course,@lvl,@day,@time,@module,@room,@lec)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@course", ddlCourse.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@lvl", ddlLvl.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@day", ddlDay.Text);
                    cmd1.Parameters.AddWithValue("@time", ddltfrom.SelectedItem.ToString() + " to " + ddltto.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@module", txtModule.Text);
                    cmd1.Parameters.AddWithValue("@room", ddlBlock.SelectedItem.ToString() + " , " + ddlRoom.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@lec", ddlLecturer.SelectedItem.ToString());
                    //insert data into a database
                    cmd1.ExecuteNonQuery();


                    Response.Write("<script type=\"text/javascript\">alert('Create Timetable succesful');</script>");
                    con.Close();

                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }

        
}
