using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ABU.LECTURER
{
    public partial class ResultManagement : System.Web.UI.Page
    {
        
        public static int Year = 0;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               

                    GridView1.Visible = false;
                
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string myQuery = "Select * from Assessment where Year  Like '%" + ddlYear.SelectedValue + "%'";
            SqlDataSource1.SelectCommand = myQuery;

            GridView1.DataBind();
            GridView1.Visible = true;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow selectedRow = GridView1.Rows[GridView1.SelectedIndex];
            string assName = (selectedRow.Cells[2].Text);
            Response.Write(Year);
            string target = String.Format("DisplayStudentAss.aspx?AssessmentName={0}", assName);
            Response.Redirect(target);
        }
    }
}