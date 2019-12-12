using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Applied_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isHuman = captchaBox.Validate(TextBox7.Text);
            TextBox7.Text = null;
            if (!isHuman)
            {
                //The Captcha entered by user is Invalid.
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid captcha!');", true);
            }
            else
            {
                //The Captcha entered by user is Valid.
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    string uid = TextBox1.Text;
                    conn.Open();
                    string qry = "select * from registration where email='" + uid + "'";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email already exist!');window.location.href='WebForm2.aspx';", true);
                    }
                    else
                    {
                        SqlConnection conec = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        conec.Open();
                        string abc = "Member";
                        string insertQuery = "insert into registration (email, password, first, last, birth, access)values (@email, @password, @first, @last, @birth, @access)";
                        SqlCommand cm = new SqlCommand(insertQuery, conec);
                        cm.Parameters.AddWithValue("@email", TextBox1.Text);
                        cm.Parameters.AddWithValue("@password", TextBox2.Text);
                        cm.Parameters.AddWithValue("@first", TextBox4.Text);
                        cm.Parameters.AddWithValue("@last", TextBox5.Text);
                        cm.Parameters.AddWithValue("@birth", TextBox6.Text);
                        cm.Parameters.AddWithValue("@access", abc);
                        cm.ExecuteNonQuery();
                        
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration has been done successfully');window.location.href='WebForm1.aspx';", true);

                        conec.Close();
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
        }
    }    
}