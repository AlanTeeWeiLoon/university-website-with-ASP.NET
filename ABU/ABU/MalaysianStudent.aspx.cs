using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class MalaysianStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MalaysianScholarship_Click(object sender, EventArgs e)
        {
            Response.Redirect("MalaysianScholarship.aspx");
        }
    }
}