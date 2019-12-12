using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Applied_project
{
    public partial class WebForm4 : System.Web.UI.Page
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
    }
}