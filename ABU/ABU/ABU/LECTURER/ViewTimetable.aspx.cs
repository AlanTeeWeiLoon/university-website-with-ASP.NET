using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ABU.LECTURER
{
    public partial class ViewTimetable : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GridView1.Visible = false;
           
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string myQuery = "select * from TimeTable where TT_Course= '" + ddlCourse.SelectedItem.ToString() + "' and  TT_Lvl ='" + ddlLvl.SelectedItem.ToString() + "' and  TT_Day ='" + ddlDay.SelectedItem.ToString() + "' Order  By TT_Time";
            SqlDataSource1.SelectCommand = myQuery;

            GridView1.DataBind();
            GridView1.Visible = true;
        }
    }
}