using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class StudentHome : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnProfile_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("SProfile.aspx?id=" + id);
        }



        protected void btnView_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("ViewAssignment.aspx?id=" + id);
        }

        protected void btnAnswer_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("UploadAnswer.aspx?id=" + id);
        }

        protected void btnAF_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("AF.aspx?id=" + id);
        }

        protected void btnBM_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("BM.aspx?id=" + id);
        }

        protected void btnIT_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("IT.aspx?id=" + id);
        }

        protected void btnDA_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("DA.aspx?id=" + id);
        }
    }
}