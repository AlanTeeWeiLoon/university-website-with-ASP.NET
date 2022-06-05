using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userid = "";
            string password = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Lecturer where Lec_Email = @email", con);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (count > 0)
            {
                SqlCommand cmd1 = new SqlCommand("select Lec_Id,Lec_Password from Lecturer where Lec_Email=@email", con);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                using (SqlDataReader sdr = cmd1.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        userid = sdr["Lec_Id"].ToString();
                        password = sdr["Lec_Password"].ToString();
                    }
                }
                con.Close();
            }
            else {
                SqlCommand cmd1 = new SqlCommand("select Stud_Id,Stud_Password from Student where Stud_Email=@email", con);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);

                using (SqlDataReader sdr = cmd1.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        userid = sdr["Stud_ID"].ToString();
                        password = sdr["Stud_Password"].ToString();
                    }
                }
            }
                

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();

                msg.From = new MailAddress("sathiapriya.apu2021@gmail.com"); 

                msg.To.Add(txtEmail.Text);

                msg.Subject = "Recover your Password";

                msg.Body = ("Your username:" + userid + "<br/><br/>" + "Your password:" + password);
                msg.IsBodyHtml = true;


                SmtpClient smt = new SmtpClient();

                smt.Host = "smtp.gmail.com";

                System.Net.NetworkCredential ntwd = new NetworkCredential();

                ntwd.UserName = "sathiapriya.apu2021@gmail.com"; 

                ntwd.Password = "pass2021";

                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);

                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Username and Password Sent Successfully";
            }
        }
    }
}