using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Applied_project
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                //do nothing
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(conn);
                SqlDataAdapter adapt = new SqlDataAdapter("select * from auser order by First_Name", con);
                con.Open();
                adapt.Fill(dt);
                con.Close();
                GridView1.DataSourceID = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                //This is an invalid user send the user to the login page

                Response.Redirect("WebForm1.aspx", false);
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //data soure control that works with sql database
            SqlDataSource sds = new SqlDataSource();
            //get connection string from application's web.config file
            sds.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            //create parameters with specified name and values
            sds.SelectParameters.Add("Name", TypeCode.String, this.TextBox1.Text);
            //set the sql string to retrive data from the database
            sds.SelectCommand = "select * from auser where User_Id = @Name or First_Name = @Name or Last_Name=@Name";
            //retrive data
            DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
            if (TextBox1.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter something for search');window.location.href='WebForm11.aspx';", true);
            }
            else if (dv.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No record found!');window.location.href='WebForm10.aspx';", true);
            }
            else
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = sds;
                GridView1.DataBind();
            }
        }
    }
}