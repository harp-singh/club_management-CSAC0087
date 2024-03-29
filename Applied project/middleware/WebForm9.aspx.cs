﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Applied_project
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                //do nothing
            }
            else
            {
                //This is an invalid user send the user to the login page

                Response.Redirect("WebForm1.aspx", false);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string eml = TextBox1.Text;

                string qry = "select * from registration where email='" + eml + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    TextBox2.Text = (sdr["password"].ToString());
                    TextBox3.Text = (sdr["first"].ToString());
                    TextBox4.Text = (sdr["last"].ToString());
                    TextBox5.Text = (sdr["birth"].ToString());
                    DropDownList1.SelectedValue = (sdr["access"].ToString());
                    TextBox6.Text = (sdr["number"].ToString());
                    DropDownList2.SelectedValue = (sdr["department"].ToString());
                    TextBox7.Text = (sdr["address"].ToString());
                    TextBox8.Text = (sdr["address2"].ToString());
                    sdr.Close();

                    string qery = "select * from accessuser where Request_id='" + eml + "'";
                    SqlCommand cmed = new SqlCommand(qery, conn);
                    SqlDataReader sedr = cmed.ExecuteReader();
                    if (sedr.Read())
                    {
                        if(sedr["Request_status"].ToString() == "Active")
                        {
                            Label1.Text = "Pending Approval";
                        }
                        else
                        {
                            Label1.Text = sedr["Request_status"].ToString();
                        }                        
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Check your data');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email does not exist');window.location.href='WebForm9.aspx';", true);
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