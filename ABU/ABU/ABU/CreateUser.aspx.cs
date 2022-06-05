using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABU
{
    
    public partial class CreateUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string StudentID = "ST00";
        string LecturerID ="LEC00";

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null || !Session["ID"].Equals("admin"))
                Response.Redirect("Login.aspx");
            if (!IsPostBack)
            {
                Panel3.Visible = false;
                UserID.Visible = false;
                btnRegisterLecturer.Visible = false;
                btnRegisterStudent.Visible = false;
            }

        }

        protected void Student_Click(object sender, EventArgs e)
        {
            string S = (sender as Button).Text;
            Panel3.Visible = true;
            UserID.Visible = true;
            btnRegisterStudent.Visible = true;
            btnRegisterLecturer.Visible = false;
            con.Open();

            SqlCommand cmd = new SqlCommand("Select TOP 1 Stud_ID FROM Student ORDER BY convert(int,right(Stud_ID, charindex('T', reverse(Stud_ID)) -1 )) DESC", con);

            string LastCode = (string)cmd.ExecuteScalar();
            string getID = LastCode.Split('T')[1];
            int getIntID = Convert.ToInt32(getID);


            UserID.Text = StudentID + (getIntID + 1).ToString();

        }

        protected void Lecturer_Click(object sender, EventArgs e)
        {
            string L = (sender as Button).Text;
            Panel3.Visible = false;
            UserID.Visible = true;
            btnRegisterLecturer.Visible = true;
            btnRegisterStudent.Visible = false;
            con.Open();

            SqlCommand cmd = new SqlCommand("Select TOP 1 Lec_Id FROM Lecturer ORDER BY convert(int,right(Lec_Id, charindex('C', reverse(Lec_ID)) -1 )) DESC", con);

            string LastCode = (string)cmd.ExecuteScalar();
            string getID = LastCode.Split('C')[1];
            int getIntID = Convert.ToInt32(getID);


            UserID.Text = LecturerID + (getIntID + 1).ToString();
        }



        protected void btnRegisterLecturer_Click(object sender, EventArgs e)
        {
            
            try
            {
                con.Open();
                string filename = fuImage.PostedFile.FileName;
                fuImage.SaveAs(Server.MapPath("applicant/" + filename));
                string query = "Select count(*) from Lecturer where Lec_Email = '" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    //check cannot have double same email(Response -> pop down a word)
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");
                }
                else
                {
                    //Instantiate a new command with a query and connection
                    string query1 = "insert into Lecturer (Lec_ID, Lec_Name,Lec_Phone,Lec_Email,Lec_Password,Lec_Course,Lec_Image) values (@id,@name,@phone,@email,@password,@course,@image)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@id", UserID.Text);
                    cmd1.Parameters.AddWithValue("@name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd1.Parameters.AddWithValue("@course", ddlCourse.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@image", "img1/" + filename);


                    //insert data into a database
                    cmd1.ExecuteNonQuery();


                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
                    con.Close();
                    UserID.Text = string.Empty;
                    txtName.Text = string.Empty;
                    txtPhone.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    txtRetype.Text = string.Empty;
                    ddlCourse.SelectedIndex = 0;
                    ddlLvl.SelectedIndex = 0;
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void btnRegisterStudent_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string filename = fuImage.PostedFile.FileName;
                string query = "Select count(*) from Student where Stud_Email = '" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    //check cannot have double same email(Response -> pop down a word)
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");
                }
                else
                {
                    //Instantiate a new command with a query and connection
                    string query1 = "insert into Student (Stud_ID, Stud_Name,Stud_Phone,Stud_Email,Stud_Password,Stud_Course,Stud_Lvl,Stud_Image) values (@id,@name,@phone,@email,@password,@course,@level,@image)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@id", UserID.Text);
                    cmd1.Parameters.AddWithValue("@name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd1.Parameters.AddWithValue("@course", ddlCourse.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@level", ddlLvl.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@image", "img1/" + filename);

                    //insert data into a database
                    cmd1.ExecuteNonQuery();

                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful');</script>");
                    con.Close();
                    UserID.Text = string.Empty;
                    txtName.Text=string.Empty;
                    txtPhone.Text=string.Empty;
                    txtEmail.Text=string.Empty;
                    txtPassword.Text=string.Empty;
                    txtRetype.Text = string.Empty;
                    ddlCourse.SelectedIndex = 0;
                    ddlLvl.SelectedIndex = 0;

                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }


    }


    }
