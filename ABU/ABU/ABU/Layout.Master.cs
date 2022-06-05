using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("StudentHome.aspx?id=" + id);
        }

        protected void Timetable_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("ViewTimetable.aspx?id=" + id);
        }
        protected void Result_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("ViewResult.aspx?id=" + id);
        }
        protected void Feedback_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("SFeedback.aspx?id=" + id);
        }



        protected void Library_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("StudentLibrary.aspx?id=" + id);
        }
    }
}