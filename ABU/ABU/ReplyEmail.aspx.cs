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
    public partial class ReplyEmail : System.Web.UI.Page
    {
        string email = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            email = Request.QueryString["id"];
            lblEmail.Text = email;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            email = Request.QueryString["id"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            if (!string.IsNullOrEmpty(email))
            {
                MailMessage msg = new MailMessage();
                //Gets or sets the from address for this email message.
                msg.From = new MailAddress("sathiapriya.apu2021@gmail.com"); //dummy mail add
                //send to multiple email
                msg.To.Add(lblEmail.Text);
                //Gets or sets the subject line for this email message.
                msg.Subject = "Reply Message From ABU";
                //Gets or sets the message body.
                msg.Body = (txtMessage.Text);
                msg.IsBodyHtml = true;

                //Allows applications to send email by using the Simple Mail Transfer Protocol (SMTP)
                SmtpClient smt = new SmtpClient();
                //Gets or sets the name or IP address of the host used for SMTP transactions.
                smt.Host = "smtp.gmail.com";

                System.Net.NetworkCredential ntwd = new NetworkCredential();
                //Gets or sets the user name associated with the credentials
                ntwd.UserName = "sathiapriya.apu2021@gmail.com"; //dummy email add
                //Gets or sets the password for the user name associated with the credentials.
                ntwd.Password = "pass2021";

                //yes-> if requested by the server, authenticate using the default credentials of the currently logged on user
                smt.UseDefaultCredentials = true;
                //Gets or sets the credentials used to authenticate the sender.
                smt.Credentials = ntwd;
                //端口587在发送邮件之前将需要SMTP身份验证,端口25则不需要
                smt.Port = 587;
                //Specify whether the SmtpClient uses Secure Sockets Layer (SSL) to encrypt the connection.
                smt.EnableSsl = true;
                smt.Send(msg);

                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Email send successfully";
            }
        }
    }
}