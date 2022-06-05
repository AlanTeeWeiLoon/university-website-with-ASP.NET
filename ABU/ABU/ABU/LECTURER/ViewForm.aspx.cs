using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU.LECTURER
{
    public partial class ViewForm : System.Web.UI.Page
    {
        string lecID = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApplyLeave.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("EditLeave.aspx");
        }
    }
}