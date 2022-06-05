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
    public partial class ContactUs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                //Instantiate a new command with a query and connection
                string query1 = "insert into Feedback (FB_Name,FB_Email,FB_Purpose,FB_AddOn) values (@name,@email,@purpose,@add)";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                cmd1.Parameters.AddWithValue("@name", txtName.Text);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("@purpose", txtPurpose.Text);
                cmd1.Parameters.AddWithValue("@add", txtAddOn.Text);




                //insert data into a database
                cmd1.ExecuteNonQuery();


                Response.Write("<script type=\"text/javascript\">alert('Feedback Successful,if any need we will reply you soon through email');</script>");
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}