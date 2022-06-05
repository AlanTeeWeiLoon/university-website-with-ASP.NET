using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ABU
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetImage();
            }
        }

       public void GetImage()
        {
            using SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select Title,Image,Link,Category from Template where Category = 'Slide'", con);
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Open();

            da.Fill(dt);
            if (dt.Rows.Count <= 0 || dt.Rows[0][0] == string.Empty)
            {
                rpt.DataSource = null;
                rpt.DataBind();
            }
            else
            {
                rpt.DataSource = dt;
                rpt.DataBind();
            }

        }

  
    }
}